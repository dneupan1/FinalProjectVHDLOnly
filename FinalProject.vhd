--
--
--
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Four Bit Adder (Top Level Entity) 
ENTITY FinalProject is
    PORT ( 
				-- camera related ports
				clock_50: IN STD_LOGIC;
				clock_27: IN STD_LOGIC;
				CMOS_IN: IN STD_LOGIC_VECTOR(11 downto 0); -- data from the sensor
				cmos_xclkin: out std_logic; -- external clock input to the camera
				cmos_trigger: out std_logic; -- trigger for snapshot mode
				cmos_pixclk : in std_logic; -- pixel clock from the camera
				cmos_fval: in std_logic; -- frame valid signal from the camers
				cmos_lval: in std_logic; -- line valid signal from the camera
				
				-- control and debug logic
			   LEDR : OUT STD_LOGIC_VECTOR(9 downto 0);
				KEY: IN STD_LOGIC_VECTOR(3 downto 0);
				
				-- lcd related stuff
				display_hsd: out std_logic;
				display_vsd: out std_logic;
				display_clock: out std_logic;
				DISPLAY_BLUE: OUT STD_LOGIC_VECTOR(7 downto 0);
				DISPLAY_RED: OUT STD_LOGIC_VECTOR(7 downto 0);
				DISPLAY_GREEN: OUT STD_LOGIC_VECTOR(7 downto 0)
				);
END FinalProject;

ARCHITECTURE Behavioral of FINALPROJECT is
	
	SIGNAL clock_25MHz: STD_LOGIC := '0';  -- 25 MHz clock signal
	SIGNAL divider: BOOLEAN := TRUE;  -- Clock divider toggle
	SIGNAL led_state: STD_LOGIC := '0';  -- Internal LED state
	SIGNAL blink_counter: INTEGER := 0;  -- Counter for blinking
	CONSTANT half_second_count: INTEGER := 12500000; -- Half-second count at 25 MHz
	
	
	--image processing
	type pixel_array_type is array (0 to 1, 0 to 1) of std_logic_vector(11 downto 0);
	signal pixel_buffer: pixel_array_type;

	signal pixel_x, pixel_y: integer := 0;
	signal red, green, blue: std_logic_vector(11 downto 0);
 
	-- Constants for display timing
	constant HSYNC_PULSE_WIDTH : integer := 40; -- Horizontal sync pulse width
	constant HSYNC_BACK_PORCH : integer := 46; -- Horizontal back porch
	constant HSYNC_FRONT_PORCH : integer := 210; -- Horizontal front porch
	constant HSYNC_TOTAL : integer := 1056; -- Total number of columns (including porches and pulse)

	constant VSYNC_PULSE_WIDTH : integer := 20; -- Vertical sync pulse width
	constant VSYNC_BACK_PORCH : integer := 23; -- Vertical back porch
	constant VSYNC_FRONT_PORCH : integer := 23; -- Vertical front porch
	constant VSYNC_TOTAL : integer := 525; -- Total number of rows (including porches and pulse)
	
	-- Signals for display control
	signal hsync_counter : integer := 0;
	signal vsync_counter : integer := 0;
	
