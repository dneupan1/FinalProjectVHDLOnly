--
--
--
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.NUMERIC_STD.ALL;


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
	type pixel_array_type is array (0 to 3, 0 to 3) of std_logic_vector(11 downto 0);
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
	
	-- some sample data to display static images on the lcd
	SIGNAL color_counter: INTEGER := 0;  -- Counter to cycle colors
	SIGNAL color_period: INTEGER := 50000000; -- Number of clock ticks for one second at 50 MHz

	-- Define colors
	TYPE color_t IS (RED_d, GREEN_d, BLUE_d);
	SIGNAL current_color: color_t := RED_d;
	
BEGIN
   
	PROCESS (clock_50)
	
	-- we need a 25 Mhz clock
	BEGIN
        IF rising_edge(clock_50) THEN
            IF divider THEN
                clock_25MHz <= NOT clock_25MHz;  -- Toggle the 25MHz clock
            END IF;
            divider <= NOT divider;  -- Toggle the divider every clock cycle
				
				-- Cycle colors every second
            IF color_counter >= color_period THEN
                color_counter <= 0;
                -- Cycle through colors
                CASE current_color IS
                    WHEN RED_d =>
                        current_color <= GREEN_d;
                    WHEN GREEN_d =>
                        current_color <= BLUE_d;
                    WHEN BLUE_d =>
                        current_color <= RED_d;
                    WHEN OTHERS =>
                        current_color <= RED_d;
                END CASE;
            ELSE
                color_counter <= color_counter + 1;
            END IF;
        END IF;
    END PROCESS;
	 
	PROCESS (clock_25MHz)
	BEGIN
	   -- put any kind of 25Mhz clock logic in here
		
	END PROCESS;
	
	
	cmos_xclkin <= clock_25MHz;
	display_clock <= clock_25MHz;
	
	process(cmos_pixclk)
		 variable temp_red, temp_green, temp_blue: integer;
		 variable num_green, num_blue, num_red: integer;
	begin
		 if rising_edge(cmos_pixclk) then
			  -- Load pixel data into the buffer
			  if cmos_fval = '1' and cmos_lval = '1' then
					if pixel_x < 4 and pixel_y < 4 then
						 pixel_buffer(pixel_x, pixel_y) <= CMOS_IN;
						 LEDR(0) <= '1'; -- LED test: Light up LED 0 when loading data
					end if;

					-- Increment pixel position
					pixel_x <= pixel_x + 1;
					if pixel_x = 4 then
						 pixel_x <= 0;
						 pixel_y <= pixel_y + 1;

						 if pixel_y = 4 then
							  pixel_y <= 0;
							  LEDR(0) <= '0'; -- Reset LED 0 after loading one frame

							  -- Simple bilinear interpolation demosaicing
							  for i in 0 to 3 loop
									for j in 0 to 3 loop
										 -- Initialize variables for each pixel
										 temp_red := 0; temp_green := 0; temp_blue := 0;
										 num_green := 0; num_red := 0; num_blue := 0;

										 -- Apply demosaicing based on pixel position
										 if ((i mod 2 = 0) and (j mod 2 = 0)) or ((i mod 2 = 1) and (j mod 2 = 1)) then
											  -- Red Pixel or Blue Pixel
											  temp_red := to_integer(unsigned(pixel_buffer(i, j)));
											  temp_blue := to_integer(unsigned(pixel_buffer(i, j)));
											  -- Accumulate green values and count
											  if (j > 0) then
													temp_green := temp_green + to_integer(unsigned(pixel_buffer(i, j-1)));
													num_green := num_green + 1;
											  end if;
											  if (j < 3) then
													temp_green := temp_green + to_integer(unsigned(pixel_buffer(i, j+1)));
													num_green := num_green + 1;
											  end if;
											  if (i > 0) then
													temp_green := temp_green + to_integer(unsigned(pixel_buffer(i-1, j)));
													num_green := num_green + 1;
											  end if;
											  if (i < 3) then
													temp_green := temp_green + to_integer(unsigned(pixel_buffer(i+1, j)));
													num_green := num_green + 1;
											  end if;
											  if (num_green > 0) then
													temp_green := temp_green / num_green;
											  end if;
										 elsif ((i mod 2 = 0) and (j mod 2 = 1)) or ((i mod 2 = 1) and (j mod 2 = 0)) then
											  -- Green Pixel
											  temp_green := to_integer(unsigned(pixel_buffer(i, j)));
											  -- Accumulate red and blue values with boundary checks
											  if ((i mod 2 = 0) and (j mod 2 = 1)) then
													-- Green Pixel on Red Row
													if (j > 0) then
														 temp_red := temp_red + to_integer(unsigned(pixel_buffer(i, j-1)));
														 num_red := num_red + 1;
													end if;
													if (j < 3) then
														 temp_red := temp_red + to_integer(unsigned(pixel_buffer(i, j+1)));
														 num_red := num_red + 1;
													end if;
													if (num_red > 0) then
														 temp_red := temp_red / num_red;
													end if;
											  end if;
											  if ((i mod 2 = 1) and (j mod 2 = 0)) then
													-- Green Pixel on Blue Row
													if (i > 0) then
														 temp_blue := temp_blue + to_integer(unsigned(pixel_buffer(i-1, j)));
														 num_blue := num_blue + 1;
													end if;
													if (i < 3) then
														 temp_blue := temp_blue + to_integer(unsigned(pixel_buffer(i+1, j)));
														 num_blue := num_blue + 1;
													end if;
													if (num_blue > 0) then
														 temp_blue := temp_blue / num_blue;
													end if;
											  end if;
										 end if;
										 
										red <= std_logic_vector(to_unsigned(temp_red, 12));
										green <= std_logic_vector(to_unsigned(temp_green, 12));
										blue <= std_logic_vector(to_unsigned(temp_blue, 12));

										 -- LED test: Monitor temp_red, temp_green, temp_blue values
										 LEDR(9 downto 7) <= std_logic_vector(to_unsigned(temp_red, 3)(2 downto 0));   -- Most significant 3 bits of red
										 LEDR(6 downto 4) <= std_logic_vector(to_unsigned(temp_green, 3)(2 downto 0)); -- Most significant 3 bits of green
										 LEDR(3 downto 1) <= std_logic_vector(to_unsigned(temp_blue, 3)(2 downto 0));  -- Most significant 3 bits of blue
									end loop;
							  end loop;
							  -- Reset LEDs after processing
							  --LEDR(9 downto 1) <= (others => '0');
						 end if;
					end if;
			  end if;
			
		 end if;
	end process;

	 
	 
	 -- LCD Display Process
    process (clock_25MHz)
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
			 end if;
			 vsync_counter <= vsync_counter + 1;
			 if vsync_counter = VSYNC_TOTAL then
				vsync_counter <= 0;

			 end if;
		end if;
    end process;
	 
END Behavioral;



