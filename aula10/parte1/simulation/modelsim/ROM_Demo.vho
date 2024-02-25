-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/18/2023 14:58:04"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ROM_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END ROM_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|pulseOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|s_divCounter[0]~23_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[5]~34\ : std_logic;
SIGNAL \inst2|s_divCounter[6]~35_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[6]~36\ : std_logic;
SIGNAL \inst2|s_divCounter[7]~37_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[7]~38\ : std_logic;
SIGNAL \inst2|s_divCounter[8]~39_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[8]~40\ : std_logic;
SIGNAL \inst2|s_divCounter[9]~41_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[9]~42\ : std_logic;
SIGNAL \inst2|s_divCounter[10]~43_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[10]~44\ : std_logic;
SIGNAL \inst2|s_divCounter[11]~45_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[11]~46\ : std_logic;
SIGNAL \inst2|s_divCounter[12]~47_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[12]~48\ : std_logic;
SIGNAL \inst2|s_divCounter[13]~49_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[13]~50\ : std_logic;
SIGNAL \inst2|s_divCounter[14]~51_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[14]~52\ : std_logic;
SIGNAL \inst2|s_divCounter[15]~53_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[15]~54\ : std_logic;
SIGNAL \inst2|s_divCounter[16]~55_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[16]~56\ : std_logic;
SIGNAL \inst2|s_divCounter[17]~57_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[17]~58\ : std_logic;
SIGNAL \inst2|s_divCounter[18]~59_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[18]~60\ : std_logic;
SIGNAL \inst2|s_divCounter[19]~61_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[19]~62\ : std_logic;
SIGNAL \inst2|s_divCounter[20]~63_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[20]~64\ : std_logic;
SIGNAL \inst2|s_divCounter[21]~65_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[21]~66\ : std_logic;
SIGNAL \inst2|s_divCounter[22]~67_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~7_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[0]~24\ : std_logic;
SIGNAL \inst2|s_divCounter[1]~25_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[1]~26\ : std_logic;
SIGNAL \inst2|s_divCounter[2]~27_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[2]~28\ : std_logic;
SIGNAL \inst2|s_divCounter[3]~29_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[3]~30\ : std_logic;
SIGNAL \inst2|s_divCounter[4]~31_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[4]~32\ : std_logic;
SIGNAL \inst2|s_divCounter[5]~33_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|pulseOut~q\ : std_logic;
SIGNAL \inst2|pulseOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|s_count[0]~0_combout\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|Add0~1_combout\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst4|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|s_divCounter\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst2|pulseOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|pulseOut~q\);
\inst|ALT_INV_Mux6~0_combout\ <= NOT \inst|Mux6~0_combout\;
\inst|ALT_INV_Mux4~0_combout\ <= NOT \inst|Mux4~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y72_N10
\inst2|s_divCounter[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[0]~23_combout\ = \inst2|s_divCounter\(0) $ (VCC)
-- \inst2|s_divCounter[0]~24\ = CARRY(\inst2|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(0),
	datad => VCC,
	combout => \inst2|s_divCounter[0]~23_combout\,
	cout => \inst2|s_divCounter[0]~24\);

-- Location: LCCOMB_X55_Y72_N20
\inst2|s_divCounter[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[5]~33_combout\ = (\inst2|s_divCounter\(5) & (!\inst2|s_divCounter[4]~32\)) # (!\inst2|s_divCounter\(5) & ((\inst2|s_divCounter[4]~32\) # (GND)))
-- \inst2|s_divCounter[5]~34\ = CARRY((!\inst2|s_divCounter[4]~32\) # (!\inst2|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(5),
	datad => VCC,
	cin => \inst2|s_divCounter[4]~32\,
	combout => \inst2|s_divCounter[5]~33_combout\,
	cout => \inst2|s_divCounter[5]~34\);

-- Location: LCCOMB_X55_Y72_N22
\inst2|s_divCounter[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[6]~35_combout\ = (\inst2|s_divCounter\(6) & (\inst2|s_divCounter[5]~34\ $ (GND))) # (!\inst2|s_divCounter\(6) & (!\inst2|s_divCounter[5]~34\ & VCC))
-- \inst2|s_divCounter[6]~36\ = CARRY((\inst2|s_divCounter\(6) & !\inst2|s_divCounter[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(6),
	datad => VCC,
	cin => \inst2|s_divCounter[5]~34\,
	combout => \inst2|s_divCounter[6]~35_combout\,
	cout => \inst2|s_divCounter[6]~36\);

-- Location: FF_X55_Y72_N23
\inst2|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[6]~35_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(6));

-- Location: LCCOMB_X55_Y72_N24
\inst2|s_divCounter[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[7]~37_combout\ = (\inst2|s_divCounter\(7) & (!\inst2|s_divCounter[6]~36\)) # (!\inst2|s_divCounter\(7) & ((\inst2|s_divCounter[6]~36\) # (GND)))
-- \inst2|s_divCounter[7]~38\ = CARRY((!\inst2|s_divCounter[6]~36\) # (!\inst2|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(7),
	datad => VCC,
	cin => \inst2|s_divCounter[6]~36\,
	combout => \inst2|s_divCounter[7]~37_combout\,
	cout => \inst2|s_divCounter[7]~38\);

-- Location: FF_X55_Y72_N25
\inst2|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[7]~37_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(7));

-- Location: LCCOMB_X55_Y72_N26
\inst2|s_divCounter[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[8]~39_combout\ = (\inst2|s_divCounter\(8) & (\inst2|s_divCounter[7]~38\ $ (GND))) # (!\inst2|s_divCounter\(8) & (!\inst2|s_divCounter[7]~38\ & VCC))
-- \inst2|s_divCounter[8]~40\ = CARRY((\inst2|s_divCounter\(8) & !\inst2|s_divCounter[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(8),
	datad => VCC,
	cin => \inst2|s_divCounter[7]~38\,
	combout => \inst2|s_divCounter[8]~39_combout\,
	cout => \inst2|s_divCounter[8]~40\);

-- Location: FF_X55_Y72_N27
\inst2|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[8]~39_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(8));

-- Location: LCCOMB_X55_Y72_N28
\inst2|s_divCounter[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[9]~41_combout\ = (\inst2|s_divCounter\(9) & (!\inst2|s_divCounter[8]~40\)) # (!\inst2|s_divCounter\(9) & ((\inst2|s_divCounter[8]~40\) # (GND)))
-- \inst2|s_divCounter[9]~42\ = CARRY((!\inst2|s_divCounter[8]~40\) # (!\inst2|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(9),
	datad => VCC,
	cin => \inst2|s_divCounter[8]~40\,
	combout => \inst2|s_divCounter[9]~41_combout\,
	cout => \inst2|s_divCounter[9]~42\);

-- Location: FF_X55_Y72_N29
\inst2|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[9]~41_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(9));

-- Location: LCCOMB_X55_Y72_N30
\inst2|s_divCounter[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[10]~43_combout\ = (\inst2|s_divCounter\(10) & (\inst2|s_divCounter[9]~42\ $ (GND))) # (!\inst2|s_divCounter\(10) & (!\inst2|s_divCounter[9]~42\ & VCC))
-- \inst2|s_divCounter[10]~44\ = CARRY((\inst2|s_divCounter\(10) & !\inst2|s_divCounter[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(10),
	datad => VCC,
	cin => \inst2|s_divCounter[9]~42\,
	combout => \inst2|s_divCounter[10]~43_combout\,
	cout => \inst2|s_divCounter[10]~44\);

-- Location: FF_X55_Y72_N31
\inst2|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[10]~43_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(10));

-- Location: LCCOMB_X55_Y71_N0
\inst2|s_divCounter[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[11]~45_combout\ = (\inst2|s_divCounter\(11) & (!\inst2|s_divCounter[10]~44\)) # (!\inst2|s_divCounter\(11) & ((\inst2|s_divCounter[10]~44\) # (GND)))
-- \inst2|s_divCounter[11]~46\ = CARRY((!\inst2|s_divCounter[10]~44\) # (!\inst2|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(11),
	datad => VCC,
	cin => \inst2|s_divCounter[10]~44\,
	combout => \inst2|s_divCounter[11]~45_combout\,
	cout => \inst2|s_divCounter[11]~46\);

-- Location: FF_X55_Y71_N1
\inst2|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[11]~45_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(11));

-- Location: LCCOMB_X55_Y71_N2
\inst2|s_divCounter[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[12]~47_combout\ = (\inst2|s_divCounter\(12) & (\inst2|s_divCounter[11]~46\ $ (GND))) # (!\inst2|s_divCounter\(12) & (!\inst2|s_divCounter[11]~46\ & VCC))
-- \inst2|s_divCounter[12]~48\ = CARRY((\inst2|s_divCounter\(12) & !\inst2|s_divCounter[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(12),
	datad => VCC,
	cin => \inst2|s_divCounter[11]~46\,
	combout => \inst2|s_divCounter[12]~47_combout\,
	cout => \inst2|s_divCounter[12]~48\);

-- Location: FF_X55_Y71_N3
\inst2|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[12]~47_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(12));

-- Location: LCCOMB_X55_Y71_N4
\inst2|s_divCounter[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[13]~49_combout\ = (\inst2|s_divCounter\(13) & (!\inst2|s_divCounter[12]~48\)) # (!\inst2|s_divCounter\(13) & ((\inst2|s_divCounter[12]~48\) # (GND)))
-- \inst2|s_divCounter[13]~50\ = CARRY((!\inst2|s_divCounter[12]~48\) # (!\inst2|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(13),
	datad => VCC,
	cin => \inst2|s_divCounter[12]~48\,
	combout => \inst2|s_divCounter[13]~49_combout\,
	cout => \inst2|s_divCounter[13]~50\);

-- Location: FF_X55_Y71_N5
\inst2|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[13]~49_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(13));

-- Location: LCCOMB_X55_Y71_N6
\inst2|s_divCounter[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[14]~51_combout\ = (\inst2|s_divCounter\(14) & (\inst2|s_divCounter[13]~50\ $ (GND))) # (!\inst2|s_divCounter\(14) & (!\inst2|s_divCounter[13]~50\ & VCC))
-- \inst2|s_divCounter[14]~52\ = CARRY((\inst2|s_divCounter\(14) & !\inst2|s_divCounter[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(14),
	datad => VCC,
	cin => \inst2|s_divCounter[13]~50\,
	combout => \inst2|s_divCounter[14]~51_combout\,
	cout => \inst2|s_divCounter[14]~52\);

-- Location: FF_X55_Y71_N7
\inst2|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[14]~51_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(14));

-- Location: LCCOMB_X55_Y71_N8
\inst2|s_divCounter[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[15]~53_combout\ = (\inst2|s_divCounter\(15) & (!\inst2|s_divCounter[14]~52\)) # (!\inst2|s_divCounter\(15) & ((\inst2|s_divCounter[14]~52\) # (GND)))
-- \inst2|s_divCounter[15]~54\ = CARRY((!\inst2|s_divCounter[14]~52\) # (!\inst2|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(15),
	datad => VCC,
	cin => \inst2|s_divCounter[14]~52\,
	combout => \inst2|s_divCounter[15]~53_combout\,
	cout => \inst2|s_divCounter[15]~54\);

-- Location: FF_X55_Y71_N9
\inst2|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[15]~53_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(15));

-- Location: LCCOMB_X55_Y71_N10
\inst2|s_divCounter[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[16]~55_combout\ = (\inst2|s_divCounter\(16) & (\inst2|s_divCounter[15]~54\ $ (GND))) # (!\inst2|s_divCounter\(16) & (!\inst2|s_divCounter[15]~54\ & VCC))
-- \inst2|s_divCounter[16]~56\ = CARRY((\inst2|s_divCounter\(16) & !\inst2|s_divCounter[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(16),
	datad => VCC,
	cin => \inst2|s_divCounter[15]~54\,
	combout => \inst2|s_divCounter[16]~55_combout\,
	cout => \inst2|s_divCounter[16]~56\);

-- Location: FF_X55_Y71_N11
\inst2|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[16]~55_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(16));

-- Location: LCCOMB_X55_Y71_N12
\inst2|s_divCounter[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[17]~57_combout\ = (\inst2|s_divCounter\(17) & (!\inst2|s_divCounter[16]~56\)) # (!\inst2|s_divCounter\(17) & ((\inst2|s_divCounter[16]~56\) # (GND)))
-- \inst2|s_divCounter[17]~58\ = CARRY((!\inst2|s_divCounter[16]~56\) # (!\inst2|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(17),
	datad => VCC,
	cin => \inst2|s_divCounter[16]~56\,
	combout => \inst2|s_divCounter[17]~57_combout\,
	cout => \inst2|s_divCounter[17]~58\);

-- Location: FF_X55_Y71_N13
\inst2|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[17]~57_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(17));

-- Location: LCCOMB_X55_Y71_N14
\inst2|s_divCounter[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[18]~59_combout\ = (\inst2|s_divCounter\(18) & (\inst2|s_divCounter[17]~58\ $ (GND))) # (!\inst2|s_divCounter\(18) & (!\inst2|s_divCounter[17]~58\ & VCC))
-- \inst2|s_divCounter[18]~60\ = CARRY((\inst2|s_divCounter\(18) & !\inst2|s_divCounter[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(18),
	datad => VCC,
	cin => \inst2|s_divCounter[17]~58\,
	combout => \inst2|s_divCounter[18]~59_combout\,
	cout => \inst2|s_divCounter[18]~60\);

-- Location: FF_X55_Y71_N15
\inst2|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[18]~59_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(18));

-- Location: LCCOMB_X55_Y71_N16
\inst2|s_divCounter[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[19]~61_combout\ = (\inst2|s_divCounter\(19) & (!\inst2|s_divCounter[18]~60\)) # (!\inst2|s_divCounter\(19) & ((\inst2|s_divCounter[18]~60\) # (GND)))
-- \inst2|s_divCounter[19]~62\ = CARRY((!\inst2|s_divCounter[18]~60\) # (!\inst2|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(19),
	datad => VCC,
	cin => \inst2|s_divCounter[18]~60\,
	combout => \inst2|s_divCounter[19]~61_combout\,
	cout => \inst2|s_divCounter[19]~62\);

-- Location: FF_X55_Y71_N17
\inst2|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[19]~61_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(19));

-- Location: LCCOMB_X55_Y71_N18
\inst2|s_divCounter[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[20]~63_combout\ = (\inst2|s_divCounter\(20) & (\inst2|s_divCounter[19]~62\ $ (GND))) # (!\inst2|s_divCounter\(20) & (!\inst2|s_divCounter[19]~62\ & VCC))
-- \inst2|s_divCounter[20]~64\ = CARRY((\inst2|s_divCounter\(20) & !\inst2|s_divCounter[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(20),
	datad => VCC,
	cin => \inst2|s_divCounter[19]~62\,
	combout => \inst2|s_divCounter[20]~63_combout\,
	cout => \inst2|s_divCounter[20]~64\);

-- Location: FF_X55_Y71_N19
\inst2|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[20]~63_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(20));

-- Location: LCCOMB_X55_Y71_N20
\inst2|s_divCounter[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[21]~65_combout\ = (\inst2|s_divCounter\(21) & (!\inst2|s_divCounter[20]~64\)) # (!\inst2|s_divCounter\(21) & ((\inst2|s_divCounter[20]~64\) # (GND)))
-- \inst2|s_divCounter[21]~66\ = CARRY((!\inst2|s_divCounter[20]~64\) # (!\inst2|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(21),
	datad => VCC,
	cin => \inst2|s_divCounter[20]~64\,
	combout => \inst2|s_divCounter[21]~65_combout\,
	cout => \inst2|s_divCounter[21]~66\);

-- Location: FF_X55_Y71_N21
\inst2|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[21]~65_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(21));

-- Location: LCCOMB_X55_Y71_N22
\inst2|s_divCounter[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[22]~67_combout\ = \inst2|s_divCounter\(22) $ (!\inst2|s_divCounter[21]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(22),
	cin => \inst2|s_divCounter[21]~66\,
	combout => \inst2|s_divCounter[22]~67_combout\);

-- Location: FF_X55_Y71_N23
\inst2|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[22]~67_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(22));

-- Location: LCCOMB_X55_Y71_N28
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (!\inst2|s_divCounter\(20) & !\inst2|s_divCounter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(20),
	datad => \inst2|s_divCounter\(21),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y71_N24
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = ((\inst2|LessThan0~1_combout\ & ((!\inst2|s_divCounter\(18)) # (!\inst2|s_divCounter\(19))))) # (!\inst2|s_divCounter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(22),
	datab => \inst2|s_divCounter\(19),
	datac => \inst2|s_divCounter\(18),
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X55_Y72_N8
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (!\inst2|s_divCounter\(10) & (!\inst2|s_divCounter\(12) & !\inst2|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(10),
	datac => \inst2|s_divCounter\(12),
	datad => \inst2|s_divCounter\(13),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y71_N26
\inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = ((!\inst2|s_divCounter\(12) & (!\inst2|s_divCounter\(13) & !\inst2|s_divCounter\(11)))) # (!\inst2|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(14),
	datab => \inst2|s_divCounter\(12),
	datac => \inst2|s_divCounter\(13),
	datad => \inst2|s_divCounter\(11),
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X55_Y72_N2
\inst2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = (\inst2|LessThan0~5_combout\) # ((\inst2|LessThan0~0_combout\ & ((!\inst2|s_divCounter\(9)) # (!\inst2|s_divCounter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(8),
	datab => \inst2|s_divCounter\(9),
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|LessThan0~5_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X55_Y71_N30
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|s_divCounter\(17) & (!\inst2|s_divCounter\(15) & (!\inst2|s_divCounter\(16) & \inst2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(17),
	datab => \inst2|s_divCounter\(15),
	datac => \inst2|s_divCounter\(16),
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y72_N30
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (((!\inst2|s_divCounter\(1)) # (!\inst2|s_divCounter\(3))) # (!\inst2|s_divCounter\(0))) # (!\inst2|s_divCounter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(2),
	datab => \inst2|s_divCounter\(0),
	datac => \inst2|s_divCounter\(3),
	datad => \inst2|s_divCounter\(1),
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y72_N6
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|s_divCounter\(6) & (!\inst2|s_divCounter\(7) & \inst2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(6),
	datab => \inst2|s_divCounter\(7),
	datac => \inst2|LessThan0~0_combout\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y72_N0
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (\inst2|Equal0~0_combout\ & (((\inst2|LessThan0~3_combout\) # (!\inst2|s_divCounter\(4))) # (!\inst2|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(5),
	datab => \inst2|s_divCounter\(4),
	datac => \inst2|LessThan0~3_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X55_Y72_N4
\inst2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~7_combout\ = (!\inst2|LessThan0~2_combout\ & (((!\inst2|LessThan0~6_combout\ & !\inst2|LessThan0~4_combout\)) # (!\inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~2_combout\,
	datab => \inst2|LessThan0~6_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|LessThan0~7_combout\);

-- Location: FF_X55_Y72_N11
\inst2|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[0]~23_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(0));

-- Location: LCCOMB_X55_Y72_N12
\inst2|s_divCounter[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[1]~25_combout\ = (\inst2|s_divCounter\(1) & (!\inst2|s_divCounter[0]~24\)) # (!\inst2|s_divCounter\(1) & ((\inst2|s_divCounter[0]~24\) # (GND)))
-- \inst2|s_divCounter[1]~26\ = CARRY((!\inst2|s_divCounter[0]~24\) # (!\inst2|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(1),
	datad => VCC,
	cin => \inst2|s_divCounter[0]~24\,
	combout => \inst2|s_divCounter[1]~25_combout\,
	cout => \inst2|s_divCounter[1]~26\);

-- Location: FF_X55_Y72_N13
\inst2|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[1]~25_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(1));

-- Location: LCCOMB_X55_Y72_N14
\inst2|s_divCounter[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[2]~27_combout\ = (\inst2|s_divCounter\(2) & (\inst2|s_divCounter[1]~26\ $ (GND))) # (!\inst2|s_divCounter\(2) & (!\inst2|s_divCounter[1]~26\ & VCC))
-- \inst2|s_divCounter[2]~28\ = CARRY((\inst2|s_divCounter\(2) & !\inst2|s_divCounter[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(2),
	datad => VCC,
	cin => \inst2|s_divCounter[1]~26\,
	combout => \inst2|s_divCounter[2]~27_combout\,
	cout => \inst2|s_divCounter[2]~28\);

-- Location: FF_X55_Y72_N15
\inst2|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[2]~27_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(2));

-- Location: LCCOMB_X55_Y72_N16
\inst2|s_divCounter[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[3]~29_combout\ = (\inst2|s_divCounter\(3) & (!\inst2|s_divCounter[2]~28\)) # (!\inst2|s_divCounter\(3) & ((\inst2|s_divCounter[2]~28\) # (GND)))
-- \inst2|s_divCounter[3]~30\ = CARRY((!\inst2|s_divCounter[2]~28\) # (!\inst2|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(3),
	datad => VCC,
	cin => \inst2|s_divCounter[2]~28\,
	combout => \inst2|s_divCounter[3]~29_combout\,
	cout => \inst2|s_divCounter[3]~30\);

-- Location: FF_X55_Y72_N17
\inst2|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[3]~29_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(3));

-- Location: LCCOMB_X55_Y72_N18
\inst2|s_divCounter[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[4]~31_combout\ = (\inst2|s_divCounter\(4) & (\inst2|s_divCounter[3]~30\ $ (GND))) # (!\inst2|s_divCounter\(4) & (!\inst2|s_divCounter[3]~30\ & VCC))
-- \inst2|s_divCounter[4]~32\ = CARRY((\inst2|s_divCounter\(4) & !\inst2|s_divCounter[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(4),
	datad => VCC,
	cin => \inst2|s_divCounter[3]~30\,
	combout => \inst2|s_divCounter[4]~31_combout\,
	cout => \inst2|s_divCounter[4]~32\);

-- Location: FF_X55_Y72_N19
\inst2|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[4]~31_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(4));

-- Location: FF_X55_Y72_N21
\inst2|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[5]~33_combout\,
	sclr => \inst2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(5));

-- Location: LCCOMB_X56_Y72_N12
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|s_divCounter\(5) & (!\inst2|s_divCounter\(4) & (!\inst2|s_divCounter\(8) & !\inst2|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(5),
	datab => \inst2|s_divCounter\(4),
	datac => \inst2|s_divCounter\(8),
	datad => \inst2|s_divCounter\(9),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y72_N28
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|s_divCounter\(2) & (!\inst2|s_divCounter\(1) & (!\inst2|s_divCounter\(3) & !\inst2|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(2),
	datab => \inst2|s_divCounter\(1),
	datac => \inst2|s_divCounter\(3),
	datad => \inst2|s_divCounter\(0),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y71_N0
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (!\inst2|s_divCounter\(11) & (!\inst2|s_divCounter\(14) & (!\inst2|s_divCounter\(19) & !\inst2|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(11),
	datab => \inst2|s_divCounter\(14),
	datac => \inst2|s_divCounter\(19),
	datad => \inst2|s_divCounter\(18),
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y72_N10
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (\inst2|Equal0~3_combout\ & (\inst2|Equal0~2_combout\ & (!\inst2|s_divCounter\(22) & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~3_combout\,
	datab => \inst2|Equal0~2_combout\,
	datac => \inst2|s_divCounter\(22),
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y72_N2
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (\inst2|Equal0~5_combout\ & (\inst2|Equal0~0_combout\ & \inst2|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Equal0~6_combout\);

-- Location: FF_X56_Y72_N3
\inst2|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pulseOut~q\);

-- Location: CLKCTRL_G11
\inst2|pulseOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|pulseOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|pulseOut~clkctrl_outclk\);

-- Location: LCCOMB_X88_Y72_N20
\inst4|s_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_count[0]~0_combout\ = !\inst4|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_count\(0),
	combout => \inst4|s_count[0]~0_combout\);

-- Location: FF_X88_Y72_N21
\inst4|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulseOut~clkctrl_outclk\,
	d => \inst4|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_count\(0));

-- Location: LCCOMB_X88_Y72_N6
\inst4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst4|s_count\(1) $ (!\inst4|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_count\(1),
	datad => \inst4|s_count\(0),
	combout => \inst4|Add0~0_combout\);

-- Location: FF_X88_Y72_N7
\inst4|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulseOut~clkctrl_outclk\,
	d => \inst4|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_count\(1));

-- Location: LCCOMB_X88_Y72_N16
\inst4|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_combout\ = \inst4|s_count\(2) $ (((!\inst4|s_count\(0) & !\inst4|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_count\(0),
	datac => \inst4|s_count\(2),
	datad => \inst4|s_count\(1),
	combout => \inst4|Add0~1_combout\);

-- Location: FF_X88_Y72_N17
\inst4|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulseOut~clkctrl_outclk\,
	d => \inst4|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_count\(2));

-- Location: LCCOMB_X88_Y72_N10
\inst4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = \inst4|s_count\(3) $ (((!\inst4|s_count\(1) & (!\inst4|s_count\(0) & !\inst4|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_count\(1),
	datab => \inst4|s_count\(0),
	datac => \inst4|s_count\(3),
	datad => \inst4|s_count\(2),
	combout => \inst4|Add0~2_combout\);

-- Location: FF_X88_Y72_N11
\inst4|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulseOut~clkctrl_outclk\,
	d => \inst4|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_count\(3));

-- Location: LCCOMB_X88_Y72_N28
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst4|s_count\(0) & (\inst4|s_count\(2) & (\inst4|s_count\(3) $ (!\inst4|s_count\(1))))) # (!\inst4|s_count\(0) & (\inst4|s_count\(2) $ (((\inst4|s_count\(3) & !\inst4|s_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_count\(3),
	datab => \inst4|s_count\(1),
	datac => \inst4|s_count\(0),
	datad => \inst4|s_count\(2),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X88_Y72_N22
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst4|s_count\(3) & ((\inst4|s_count\(0) & ((!\inst4|s_count\(2)) # (!\inst4|s_count\(1)))) # (!\inst4|s_count\(0) & ((\inst4|s_count\(2)))))) # (!\inst4|s_count\(3) & ((\inst4|s_count\(2) & ((\inst4|s_count\(0)))) # 
-- (!\inst4|s_count\(2) & (\inst4|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_count\(3),
	datab => \inst4|s_count\(1),
	datac => \inst4|s_count\(0),
	datad => \inst4|s_count\(2),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X88_Y72_N12
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst4|s_count\(0) & (\inst4|s_count\(2) & ((\inst4|s_count\(3)) # (!\inst4|s_count\(1))))) # (!\inst4|s_count\(0) & (!\inst4|s_count\(2) & ((\inst4|s_count\(3)) # (\inst4|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_count\(3),
	datab => \inst4|s_count\(1),
	datac => \inst4|s_count\(0),
	datad => \inst4|s_count\(2),
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y72_N30
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst4|s_count\(0) & (\inst4|s_count\(3) $ (((\inst4|s_count\(1)) # (\inst4|s_count\(2)))))) # (!\inst4|s_count\(0) & (((\inst4|s_count\(1) & \inst4|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_count\(3),
	datab => \inst4|s_count\(1),
	datac => \inst4|s_count\(0),
	datad => \inst4|s_count\(2),
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X88_Y72_N24
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst4|s_count\(3) & (\inst4|s_count\(2) $ (((!\inst4|s_count\(1) & !\inst4|s_count\(0)))))) # (!\inst4|s_count\(3) & (!\inst4|s_count\(1) & (\inst4|s_count\(0) & !\inst4|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_count\(3),
	datab => \inst4|s_count\(1),
	datac => \inst4|s_count\(0),
	datad => \inst4|s_count\(2),
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X88_Y72_N18
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst4|s_count\(3) & ((\inst4|s_count\(0)) # (\inst4|s_count\(1) $ (\inst4|s_count\(2))))) # (!\inst4|s_count\(3) & (!\inst4|s_count\(1) & ((\inst4|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_count\(3),
	datab => \inst4|s_count\(1),
	datac => \inst4|s_count\(0),
	datad => \inst4|s_count\(2),
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X88_Y72_N8
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst4|s_count\(3) & (\inst4|s_count\(1) $ (((\inst4|s_count\(0)) # (\inst4|s_count\(2)))))) # (!\inst4|s_count\(3) & (\inst4|s_count\(0) $ (((!\inst4|s_count\(1) & \inst4|s_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_count\(3),
	datab => \inst4|s_count\(1),
	datac => \inst4|s_count\(0),
	datad => \inst4|s_count\(2),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y72_N26
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst4|s_count\(3) & (((\inst4|s_count\(2))) # (!\inst4|s_count\(1)))) # (!\inst4|s_count\(3) & (((\inst4|s_count\(0) & \inst4|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_count\(3),
	datab => \inst4|s_count\(1),
	datac => \inst4|s_count\(0),
	datad => \inst4|s_count\(2),
	combout => \inst|Mux7~0_combout\);

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


