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

-- DATE "03/30/2023 14:23:03"

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

ENTITY 	ShiftRegister_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(11 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(13 DOWNTO 0)
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(13 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
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
SIGNAL \inst|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|clkOut~0_combout\ : std_logic;
SIGNAL \inst|clkOut~1_combout\ : std_logic;
SIGNAL \inst|clkOut~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|s_divCounter[0]~27\ : std_logic;
SIGNAL \inst|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \inst|s_divCounter[1]~29\ : std_logic;
SIGNAL \inst|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \inst|s_divCounter[2]~31\ : std_logic;
SIGNAL \inst|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \inst|s_divCounter[3]~33\ : std_logic;
SIGNAL \inst|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \inst|s_divCounter[4]~35\ : std_logic;
SIGNAL \inst|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \inst|s_divCounter[5]~37\ : std_logic;
SIGNAL \inst|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \inst|s_divCounter[6]~39\ : std_logic;
SIGNAL \inst|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \inst|s_divCounter[7]~41\ : std_logic;
SIGNAL \inst|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \inst|s_divCounter[8]~43\ : std_logic;
SIGNAL \inst|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \inst|s_divCounter[9]~45\ : std_logic;
SIGNAL \inst|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \inst|s_divCounter[10]~47\ : std_logic;
SIGNAL \inst|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \inst|s_divCounter[11]~49\ : std_logic;
SIGNAL \inst|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \inst|s_divCounter[12]~51\ : std_logic;
SIGNAL \inst|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \inst|s_divCounter[13]~53\ : std_logic;
SIGNAL \inst|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \inst|s_divCounter[14]~55\ : std_logic;
SIGNAL \inst|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \inst|s_divCounter[15]~57\ : std_logic;
SIGNAL \inst|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \inst|s_divCounter[16]~59\ : std_logic;
SIGNAL \inst|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \inst|s_divCounter[17]~61\ : std_logic;
SIGNAL \inst|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \inst|s_divCounter[18]~63\ : std_logic;
SIGNAL \inst|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \inst|s_divCounter[19]~65\ : std_logic;
SIGNAL \inst|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \inst|s_divCounter[20]~67\ : std_logic;
SIGNAL \inst|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \inst|s_divCounter[21]~69\ : std_logic;
SIGNAL \inst|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \inst|s_divCounter[22]~71\ : std_logic;
SIGNAL \inst|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \inst|s_divCounter[23]~73\ : std_logic;
SIGNAL \inst|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \inst|s_divCounter[24]~75\ : std_logic;
SIGNAL \inst|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|clkOut~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|clkOut~4_combout\ : std_logic;
SIGNAL \inst|clkOut~5_combout\ : std_logic;
SIGNAL \inst|clkOut~6_combout\ : std_logic;
SIGNAL \inst|clkOut~7_combout\ : std_logic;
SIGNAL \inst|clkOut~8_combout\ : std_logic;
SIGNAL \inst|clkOut~9_combout\ : std_logic;
SIGNAL \inst|clkOut~q\ : std_logic;
SIGNAL \inst|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|s_shiftReg~11_combout\ : std_logic;
SIGNAL \inst2|s_shiftReg[1]~9_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst2|s_shiftReg[2]~8_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst2|s_shiftReg[3]~7_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst2|s_shiftReg[4]~6_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst2|s_shiftReg[5]~5_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst2|s_shiftReg[6]~4_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst2|s_shiftReg[7]~3_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst2|s_shiftReg[8]~2_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst2|s_shiftReg[9]~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst2|s_shiftReg[10]~0_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \inst2|s_shiftReg~10_combout\ : std_logic;
SIGNAL \inst|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst2|s_shiftReg\ : std_logic_vector(11 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_shiftReg\(11),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_shiftReg\(10),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_shiftReg\(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_shiftReg\(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_shiftReg\(7),
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
	i => \inst2|s_shiftReg\(6),
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
	i => \inst2|s_shiftReg\(5),
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
	i => \inst2|s_shiftReg\(4),
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
	i => \inst2|s_shiftReg\(3),
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
	i => \inst2|s_shiftReg\(2),
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
	i => \inst2|s_shiftReg\(1),
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
	i => \inst2|s_shiftReg\(0),
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

-- Location: LCCOMB_X66_Y16_N6
\inst|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[0]~26_combout\ = \inst|s_divCounter\(0) $ (VCC)
-- \inst|s_divCounter[0]~27\ = CARRY(\inst|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(0),
	datad => VCC,
	combout => \inst|s_divCounter[0]~26_combout\,
	cout => \inst|s_divCounter[0]~27\);

-- Location: LCCOMB_X65_Y16_N18
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (((!\inst|s_divCounter\(14)) # (!\inst|s_divCounter\(12))) # (!\inst|s_divCounter\(13))) # (!\inst|s_divCounter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(15),
	datab => \inst|s_divCounter\(13),
	datac => \inst|s_divCounter\(12),
	datad => \inst|s_divCounter\(14),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X65_Y16_N10
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|s_divCounter\(24) & (\inst|LessThan0~2_combout\ & (!\inst|s_divCounter\(18) & !\inst|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(24),
	datab => \inst|LessThan0~2_combout\,
	datac => \inst|s_divCounter\(18),
	datad => \inst|s_divCounter\(16),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X66_Y16_N4
\inst|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~0_combout\ = (!\inst|s_divCounter\(8) & (!\inst|s_divCounter\(9) & (!\inst|s_divCounter\(10) & !\inst|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(8),
	datab => \inst|s_divCounter\(9),
	datac => \inst|s_divCounter\(10),
	datad => \inst|s_divCounter\(7),
	combout => \inst|clkOut~0_combout\);

-- Location: LCCOMB_X66_Y16_N2
\inst|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~1_combout\ = (\inst|s_divCounter\(2) & (\inst|s_divCounter\(1) & (\inst|s_divCounter\(0) & \inst|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(2),
	datab => \inst|s_divCounter\(1),
	datac => \inst|s_divCounter\(0),
	datad => \inst|s_divCounter\(3),
	combout => \inst|clkOut~1_combout\);

-- Location: LCCOMB_X66_Y16_N0
\inst|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~2_combout\ = (\inst|s_divCounter\(5) & (\inst|s_divCounter\(4) & \inst|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(5),
	datac => \inst|s_divCounter\(4),
	datad => \inst|clkOut~1_combout\,
	combout => \inst|clkOut~2_combout\);

-- Location: LCCOMB_X65_Y16_N24
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|s_divCounter\(11) & (!\inst|s_divCounter\(16) & (!\inst|s_divCounter\(18) & !\inst|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(11),
	datab => \inst|s_divCounter\(16),
	datac => \inst|s_divCounter\(18),
	datad => \inst|s_divCounter\(24),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X65_Y16_N16
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|clkOut~0_combout\ & (\inst|LessThan0~0_combout\ & ((!\inst|clkOut~2_combout\) # (!\inst|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~0_combout\,
	datab => \inst|s_divCounter\(6),
	datac => \inst|clkOut~2_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X65_Y16_N30
\inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (!\inst|LessThan0~3_combout\ & (!\inst|LessThan0~5_combout\ & !\inst|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~3_combout\,
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: FF_X66_Y16_N7
\inst|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[0]~26_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(0));

-- Location: LCCOMB_X66_Y16_N8
\inst|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[1]~28_combout\ = (\inst|s_divCounter\(1) & (!\inst|s_divCounter[0]~27\)) # (!\inst|s_divCounter\(1) & ((\inst|s_divCounter[0]~27\) # (GND)))
-- \inst|s_divCounter[1]~29\ = CARRY((!\inst|s_divCounter[0]~27\) # (!\inst|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(1),
	datad => VCC,
	cin => \inst|s_divCounter[0]~27\,
	combout => \inst|s_divCounter[1]~28_combout\,
	cout => \inst|s_divCounter[1]~29\);

-- Location: FF_X66_Y16_N9
\inst|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[1]~28_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(1));

-- Location: LCCOMB_X66_Y16_N10
\inst|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[2]~30_combout\ = (\inst|s_divCounter\(2) & (\inst|s_divCounter[1]~29\ $ (GND))) # (!\inst|s_divCounter\(2) & (!\inst|s_divCounter[1]~29\ & VCC))
-- \inst|s_divCounter[2]~31\ = CARRY((\inst|s_divCounter\(2) & !\inst|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(2),
	datad => VCC,
	cin => \inst|s_divCounter[1]~29\,
	combout => \inst|s_divCounter[2]~30_combout\,
	cout => \inst|s_divCounter[2]~31\);

-- Location: FF_X66_Y16_N11
\inst|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[2]~30_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(2));

-- Location: LCCOMB_X66_Y16_N12
\inst|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[3]~32_combout\ = (\inst|s_divCounter\(3) & (!\inst|s_divCounter[2]~31\)) # (!\inst|s_divCounter\(3) & ((\inst|s_divCounter[2]~31\) # (GND)))
-- \inst|s_divCounter[3]~33\ = CARRY((!\inst|s_divCounter[2]~31\) # (!\inst|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(3),
	datad => VCC,
	cin => \inst|s_divCounter[2]~31\,
	combout => \inst|s_divCounter[3]~32_combout\,
	cout => \inst|s_divCounter[3]~33\);

-- Location: FF_X66_Y16_N13
\inst|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[3]~32_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(3));

-- Location: LCCOMB_X66_Y16_N14
\inst|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[4]~34_combout\ = (\inst|s_divCounter\(4) & (\inst|s_divCounter[3]~33\ $ (GND))) # (!\inst|s_divCounter\(4) & (!\inst|s_divCounter[3]~33\ & VCC))
-- \inst|s_divCounter[4]~35\ = CARRY((\inst|s_divCounter\(4) & !\inst|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(4),
	datad => VCC,
	cin => \inst|s_divCounter[3]~33\,
	combout => \inst|s_divCounter[4]~34_combout\,
	cout => \inst|s_divCounter[4]~35\);

-- Location: FF_X66_Y16_N15
\inst|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[4]~34_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(4));

-- Location: LCCOMB_X66_Y16_N16
\inst|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[5]~36_combout\ = (\inst|s_divCounter\(5) & (!\inst|s_divCounter[4]~35\)) # (!\inst|s_divCounter\(5) & ((\inst|s_divCounter[4]~35\) # (GND)))
-- \inst|s_divCounter[5]~37\ = CARRY((!\inst|s_divCounter[4]~35\) # (!\inst|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(5),
	datad => VCC,
	cin => \inst|s_divCounter[4]~35\,
	combout => \inst|s_divCounter[5]~36_combout\,
	cout => \inst|s_divCounter[5]~37\);

-- Location: FF_X66_Y16_N17
\inst|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[5]~36_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(5));

-- Location: LCCOMB_X66_Y16_N18
\inst|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[6]~38_combout\ = (\inst|s_divCounter\(6) & (\inst|s_divCounter[5]~37\ $ (GND))) # (!\inst|s_divCounter\(6) & (!\inst|s_divCounter[5]~37\ & VCC))
-- \inst|s_divCounter[6]~39\ = CARRY((\inst|s_divCounter\(6) & !\inst|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(6),
	datad => VCC,
	cin => \inst|s_divCounter[5]~37\,
	combout => \inst|s_divCounter[6]~38_combout\,
	cout => \inst|s_divCounter[6]~39\);

-- Location: FF_X66_Y16_N19
\inst|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[6]~38_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(6));

-- Location: LCCOMB_X66_Y16_N20
\inst|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[7]~40_combout\ = (\inst|s_divCounter\(7) & (!\inst|s_divCounter[6]~39\)) # (!\inst|s_divCounter\(7) & ((\inst|s_divCounter[6]~39\) # (GND)))
-- \inst|s_divCounter[7]~41\ = CARRY((!\inst|s_divCounter[6]~39\) # (!\inst|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(7),
	datad => VCC,
	cin => \inst|s_divCounter[6]~39\,
	combout => \inst|s_divCounter[7]~40_combout\,
	cout => \inst|s_divCounter[7]~41\);

-- Location: FF_X66_Y16_N21
\inst|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[7]~40_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(7));

-- Location: LCCOMB_X66_Y16_N22
\inst|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[8]~42_combout\ = (\inst|s_divCounter\(8) & (\inst|s_divCounter[7]~41\ $ (GND))) # (!\inst|s_divCounter\(8) & (!\inst|s_divCounter[7]~41\ & VCC))
-- \inst|s_divCounter[8]~43\ = CARRY((\inst|s_divCounter\(8) & !\inst|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(8),
	datad => VCC,
	cin => \inst|s_divCounter[7]~41\,
	combout => \inst|s_divCounter[8]~42_combout\,
	cout => \inst|s_divCounter[8]~43\);

-- Location: FF_X66_Y16_N23
\inst|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[8]~42_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(8));

-- Location: LCCOMB_X66_Y16_N24
\inst|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[9]~44_combout\ = (\inst|s_divCounter\(9) & (!\inst|s_divCounter[8]~43\)) # (!\inst|s_divCounter\(9) & ((\inst|s_divCounter[8]~43\) # (GND)))
-- \inst|s_divCounter[9]~45\ = CARRY((!\inst|s_divCounter[8]~43\) # (!\inst|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(9),
	datad => VCC,
	cin => \inst|s_divCounter[8]~43\,
	combout => \inst|s_divCounter[9]~44_combout\,
	cout => \inst|s_divCounter[9]~45\);

-- Location: FF_X66_Y16_N25
\inst|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[9]~44_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(9));

-- Location: LCCOMB_X66_Y16_N26
\inst|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[10]~46_combout\ = (\inst|s_divCounter\(10) & (\inst|s_divCounter[9]~45\ $ (GND))) # (!\inst|s_divCounter\(10) & (!\inst|s_divCounter[9]~45\ & VCC))
-- \inst|s_divCounter[10]~47\ = CARRY((\inst|s_divCounter\(10) & !\inst|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(10),
	datad => VCC,
	cin => \inst|s_divCounter[9]~45\,
	combout => \inst|s_divCounter[10]~46_combout\,
	cout => \inst|s_divCounter[10]~47\);

-- Location: FF_X66_Y16_N27
\inst|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[10]~46_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(10));

-- Location: LCCOMB_X66_Y16_N28
\inst|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[11]~48_combout\ = (\inst|s_divCounter\(11) & (!\inst|s_divCounter[10]~47\)) # (!\inst|s_divCounter\(11) & ((\inst|s_divCounter[10]~47\) # (GND)))
-- \inst|s_divCounter[11]~49\ = CARRY((!\inst|s_divCounter[10]~47\) # (!\inst|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(11),
	datad => VCC,
	cin => \inst|s_divCounter[10]~47\,
	combout => \inst|s_divCounter[11]~48_combout\,
	cout => \inst|s_divCounter[11]~49\);

-- Location: FF_X66_Y16_N29
\inst|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[11]~48_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(11));

-- Location: LCCOMB_X66_Y16_N30
\inst|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[12]~50_combout\ = (\inst|s_divCounter\(12) & (\inst|s_divCounter[11]~49\ $ (GND))) # (!\inst|s_divCounter\(12) & (!\inst|s_divCounter[11]~49\ & VCC))
-- \inst|s_divCounter[12]~51\ = CARRY((\inst|s_divCounter\(12) & !\inst|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(12),
	datad => VCC,
	cin => \inst|s_divCounter[11]~49\,
	combout => \inst|s_divCounter[12]~50_combout\,
	cout => \inst|s_divCounter[12]~51\);

-- Location: FF_X66_Y16_N31
\inst|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[12]~50_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(12));

-- Location: LCCOMB_X66_Y15_N0
\inst|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[13]~52_combout\ = (\inst|s_divCounter\(13) & (!\inst|s_divCounter[12]~51\)) # (!\inst|s_divCounter\(13) & ((\inst|s_divCounter[12]~51\) # (GND)))
-- \inst|s_divCounter[13]~53\ = CARRY((!\inst|s_divCounter[12]~51\) # (!\inst|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(13),
	datad => VCC,
	cin => \inst|s_divCounter[12]~51\,
	combout => \inst|s_divCounter[13]~52_combout\,
	cout => \inst|s_divCounter[13]~53\);

-- Location: FF_X65_Y16_N5
\inst|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_divCounter[13]~52_combout\,
	sclr => \inst|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(13));

-- Location: LCCOMB_X66_Y15_N2
\inst|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[14]~54_combout\ = (\inst|s_divCounter\(14) & (\inst|s_divCounter[13]~53\ $ (GND))) # (!\inst|s_divCounter\(14) & (!\inst|s_divCounter[13]~53\ & VCC))
-- \inst|s_divCounter[14]~55\ = CARRY((\inst|s_divCounter\(14) & !\inst|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(14),
	datad => VCC,
	cin => \inst|s_divCounter[13]~53\,
	combout => \inst|s_divCounter[14]~54_combout\,
	cout => \inst|s_divCounter[14]~55\);

-- Location: FF_X65_Y16_N29
\inst|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_divCounter[14]~54_combout\,
	sclr => \inst|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(14));

-- Location: LCCOMB_X66_Y15_N4
\inst|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[15]~56_combout\ = (\inst|s_divCounter\(15) & (!\inst|s_divCounter[14]~55\)) # (!\inst|s_divCounter\(15) & ((\inst|s_divCounter[14]~55\) # (GND)))
-- \inst|s_divCounter[15]~57\ = CARRY((!\inst|s_divCounter[14]~55\) # (!\inst|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(15),
	datad => VCC,
	cin => \inst|s_divCounter[14]~55\,
	combout => \inst|s_divCounter[15]~56_combout\,
	cout => \inst|s_divCounter[15]~57\);

-- Location: FF_X65_Y16_N27
\inst|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_divCounter[15]~56_combout\,
	sclr => \inst|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(15));

-- Location: LCCOMB_X66_Y15_N6
\inst|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[16]~58_combout\ = (\inst|s_divCounter\(16) & (\inst|s_divCounter[15]~57\ $ (GND))) # (!\inst|s_divCounter\(16) & (!\inst|s_divCounter[15]~57\ & VCC))
-- \inst|s_divCounter[16]~59\ = CARRY((\inst|s_divCounter\(16) & !\inst|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(16),
	datad => VCC,
	cin => \inst|s_divCounter[15]~57\,
	combout => \inst|s_divCounter[16]~58_combout\,
	cout => \inst|s_divCounter[16]~59\);

-- Location: FF_X66_Y15_N7
\inst|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[16]~58_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(16));

-- Location: LCCOMB_X66_Y15_N8
\inst|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[17]~60_combout\ = (\inst|s_divCounter\(17) & (!\inst|s_divCounter[16]~59\)) # (!\inst|s_divCounter\(17) & ((\inst|s_divCounter[16]~59\) # (GND)))
-- \inst|s_divCounter[17]~61\ = CARRY((!\inst|s_divCounter[16]~59\) # (!\inst|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(17),
	datad => VCC,
	cin => \inst|s_divCounter[16]~59\,
	combout => \inst|s_divCounter[17]~60_combout\,
	cout => \inst|s_divCounter[17]~61\);

-- Location: FF_X66_Y15_N9
\inst|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[17]~60_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(17));

-- Location: LCCOMB_X66_Y15_N10
\inst|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[18]~62_combout\ = (\inst|s_divCounter\(18) & (\inst|s_divCounter[17]~61\ $ (GND))) # (!\inst|s_divCounter\(18) & (!\inst|s_divCounter[17]~61\ & VCC))
-- \inst|s_divCounter[18]~63\ = CARRY((\inst|s_divCounter\(18) & !\inst|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(18),
	datad => VCC,
	cin => \inst|s_divCounter[17]~61\,
	combout => \inst|s_divCounter[18]~62_combout\,
	cout => \inst|s_divCounter[18]~63\);

-- Location: FF_X66_Y15_N11
\inst|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[18]~62_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(18));

-- Location: LCCOMB_X66_Y15_N12
\inst|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[19]~64_combout\ = (\inst|s_divCounter\(19) & (!\inst|s_divCounter[18]~63\)) # (!\inst|s_divCounter\(19) & ((\inst|s_divCounter[18]~63\) # (GND)))
-- \inst|s_divCounter[19]~65\ = CARRY((!\inst|s_divCounter[18]~63\) # (!\inst|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(19),
	datad => VCC,
	cin => \inst|s_divCounter[18]~63\,
	combout => \inst|s_divCounter[19]~64_combout\,
	cout => \inst|s_divCounter[19]~65\);

-- Location: FF_X66_Y15_N13
\inst|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[19]~64_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(19));

-- Location: LCCOMB_X66_Y15_N14
\inst|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[20]~66_combout\ = (\inst|s_divCounter\(20) & (\inst|s_divCounter[19]~65\ $ (GND))) # (!\inst|s_divCounter\(20) & (!\inst|s_divCounter[19]~65\ & VCC))
-- \inst|s_divCounter[20]~67\ = CARRY((\inst|s_divCounter\(20) & !\inst|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(20),
	datad => VCC,
	cin => \inst|s_divCounter[19]~65\,
	combout => \inst|s_divCounter[20]~66_combout\,
	cout => \inst|s_divCounter[20]~67\);

-- Location: FF_X66_Y15_N15
\inst|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[20]~66_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(20));

-- Location: LCCOMB_X66_Y15_N16
\inst|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[21]~68_combout\ = (\inst|s_divCounter\(21) & (!\inst|s_divCounter[20]~67\)) # (!\inst|s_divCounter\(21) & ((\inst|s_divCounter[20]~67\) # (GND)))
-- \inst|s_divCounter[21]~69\ = CARRY((!\inst|s_divCounter[20]~67\) # (!\inst|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(21),
	datad => VCC,
	cin => \inst|s_divCounter[20]~67\,
	combout => \inst|s_divCounter[21]~68_combout\,
	cout => \inst|s_divCounter[21]~69\);

-- Location: FF_X66_Y15_N17
\inst|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[21]~68_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(21));

-- Location: LCCOMB_X66_Y15_N18
\inst|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[22]~70_combout\ = (\inst|s_divCounter\(22) & (\inst|s_divCounter[21]~69\ $ (GND))) # (!\inst|s_divCounter\(22) & (!\inst|s_divCounter[21]~69\ & VCC))
-- \inst|s_divCounter[22]~71\ = CARRY((\inst|s_divCounter\(22) & !\inst|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(22),
	datad => VCC,
	cin => \inst|s_divCounter[21]~69\,
	combout => \inst|s_divCounter[22]~70_combout\,
	cout => \inst|s_divCounter[22]~71\);

-- Location: FF_X66_Y15_N19
\inst|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[22]~70_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(22));

-- Location: LCCOMB_X66_Y15_N20
\inst|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[23]~72_combout\ = (\inst|s_divCounter\(23) & (!\inst|s_divCounter[22]~71\)) # (!\inst|s_divCounter\(23) & ((\inst|s_divCounter[22]~71\) # (GND)))
-- \inst|s_divCounter[23]~73\ = CARRY((!\inst|s_divCounter[22]~71\) # (!\inst|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(23),
	datad => VCC,
	cin => \inst|s_divCounter[22]~71\,
	combout => \inst|s_divCounter[23]~72_combout\,
	cout => \inst|s_divCounter[23]~73\);

-- Location: FF_X66_Y15_N21
\inst|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[23]~72_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(23));

-- Location: LCCOMB_X66_Y15_N22
\inst|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[24]~74_combout\ = (\inst|s_divCounter\(24) & (\inst|s_divCounter[23]~73\ $ (GND))) # (!\inst|s_divCounter\(24) & (!\inst|s_divCounter[23]~73\ & VCC))
-- \inst|s_divCounter[24]~75\ = CARRY((\inst|s_divCounter\(24) & !\inst|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(24),
	datad => VCC,
	cin => \inst|s_divCounter[23]~73\,
	combout => \inst|s_divCounter[24]~74_combout\,
	cout => \inst|s_divCounter[24]~75\);

-- Location: FF_X66_Y15_N23
\inst|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[24]~74_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(24));

-- Location: LCCOMB_X66_Y15_N24
\inst|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[25]~76_combout\ = \inst|s_divCounter[24]~75\ $ (\inst|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_divCounter\(25),
	cin => \inst|s_divCounter[24]~75\,
	combout => \inst|s_divCounter[25]~76_combout\);

-- Location: FF_X66_Y15_N25
\inst|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[25]~76_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(25));

-- Location: LCCOMB_X66_Y15_N26
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = ((!\inst|s_divCounter\(18) & !\inst|s_divCounter\(17))) # (!\inst|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(18),
	datac => \inst|s_divCounter\(17),
	datad => \inst|s_divCounter\(23),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X66_Y15_N28
\inst|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~3_combout\ = (\inst|s_divCounter\(19) & (\inst|s_divCounter\(22) & (\inst|s_divCounter\(20) & \inst|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(19),
	datab => \inst|s_divCounter\(22),
	datac => \inst|s_divCounter\(20),
	datad => \inst|s_divCounter\(21),
	combout => \inst|clkOut~3_combout\);

-- Location: LCCOMB_X66_Y15_N30
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = ((!\inst|s_divCounter\(24) & ((\inst|LessThan0~4_combout\) # (!\inst|clkOut~3_combout\)))) # (!\inst|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(24),
	datab => \inst|s_divCounter\(25),
	datac => \inst|LessThan0~4_combout\,
	datad => \inst|clkOut~3_combout\,
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X65_Y16_N12
\inst|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~4_combout\ = (\inst|s_divCounter\(12) & (!\inst|s_divCounter\(6) & (\inst|s_divCounter\(13) & \inst|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(12),
	datab => \inst|s_divCounter\(6),
	datac => \inst|s_divCounter\(13),
	datad => \inst|s_divCounter\(14),
	combout => \inst|clkOut~4_combout\);

-- Location: LCCOMB_X65_Y16_N8
\inst|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~5_combout\ = (!\inst|s_divCounter\(15) & (\inst|s_divCounter\(16) & (!\inst|s_divCounter\(17) & \inst|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(15),
	datab => \inst|s_divCounter\(16),
	datac => \inst|s_divCounter\(17),
	datad => \inst|s_divCounter\(11),
	combout => \inst|clkOut~5_combout\);

-- Location: LCCOMB_X65_Y15_N0
\inst|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~6_combout\ = (!\inst|s_divCounter\(23) & (\inst|s_divCounter\(24) & (\inst|s_divCounter\(18) & !\inst|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(23),
	datab => \inst|s_divCounter\(24),
	datac => \inst|s_divCounter\(18),
	datad => \inst|s_divCounter\(25),
	combout => \inst|clkOut~6_combout\);

-- Location: LCCOMB_X65_Y16_N0
\inst|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~7_combout\ = (\inst|clkOut~0_combout\ & (\inst|clkOut~5_combout\ & (\inst|clkOut~3_combout\ & \inst|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~0_combout\,
	datab => \inst|clkOut~5_combout\,
	datac => \inst|clkOut~3_combout\,
	datad => \inst|clkOut~6_combout\,
	combout => \inst|clkOut~7_combout\);

-- Location: LCCOMB_X65_Y16_N20
\inst|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~8_combout\ = (\inst|clkOut~q\) # ((\inst|clkOut~4_combout\ & (\inst|clkOut~2_combout\ & \inst|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~4_combout\,
	datab => \inst|clkOut~q\,
	datac => \inst|clkOut~2_combout\,
	datad => \inst|clkOut~7_combout\,
	combout => \inst|clkOut~8_combout\);

-- Location: LCCOMB_X65_Y16_N6
\inst|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~9_combout\ = (\inst|clkOut~8_combout\ & ((\inst|LessThan0~5_combout\) # ((\inst|LessThan0~1_combout\) # (\inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~5_combout\,
	datab => \inst|LessThan0~1_combout\,
	datac => \inst|clkOut~8_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|clkOut~9_combout\);

-- Location: FF_X65_Y16_N7
\inst|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkOut~q\);

-- Location: CLKCTRL_G15
\inst|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y18_N22
\inst2|s_shiftReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg~11_combout\ = (\SW[13]~input_o\ & (\SW[0]~input_o\)) # (!\SW[13]~input_o\ & (((!\SW[12]~input_o\ & \inst2|s_shiftReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \inst2|s_shiftReg\(1),
	combout => \inst2|s_shiftReg~11_combout\);

-- Location: FF_X114_Y18_N23
\inst2|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(0));

-- Location: LCCOMB_X114_Y18_N6
\inst2|s_shiftReg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg[1]~9_combout\ = (\SW[12]~input_o\ & (\inst2|s_shiftReg\(0))) # (!\SW[12]~input_o\ & ((\inst2|s_shiftReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_shiftReg\(0),
	datab => \SW[12]~input_o\,
	datad => \inst2|s_shiftReg\(2),
	combout => \inst2|s_shiftReg[1]~9_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X114_Y18_N7
\inst2|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg[1]~9_combout\,
	asdata => \SW[1]~input_o\,
	sload => \SW[13]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(1));

-- Location: LCCOMB_X114_Y18_N8
\inst2|s_shiftReg[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg[2]~8_combout\ = (\SW[12]~input_o\ & (\inst2|s_shiftReg\(1))) # (!\SW[12]~input_o\ & ((\inst2|s_shiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_shiftReg\(1),
	datab => \SW[12]~input_o\,
	datad => \inst2|s_shiftReg\(3),
	combout => \inst2|s_shiftReg[2]~8_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X114_Y18_N9
\inst2|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg[2]~8_combout\,
	asdata => \SW[2]~input_o\,
	sload => \SW[13]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(2));

-- Location: LCCOMB_X114_Y18_N2
\inst2|s_shiftReg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg[3]~7_combout\ = (\SW[12]~input_o\ & (\inst2|s_shiftReg\(2))) # (!\SW[12]~input_o\ & ((\inst2|s_shiftReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst2|s_shiftReg\(2),
	datad => \inst2|s_shiftReg\(4),
	combout => \inst2|s_shiftReg[3]~7_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X114_Y18_N3
\inst2|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg[3]~7_combout\,
	asdata => \SW[3]~input_o\,
	sload => \SW[13]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(3));

-- Location: LCCOMB_X114_Y18_N4
\inst2|s_shiftReg[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg[4]~6_combout\ = (\SW[12]~input_o\ & (\inst2|s_shiftReg\(3))) # (!\SW[12]~input_o\ & ((\inst2|s_shiftReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst2|s_shiftReg\(3),
	datad => \inst2|s_shiftReg\(5),
	combout => \inst2|s_shiftReg[4]~6_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X114_Y18_N5
\inst2|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg[4]~6_combout\,
	asdata => \SW[4]~input_o\,
	sload => \SW[13]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(4));

-- Location: LCCOMB_X114_Y18_N30
\inst2|s_shiftReg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg[5]~5_combout\ = (\SW[12]~input_o\ & (\inst2|s_shiftReg\(4))) # (!\SW[12]~input_o\ & ((\inst2|s_shiftReg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst2|s_shiftReg\(4),
	datad => \inst2|s_shiftReg\(6),
	combout => \inst2|s_shiftReg[5]~5_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X114_Y18_N31
\inst2|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg[5]~5_combout\,
	asdata => \SW[5]~input_o\,
	sload => \SW[13]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(5));

-- Location: LCCOMB_X114_Y18_N12
\inst2|s_shiftReg[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg[6]~4_combout\ = (\SW[12]~input_o\ & (\inst2|s_shiftReg\(5))) # (!\SW[12]~input_o\ & ((\inst2|s_shiftReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_shiftReg\(5),
	datab => \SW[12]~input_o\,
	datad => \inst2|s_shiftReg\(7),
	combout => \inst2|s_shiftReg[6]~4_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X114_Y18_N13
\inst2|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg[6]~4_combout\,
	asdata => \SW[6]~input_o\,
	sload => \SW[13]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(6));

-- Location: LCCOMB_X114_Y18_N18
\inst2|s_shiftReg[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg[7]~3_combout\ = (\SW[12]~input_o\ & (\inst2|s_shiftReg\(6))) # (!\SW[12]~input_o\ & ((\inst2|s_shiftReg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_shiftReg\(6),
	datab => \SW[12]~input_o\,
	datad => \inst2|s_shiftReg\(8),
	combout => \inst2|s_shiftReg[7]~3_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X114_Y18_N19
\inst2|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg[7]~3_combout\,
	asdata => \SW[7]~input_o\,
	sload => \SW[13]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(7));

-- Location: LCCOMB_X114_Y18_N20
\inst2|s_shiftReg[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg[8]~2_combout\ = (\SW[12]~input_o\ & (\inst2|s_shiftReg\(7))) # (!\SW[12]~input_o\ & ((\inst2|s_shiftReg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst2|s_shiftReg\(7),
	datad => \inst2|s_shiftReg\(9),
	combout => \inst2|s_shiftReg[8]~2_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X114_Y18_N21
\inst2|s_shiftReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg[8]~2_combout\,
	asdata => \SW[8]~input_o\,
	sload => \SW[13]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(8));

-- Location: LCCOMB_X114_Y18_N10
\inst2|s_shiftReg[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg[9]~1_combout\ = (\SW[12]~input_o\ & (\inst2|s_shiftReg\(8))) # (!\SW[12]~input_o\ & ((\inst2|s_shiftReg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst2|s_shiftReg\(8),
	datad => \inst2|s_shiftReg\(10),
	combout => \inst2|s_shiftReg[9]~1_combout\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X114_Y18_N11
\inst2|s_shiftReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg[9]~1_combout\,
	asdata => \SW[9]~input_o\,
	sload => \SW[13]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(9));

-- Location: LCCOMB_X114_Y18_N28
\inst2|s_shiftReg[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg[10]~0_combout\ = (\SW[12]~input_o\ & (\inst2|s_shiftReg\(9))) # (!\SW[12]~input_o\ & ((\inst2|s_shiftReg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_shiftReg\(9),
	datab => \SW[12]~input_o\,
	datad => \inst2|s_shiftReg\(11),
	combout => \inst2|s_shiftReg[10]~0_combout\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: FF_X114_Y18_N29
\inst2|s_shiftReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg[10]~0_combout\,
	asdata => \SW[10]~input_o\,
	sload => \SW[13]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(10));

-- Location: LCCOMB_X114_Y18_N16
\inst2|s_shiftReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_shiftReg~10_combout\ = (\SW[13]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[13]~input_o\ & (\SW[12]~input_o\ & ((\inst2|s_shiftReg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \inst2|s_shiftReg\(10),
	combout => \inst2|s_shiftReg~10_combout\);

-- Location: FF_X114_Y18_N17
\inst2|s_shiftReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|s_shiftReg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_shiftReg\(11));

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