BEGIN
   
	PROCESS (clock_50)
	
	-- we need a 25 Mhz clock
	BEGIN
        IF rising_edge(clock_50) THEN
            IF divider THEN
                clock_25MHz <= NOT clock_25MHz;  -- Toggle the 25MHz clock
            END IF;
            divider <= NOT divider;  -- Toggle the divider every clock cycle
        END IF;
    END PROCESS;
	 
	PROCESS (clock_25MHz)
	BEGIN
	   -- put any kind of 25Mhz clock logic in here
		
	END PROCESS;
	
	
	cmos_xclkin <= clock_25MHz;
	display_clock <= clock_25MHz;
	
	PROCESS (cmos_pixclk)
    begin
        if rising_edge(cmos_pixclk) then
            if cmos_fval = '1' and cmos_lval = '1' then
                -- Load pixel data into the buffer
                if pixel_x < 2 and pixel_y < 2 then
                    pixel_buffer(pixel_x, pixel_y) <= CMOS_IN;
                end if;
					
                -- Increment pixel position
                pixel_x <= pixel_x + 1;
                if pixel_x = 2 then
                    pixel_x <= 0;
                    pixel_y <= pixel_y + 1;
						  LEDR(1) <= '1';
                    if pixel_y = 2 then
                        pixel_y <= 0;
								LEDR(2) <= '1';
                        -- Demosaicing Logic for RGB Bayer Pattern
                        if pixel_x = 0 and pixel_y = 0 then
									
                            -- Red Pixel
                            red <= pixel_buffer(0, 0);
                            green <= pixel_buffer(0, 1);
                            blue <= pixel_buffer(1, 1);
                        elsif pixel_x = 1 and pixel_y = 0 then
									
                            -- Green Pixel (Red row)
                            red <= pixel_buffer(0, 0);
                            green <= pixel_buffer(1, 0);
                            blue <= pixel_buffer(1, 1);
                        elsif pixel_x = 0 and pixel_y = 1 then
									1
                            -- Green Pixel (Blue row)
                            red <= pixel_buffer(0, 0);
                            green <= pixel_buffer(0, 1);
                            blue <= pixel_buffer(1, 1);
                        elsif pixel_x = 1 and pixel_y = 1 then
									
                            -- Blue Pixel
                            red <= pixel_buffer(0, 0);
                            green <= pixel_buffer(1, 0);
                            blue <= pixel_buffer(1, 1);
                        end if;
								-- Example of displaying the most significant bits of each color on LEDs
								LEDR(2 downto 0) <= red(11 downto 9);    -- 3 MSBs of red
								LEDR(5 downto 3) <= green(11 downto 9);  -- 3 MSBs of green
								LEDR(8 downto 6) <= blue(11 downto 9);   -- 3 MSBs of blue
                    end if;
                end if;
            end if;
        end if;
    end process;
	 
	 -- LCD Display Process
    PROCESS (clock_25MHz)
    begin
      -- Inside the clocked process
		if rising_edge(clock_25MHz) then
			 -- Generate HSYNC signal
			if hsync_counter < HSYNC_PULSE_WIDTH then
			  display_hsd <= '0'; -- Sync pulse
			else
			  display_hsd <= '1'; -- Rest of the time
			end if;

			-- Generate VSYNC signal
			if vsync_counter < VSYNC_PULSE_WIDTH then
			  display_vsd <= '0'; -- Sync pulse
			else
			  display_vsd <= '1'; -- Rest of the time
			end if;
			 
			 -- Output pixel data or blanking values
			if hsync_counter >= (HSYNC_PULSE_WIDTH + HSYNC_BACK_PORCH) and
				hsync_counter < (HSYNC_TOTAL - HSYNC_FRONT_PORCH) and
				vsync_counter >= (VSYNC_PULSE_WIDTH + VSYNC_BACK_PORCH) and
				vsync_counter < (VSYNC_TOTAL - VSYNC_FRONT_PORCH) then
				-- Within the active video region
				-- Assign pixel data to output signals here
				DISPLAY_RED <= red(11 downto 4);
				DISPLAY_GREEN <= green(11 downto 4);
				DISPLAY_BLUE <= blue(11 downto 4);
			else
				-- Outside the active video region (during porch intervals)
				-- Assign blanking values to output signals here
				DISPLAY_RED <= (others => '0');
				DISPLAY_GREEN <= (others => '0');
				DISPLAY_BLUE <= (others => '0');
			end if;

			 -- Increment counters
			 hsync_counter <= hsync_counter + 1;
			 if hsync_counter = HSYNC_TOTAL then
				  hsync_counter <= 0;
				  vsync_counter <= vsync_counter + 1;
				  if vsync_counter = VSYNC_TOTAL then
						vsync_counter <= 0;
				  end if;
			 end if;
		end if;
    end process;
	 
END Behavioral;



