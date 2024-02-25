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

-- DATE "03/22/2023 10:39:50"

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

ENTITY 	CounterByFreq IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0)
	);
END CounterByFreq;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CounterByFreq IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|sys_core|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|sys_core|Add2~0_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~1\ : std_logic;
SIGNAL \inst|sys_core|Add2~2_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~3\ : std_logic;
SIGNAL \inst|sys_core|Add2~4_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~6_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~5\ : std_logic;
SIGNAL \inst|sys_core|Add2~6_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~7\ : std_logic;
SIGNAL \inst|sys_core|Add2~8_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~9\ : std_logic;
SIGNAL \inst|sys_core|Add2~10_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~11\ : std_logic;
SIGNAL \inst|sys_core|Add2~12_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~13\ : std_logic;
SIGNAL \inst|sys_core|Add2~14_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~11_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~5_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~37\ : std_logic;
SIGNAL \inst|sys_core|Add2~38_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~7_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~39\ : std_logic;
SIGNAL \inst|sys_core|Add2~40_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~6_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~41\ : std_logic;
SIGNAL \inst|sys_core|Add2~42_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~5_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~43\ : std_logic;
SIGNAL \inst|sys_core|Add2~44_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~4_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~45\ : std_logic;
SIGNAL \inst|sys_core|Add2~46_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~1_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~47\ : std_logic;
SIGNAL \inst|sys_core|Add2~48_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~49\ : std_logic;
SIGNAL \inst|sys_core|Add2~50_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~0_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~8_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~15\ : std_logic;
SIGNAL \inst|sys_core|Add2~16_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~17\ : std_logic;
SIGNAL \inst|sys_core|Add2~18_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~19\ : std_logic;
SIGNAL \inst|sys_core|Add2~20_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~21\ : std_logic;
SIGNAL \inst|sys_core|Add2~22_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~23\ : std_logic;
SIGNAL \inst|sys_core|Add2~24_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~10_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~25\ : std_logic;
SIGNAL \inst|sys_core|Add2~26_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~9_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~27\ : std_logic;
SIGNAL \inst|sys_core|Add2~28_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~8_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~29\ : std_logic;
SIGNAL \inst|sys_core|Add2~30_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~3_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~31\ : std_logic;
SIGNAL \inst|sys_core|Add2~32_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~9_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~10_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~2_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~51\ : std_logic;
SIGNAL \inst|sys_core|Add2~52_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~53\ : std_logic;
SIGNAL \inst|sys_core|Add2~54_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~1_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~3_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~55\ : std_logic;
SIGNAL \inst|sys_core|Add2~56_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~57\ : std_logic;
SIGNAL \inst|sys_core|Add2~58_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~59\ : std_logic;
SIGNAL \inst|sys_core|Add2~60_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~61\ : std_logic;
SIGNAL \inst|sys_core|Add2~62_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~0_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~4_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~11_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~33\ : std_logic;
SIGNAL \inst|sys_core|Add2~34_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter~2_combout\ : std_logic;
SIGNAL \inst|sys_core|Add2~35\ : std_logic;
SIGNAL \inst|sys_core|Add2~36_combout\ : std_logic;
SIGNAL \inst|sys_core|clkOut~0_combout\ : std_logic;
SIGNAL \inst|sys_core|clkOut~1_combout\ : std_logic;
SIGNAL \inst|sys_core|clkOut~2_combout\ : std_logic;
SIGNAL \inst|sys_core|Equal0~7_combout\ : std_logic;
SIGNAL \inst|sys_core|clkOut~3_combout\ : std_logic;
SIGNAL \inst|sys_core|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst|sys_core|clkOut~q\ : std_logic;
SIGNAL \inst|sys_core|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst1|s_count~9_combout\ : std_logic;
SIGNAL \inst1|s_count[1]~4_cout\ : std_logic;
SIGNAL \inst1|s_count[1]~5_combout\ : std_logic;
SIGNAL \inst1|s_count[1]~6\ : std_logic;
SIGNAL \inst1|s_count[2]~7_combout\ : std_logic;
SIGNAL \inst1|s_count[2]~8\ : std_logic;
SIGNAL \inst1|s_count[3]~10_combout\ : std_logic;
SIGNAL \inst2|decOut_n~0_combout\ : std_logic;
SIGNAL \inst2|decOut_n~1_combout\ : std_logic;
SIGNAL \inst2|decOut_n~2_combout\ : std_logic;
SIGNAL \inst2|decOut_n~3_combout\ : std_logic;
SIGNAL \inst2|decOut_n~4_combout\ : std_logic;
SIGNAL \inst2|decOut_n~5_combout\ : std_logic;
SIGNAL \inst2|decOut_n~6_combout\ : std_logic;
SIGNAL \inst|sys_core|s_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|s_count\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst|sys_core|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|sys_core|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

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

-- Location: LCCOMB_X73_Y6_N0
\inst|sys_core|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~0_combout\ = \inst|sys_core|s_counter\(0) $ (VCC)
-- \inst|sys_core|Add2~1\ = CARRY(\inst|sys_core|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(0),
	datad => VCC,
	combout => \inst|sys_core|Add2~0_combout\,
	cout => \inst|sys_core|Add2~1\);

-- Location: FF_X73_Y6_N1
\inst|sys_core|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(0));

-- Location: LCCOMB_X73_Y6_N2
\inst|sys_core|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~2_combout\ = (\inst|sys_core|s_counter\(1) & (!\inst|sys_core|Add2~1\)) # (!\inst|sys_core|s_counter\(1) & ((\inst|sys_core|Add2~1\) # (GND)))
-- \inst|sys_core|Add2~3\ = CARRY((!\inst|sys_core|Add2~1\) # (!\inst|sys_core|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(1),
	datad => VCC,
	cin => \inst|sys_core|Add2~1\,
	combout => \inst|sys_core|Add2~2_combout\,
	cout => \inst|sys_core|Add2~3\);

-- Location: FF_X73_Y6_N3
\inst|sys_core|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(1));

-- Location: LCCOMB_X73_Y6_N4
\inst|sys_core|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~4_combout\ = (\inst|sys_core|s_counter\(2) & (\inst|sys_core|Add2~3\ $ (GND))) # (!\inst|sys_core|s_counter\(2) & (!\inst|sys_core|Add2~3\ & VCC))
-- \inst|sys_core|Add2~5\ = CARRY((\inst|sys_core|s_counter\(2) & !\inst|sys_core|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(2),
	datad => VCC,
	cin => \inst|sys_core|Add2~3\,
	combout => \inst|sys_core|Add2~4_combout\,
	cout => \inst|sys_core|Add2~5\);

-- Location: FF_X73_Y6_N5
\inst|sys_core|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(2));

-- Location: LCCOMB_X72_Y6_N26
\inst|sys_core|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~6_combout\ = (\inst|sys_core|s_counter\(1) & (\inst|sys_core|s_counter\(0) & \inst|sys_core|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(1),
	datac => \inst|sys_core|s_counter\(0),
	datad => \inst|sys_core|s_counter\(2),
	combout => \inst|sys_core|Equal0~6_combout\);

-- Location: LCCOMB_X73_Y6_N6
\inst|sys_core|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~6_combout\ = (\inst|sys_core|s_counter\(3) & (!\inst|sys_core|Add2~5\)) # (!\inst|sys_core|s_counter\(3) & ((\inst|sys_core|Add2~5\) # (GND)))
-- \inst|sys_core|Add2~7\ = CARRY((!\inst|sys_core|Add2~5\) # (!\inst|sys_core|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(3),
	datad => VCC,
	cin => \inst|sys_core|Add2~5\,
	combout => \inst|sys_core|Add2~6_combout\,
	cout => \inst|sys_core|Add2~7\);

-- Location: FF_X73_Y6_N7
\inst|sys_core|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(3));

-- Location: LCCOMB_X73_Y6_N8
\inst|sys_core|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~8_combout\ = (\inst|sys_core|s_counter\(4) & (\inst|sys_core|Add2~7\ $ (GND))) # (!\inst|sys_core|s_counter\(4) & (!\inst|sys_core|Add2~7\ & VCC))
-- \inst|sys_core|Add2~9\ = CARRY((\inst|sys_core|s_counter\(4) & !\inst|sys_core|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(4),
	datad => VCC,
	cin => \inst|sys_core|Add2~7\,
	combout => \inst|sys_core|Add2~8_combout\,
	cout => \inst|sys_core|Add2~9\);

-- Location: FF_X73_Y6_N9
\inst|sys_core|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(4));

-- Location: LCCOMB_X73_Y6_N10
\inst|sys_core|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~10_combout\ = (\inst|sys_core|s_counter\(5) & (!\inst|sys_core|Add2~9\)) # (!\inst|sys_core|s_counter\(5) & ((\inst|sys_core|Add2~9\) # (GND)))
-- \inst|sys_core|Add2~11\ = CARRY((!\inst|sys_core|Add2~9\) # (!\inst|sys_core|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(5),
	datad => VCC,
	cin => \inst|sys_core|Add2~9\,
	combout => \inst|sys_core|Add2~10_combout\,
	cout => \inst|sys_core|Add2~11\);

-- Location: FF_X73_Y6_N11
\inst|sys_core|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(5));

-- Location: LCCOMB_X73_Y6_N12
\inst|sys_core|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~12_combout\ = (\inst|sys_core|s_counter\(6) & (\inst|sys_core|Add2~11\ $ (GND))) # (!\inst|sys_core|s_counter\(6) & (!\inst|sys_core|Add2~11\ & VCC))
-- \inst|sys_core|Add2~13\ = CARRY((\inst|sys_core|s_counter\(6) & !\inst|sys_core|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(6),
	datad => VCC,
	cin => \inst|sys_core|Add2~11\,
	combout => \inst|sys_core|Add2~12_combout\,
	cout => \inst|sys_core|Add2~13\);

-- Location: FF_X73_Y6_N13
\inst|sys_core|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(6));

-- Location: LCCOMB_X73_Y6_N14
\inst|sys_core|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~14_combout\ = (\inst|sys_core|s_counter\(7) & (!\inst|sys_core|Add2~13\)) # (!\inst|sys_core|s_counter\(7) & ((\inst|sys_core|Add2~13\) # (GND)))
-- \inst|sys_core|Add2~15\ = CARRY((!\inst|sys_core|Add2~13\) # (!\inst|sys_core|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(7),
	datad => VCC,
	cin => \inst|sys_core|Add2~13\,
	combout => \inst|sys_core|Add2~14_combout\,
	cout => \inst|sys_core|Add2~15\);

-- Location: LCCOMB_X72_Y6_N14
\inst|sys_core|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~11_combout\ = (\inst|sys_core|Add2~14_combout\ & !\inst|sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sys_core|Add2~14_combout\,
	datad => \inst|sys_core|Equal0~11_combout\,
	combout => \inst|sys_core|s_counter~11_combout\);

-- Location: FF_X72_Y6_N15
\inst|sys_core|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(7));

-- Location: LCCOMB_X72_Y6_N0
\inst|sys_core|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~5_combout\ = (\inst|sys_core|s_counter\(3) & (!\inst|sys_core|s_counter\(7) & (\inst|sys_core|s_counter\(5) & \inst|sys_core|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(3),
	datab => \inst|sys_core|s_counter\(7),
	datac => \inst|sys_core|s_counter\(5),
	datad => \inst|sys_core|s_counter\(4),
	combout => \inst|sys_core|Equal0~5_combout\);

-- Location: LCCOMB_X73_Y5_N4
\inst|sys_core|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~36_combout\ = (\inst|sys_core|s_counter\(18) & (\inst|sys_core|Add2~35\ $ (GND))) # (!\inst|sys_core|s_counter\(18) & (!\inst|sys_core|Add2~35\ & VCC))
-- \inst|sys_core|Add2~37\ = CARRY((\inst|sys_core|s_counter\(18) & !\inst|sys_core|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(18),
	datad => VCC,
	cin => \inst|sys_core|Add2~35\,
	combout => \inst|sys_core|Add2~36_combout\,
	cout => \inst|sys_core|Add2~37\);

-- Location: LCCOMB_X73_Y5_N6
\inst|sys_core|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~38_combout\ = (\inst|sys_core|s_counter\(19) & (!\inst|sys_core|Add2~37\)) # (!\inst|sys_core|s_counter\(19) & ((\inst|sys_core|Add2~37\) # (GND)))
-- \inst|sys_core|Add2~39\ = CARRY((!\inst|sys_core|Add2~37\) # (!\inst|sys_core|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(19),
	datad => VCC,
	cin => \inst|sys_core|Add2~37\,
	combout => \inst|sys_core|Add2~38_combout\,
	cout => \inst|sys_core|Add2~39\);

-- Location: LCCOMB_X74_Y5_N4
\inst|sys_core|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~7_combout\ = (\inst|sys_core|Add2~38_combout\ & !\inst|sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sys_core|Add2~38_combout\,
	datad => \inst|sys_core|Equal0~11_combout\,
	combout => \inst|sys_core|s_counter~7_combout\);

-- Location: FF_X74_Y5_N5
\inst|sys_core|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(19));

-- Location: LCCOMB_X73_Y5_N8
\inst|sys_core|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~40_combout\ = (\inst|sys_core|s_counter\(20) & (\inst|sys_core|Add2~39\ $ (GND))) # (!\inst|sys_core|s_counter\(20) & (!\inst|sys_core|Add2~39\ & VCC))
-- \inst|sys_core|Add2~41\ = CARRY((\inst|sys_core|s_counter\(20) & !\inst|sys_core|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(20),
	datad => VCC,
	cin => \inst|sys_core|Add2~39\,
	combout => \inst|sys_core|Add2~40_combout\,
	cout => \inst|sys_core|Add2~41\);

-- Location: LCCOMB_X72_Y5_N16
\inst|sys_core|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~6_combout\ = (\inst|sys_core|Add2~40_combout\ & !\inst|sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sys_core|Add2~40_combout\,
	datad => \inst|sys_core|Equal0~11_combout\,
	combout => \inst|sys_core|s_counter~6_combout\);

-- Location: FF_X72_Y5_N17
\inst|sys_core|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(20));

-- Location: LCCOMB_X73_Y5_N10
\inst|sys_core|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~42_combout\ = (\inst|sys_core|s_counter\(21) & (!\inst|sys_core|Add2~41\)) # (!\inst|sys_core|s_counter\(21) & ((\inst|sys_core|Add2~41\) # (GND)))
-- \inst|sys_core|Add2~43\ = CARRY((!\inst|sys_core|Add2~41\) # (!\inst|sys_core|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(21),
	datad => VCC,
	cin => \inst|sys_core|Add2~41\,
	combout => \inst|sys_core|Add2~42_combout\,
	cout => \inst|sys_core|Add2~43\);

-- Location: LCCOMB_X74_Y5_N8
\inst|sys_core|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~5_combout\ = (!\inst|sys_core|Equal0~11_combout\ & \inst|sys_core|Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sys_core|Equal0~11_combout\,
	datad => \inst|sys_core|Add2~42_combout\,
	combout => \inst|sys_core|s_counter~5_combout\);

-- Location: FF_X74_Y5_N9
\inst|sys_core|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(21));

-- Location: LCCOMB_X73_Y5_N12
\inst|sys_core|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~44_combout\ = (\inst|sys_core|s_counter\(22) & (\inst|sys_core|Add2~43\ $ (GND))) # (!\inst|sys_core|s_counter\(22) & (!\inst|sys_core|Add2~43\ & VCC))
-- \inst|sys_core|Add2~45\ = CARRY((\inst|sys_core|s_counter\(22) & !\inst|sys_core|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(22),
	datad => VCC,
	cin => \inst|sys_core|Add2~43\,
	combout => \inst|sys_core|Add2~44_combout\,
	cout => \inst|sys_core|Add2~45\);

-- Location: LCCOMB_X74_Y5_N22
\inst|sys_core|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~4_combout\ = (!\inst|sys_core|Equal0~11_combout\ & \inst|sys_core|Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sys_core|Equal0~11_combout\,
	datad => \inst|sys_core|Add2~44_combout\,
	combout => \inst|sys_core|s_counter~4_combout\);

-- Location: FF_X74_Y5_N23
\inst|sys_core|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(22));

-- Location: LCCOMB_X73_Y5_N14
\inst|sys_core|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~46_combout\ = (\inst|sys_core|s_counter\(23) & (!\inst|sys_core|Add2~45\)) # (!\inst|sys_core|s_counter\(23) & ((\inst|sys_core|Add2~45\) # (GND)))
-- \inst|sys_core|Add2~47\ = CARRY((!\inst|sys_core|Add2~45\) # (!\inst|sys_core|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(23),
	datad => VCC,
	cin => \inst|sys_core|Add2~45\,
	combout => \inst|sys_core|Add2~46_combout\,
	cout => \inst|sys_core|Add2~47\);

-- Location: LCCOMB_X72_Y5_N14
\inst|sys_core|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~1_combout\ = (\inst|sys_core|Add2~46_combout\ & !\inst|sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sys_core|Add2~46_combout\,
	datad => \inst|sys_core|Equal0~11_combout\,
	combout => \inst|sys_core|s_counter~1_combout\);

-- Location: FF_X72_Y5_N15
\inst|sys_core|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(23));

-- Location: LCCOMB_X73_Y5_N16
\inst|sys_core|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~48_combout\ = (\inst|sys_core|s_counter\(24) & (\inst|sys_core|Add2~47\ $ (GND))) # (!\inst|sys_core|s_counter\(24) & (!\inst|sys_core|Add2~47\ & VCC))
-- \inst|sys_core|Add2~49\ = CARRY((\inst|sys_core|s_counter\(24) & !\inst|sys_core|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(24),
	datad => VCC,
	cin => \inst|sys_core|Add2~47\,
	combout => \inst|sys_core|Add2~48_combout\,
	cout => \inst|sys_core|Add2~49\);

-- Location: FF_X73_Y5_N17
\inst|sys_core|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(24));

-- Location: LCCOMB_X73_Y5_N18
\inst|sys_core|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~50_combout\ = (\inst|sys_core|s_counter\(25) & (!\inst|sys_core|Add2~49\)) # (!\inst|sys_core|s_counter\(25) & ((\inst|sys_core|Add2~49\) # (GND)))
-- \inst|sys_core|Add2~51\ = CARRY((!\inst|sys_core|Add2~49\) # (!\inst|sys_core|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(25),
	datad => VCC,
	cin => \inst|sys_core|Add2~49\,
	combout => \inst|sys_core|Add2~50_combout\,
	cout => \inst|sys_core|Add2~51\);

-- Location: LCCOMB_X72_Y5_N2
\inst|sys_core|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~0_combout\ = (!\inst|sys_core|Equal0~11_combout\ & \inst|sys_core|Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|Equal0~11_combout\,
	datad => \inst|sys_core|Add2~50_combout\,
	combout => \inst|sys_core|s_counter~0_combout\);

-- Location: FF_X72_Y5_N3
\inst|sys_core|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(25));

-- Location: LCCOMB_X72_Y5_N30
\inst|sys_core|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~8_combout\ = (!\inst|sys_core|s_counter\(18) & (\inst|sys_core|s_counter\(25) & (\inst|sys_core|s_counter\(23) & !\inst|sys_core|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(18),
	datab => \inst|sys_core|s_counter\(25),
	datac => \inst|sys_core|s_counter\(23),
	datad => \inst|sys_core|s_counter\(24),
	combout => \inst|sys_core|Equal0~8_combout\);

-- Location: LCCOMB_X73_Y6_N16
\inst|sys_core|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~16_combout\ = (\inst|sys_core|s_counter\(8) & (\inst|sys_core|Add2~15\ $ (GND))) # (!\inst|sys_core|s_counter\(8) & (!\inst|sys_core|Add2~15\ & VCC))
-- \inst|sys_core|Add2~17\ = CARRY((\inst|sys_core|s_counter\(8) & !\inst|sys_core|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(8),
	datad => VCC,
	cin => \inst|sys_core|Add2~15\,
	combout => \inst|sys_core|Add2~16_combout\,
	cout => \inst|sys_core|Add2~17\);

-- Location: FF_X73_Y6_N17
\inst|sys_core|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(8));

-- Location: LCCOMB_X73_Y6_N18
\inst|sys_core|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~18_combout\ = (\inst|sys_core|s_counter\(9) & (!\inst|sys_core|Add2~17\)) # (!\inst|sys_core|s_counter\(9) & ((\inst|sys_core|Add2~17\) # (GND)))
-- \inst|sys_core|Add2~19\ = CARRY((!\inst|sys_core|Add2~17\) # (!\inst|sys_core|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(9),
	datad => VCC,
	cin => \inst|sys_core|Add2~17\,
	combout => \inst|sys_core|Add2~18_combout\,
	cout => \inst|sys_core|Add2~19\);

-- Location: FF_X73_Y6_N19
\inst|sys_core|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(9));

-- Location: LCCOMB_X73_Y6_N20
\inst|sys_core|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~20_combout\ = (\inst|sys_core|s_counter\(10) & (\inst|sys_core|Add2~19\ $ (GND))) # (!\inst|sys_core|s_counter\(10) & (!\inst|sys_core|Add2~19\ & VCC))
-- \inst|sys_core|Add2~21\ = CARRY((\inst|sys_core|s_counter\(10) & !\inst|sys_core|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(10),
	datad => VCC,
	cin => \inst|sys_core|Add2~19\,
	combout => \inst|sys_core|Add2~20_combout\,
	cout => \inst|sys_core|Add2~21\);

-- Location: FF_X73_Y6_N21
\inst|sys_core|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(10));

-- Location: LCCOMB_X73_Y6_N22
\inst|sys_core|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~22_combout\ = (\inst|sys_core|s_counter\(11) & (!\inst|sys_core|Add2~21\)) # (!\inst|sys_core|s_counter\(11) & ((\inst|sys_core|Add2~21\) # (GND)))
-- \inst|sys_core|Add2~23\ = CARRY((!\inst|sys_core|Add2~21\) # (!\inst|sys_core|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(11),
	datad => VCC,
	cin => \inst|sys_core|Add2~21\,
	combout => \inst|sys_core|Add2~22_combout\,
	cout => \inst|sys_core|Add2~23\);

-- Location: FF_X73_Y6_N23
\inst|sys_core|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(11));

-- Location: LCCOMB_X73_Y6_N24
\inst|sys_core|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~24_combout\ = (\inst|sys_core|s_counter\(12) & (\inst|sys_core|Add2~23\ $ (GND))) # (!\inst|sys_core|s_counter\(12) & (!\inst|sys_core|Add2~23\ & VCC))
-- \inst|sys_core|Add2~25\ = CARRY((\inst|sys_core|s_counter\(12) & !\inst|sys_core|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(12),
	datad => VCC,
	cin => \inst|sys_core|Add2~23\,
	combout => \inst|sys_core|Add2~24_combout\,
	cout => \inst|sys_core|Add2~25\);

-- Location: LCCOMB_X74_Y6_N4
\inst|sys_core|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~10_combout\ = (\inst|sys_core|Add2~24_combout\ & !\inst|sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|Add2~24_combout\,
	datad => \inst|sys_core|Equal0~11_combout\,
	combout => \inst|sys_core|s_counter~10_combout\);

-- Location: FF_X74_Y6_N5
\inst|sys_core|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(12));

-- Location: LCCOMB_X73_Y6_N26
\inst|sys_core|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~26_combout\ = (\inst|sys_core|s_counter\(13) & (!\inst|sys_core|Add2~25\)) # (!\inst|sys_core|s_counter\(13) & ((\inst|sys_core|Add2~25\) # (GND)))
-- \inst|sys_core|Add2~27\ = CARRY((!\inst|sys_core|Add2~25\) # (!\inst|sys_core|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(13),
	datad => VCC,
	cin => \inst|sys_core|Add2~25\,
	combout => \inst|sys_core|Add2~26_combout\,
	cout => \inst|sys_core|Add2~27\);

-- Location: LCCOMB_X72_Y6_N12
\inst|sys_core|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~9_combout\ = (!\inst|sys_core|Equal0~11_combout\ & \inst|sys_core|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|Equal0~11_combout\,
	datad => \inst|sys_core|Add2~26_combout\,
	combout => \inst|sys_core|s_counter~9_combout\);

-- Location: FF_X72_Y6_N13
\inst|sys_core|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(13));

-- Location: LCCOMB_X73_Y6_N28
\inst|sys_core|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~28_combout\ = (\inst|sys_core|s_counter\(14) & (\inst|sys_core|Add2~27\ $ (GND))) # (!\inst|sys_core|s_counter\(14) & (!\inst|sys_core|Add2~27\ & VCC))
-- \inst|sys_core|Add2~29\ = CARRY((\inst|sys_core|s_counter\(14) & !\inst|sys_core|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(14),
	datad => VCC,
	cin => \inst|sys_core|Add2~27\,
	combout => \inst|sys_core|Add2~28_combout\,
	cout => \inst|sys_core|Add2~29\);

-- Location: LCCOMB_X72_Y6_N30
\inst|sys_core|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~8_combout\ = (!\inst|sys_core|Equal0~11_combout\ & \inst|sys_core|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|Equal0~11_combout\,
	datad => \inst|sys_core|Add2~28_combout\,
	combout => \inst|sys_core|s_counter~8_combout\);

-- Location: FF_X72_Y6_N31
\inst|sys_core|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(14));

-- Location: LCCOMB_X73_Y6_N30
\inst|sys_core|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~30_combout\ = (\inst|sys_core|s_counter\(15) & (!\inst|sys_core|Add2~29\)) # (!\inst|sys_core|s_counter\(15) & ((\inst|sys_core|Add2~29\) # (GND)))
-- \inst|sys_core|Add2~31\ = CARRY((!\inst|sys_core|Add2~29\) # (!\inst|sys_core|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(15),
	datad => VCC,
	cin => \inst|sys_core|Add2~29\,
	combout => \inst|sys_core|Add2~30_combout\,
	cout => \inst|sys_core|Add2~31\);

-- Location: LCCOMB_X72_Y6_N16
\inst|sys_core|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~3_combout\ = (\inst|sys_core|Add2~30_combout\ & !\inst|sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sys_core|Add2~30_combout\,
	datad => \inst|sys_core|Equal0~11_combout\,
	combout => \inst|sys_core|s_counter~3_combout\);

-- Location: FF_X72_Y6_N17
\inst|sys_core|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(15));

-- Location: LCCOMB_X73_Y5_N0
\inst|sys_core|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~32_combout\ = (\inst|sys_core|s_counter\(16) & (\inst|sys_core|Add2~31\ $ (GND))) # (!\inst|sys_core|s_counter\(16) & (!\inst|sys_core|Add2~31\ & VCC))
-- \inst|sys_core|Add2~33\ = CARRY((\inst|sys_core|s_counter\(16) & !\inst|sys_core|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(16),
	datad => VCC,
	cin => \inst|sys_core|Add2~31\,
	combout => \inst|sys_core|Add2~32_combout\,
	cout => \inst|sys_core|Add2~33\);

-- Location: FF_X73_Y5_N1
\inst|sys_core|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(16));

-- Location: LCCOMB_X72_Y5_N20
\inst|sys_core|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~9_combout\ = (\inst|sys_core|s_counter\(17) & (\inst|sys_core|s_counter\(15) & (!\inst|sys_core|s_counter\(16) & !\inst|sys_core|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(17),
	datab => \inst|sys_core|s_counter\(15),
	datac => \inst|sys_core|s_counter\(16),
	datad => \inst|sys_core|s_counter\(11),
	combout => \inst|sys_core|Equal0~9_combout\);

-- Location: LCCOMB_X72_Y5_N24
\inst|sys_core|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~10_combout\ = (\inst|sys_core|s_counter\(6) & (\inst|sys_core|Equal0~8_combout\ & \inst|sys_core|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(6),
	datac => \inst|sys_core|Equal0~8_combout\,
	datad => \inst|sys_core|Equal0~9_combout\,
	combout => \inst|sys_core|Equal0~10_combout\);

-- Location: LCCOMB_X72_Y5_N22
\inst|sys_core|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~2_combout\ = (\inst|sys_core|s_counter\(14) & (\inst|sys_core|s_counter\(20) & (\inst|sys_core|s_counter\(19) & \inst|sys_core|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(14),
	datab => \inst|sys_core|s_counter\(20),
	datac => \inst|sys_core|s_counter\(19),
	datad => \inst|sys_core|s_counter\(13),
	combout => \inst|sys_core|Equal0~2_combout\);

-- Location: LCCOMB_X73_Y5_N20
\inst|sys_core|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~52_combout\ = (\inst|sys_core|s_counter\(26) & (\inst|sys_core|Add2~51\ $ (GND))) # (!\inst|sys_core|s_counter\(26) & (!\inst|sys_core|Add2~51\ & VCC))
-- \inst|sys_core|Add2~53\ = CARRY((\inst|sys_core|s_counter\(26) & !\inst|sys_core|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(26),
	datad => VCC,
	cin => \inst|sys_core|Add2~51\,
	combout => \inst|sys_core|Add2~52_combout\,
	cout => \inst|sys_core|Add2~53\);

-- Location: FF_X73_Y5_N21
\inst|sys_core|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(26));

-- Location: LCCOMB_X73_Y5_N22
\inst|sys_core|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~54_combout\ = (\inst|sys_core|s_counter\(27) & (!\inst|sys_core|Add2~53\)) # (!\inst|sys_core|s_counter\(27) & ((\inst|sys_core|Add2~53\) # (GND)))
-- \inst|sys_core|Add2~55\ = CARRY((!\inst|sys_core|Add2~53\) # (!\inst|sys_core|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(27),
	datad => VCC,
	cin => \inst|sys_core|Add2~53\,
	combout => \inst|sys_core|Add2~54_combout\,
	cout => \inst|sys_core|Add2~55\);

-- Location: FF_X73_Y5_N23
\inst|sys_core|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(27));

-- Location: LCCOMB_X74_Y5_N10
\inst|sys_core|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~1_combout\ = (\inst|sys_core|s_counter\(22) & (!\inst|sys_core|s_counter\(27) & (\inst|sys_core|s_counter\(21) & !\inst|sys_core|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(22),
	datab => \inst|sys_core|s_counter\(27),
	datac => \inst|sys_core|s_counter\(21),
	datad => \inst|sys_core|s_counter\(26),
	combout => \inst|sys_core|Equal0~1_combout\);

-- Location: LCCOMB_X74_Y6_N30
\inst|sys_core|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~3_combout\ = (!\inst|sys_core|s_counter\(8) & (!\inst|sys_core|s_counter\(9) & (\inst|sys_core|s_counter\(12) & !\inst|sys_core|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(8),
	datab => \inst|sys_core|s_counter\(9),
	datac => \inst|sys_core|s_counter\(12),
	datad => \inst|sys_core|s_counter\(10),
	combout => \inst|sys_core|Equal0~3_combout\);

-- Location: LCCOMB_X73_Y5_N24
\inst|sys_core|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~56_combout\ = (\inst|sys_core|s_counter\(28) & (\inst|sys_core|Add2~55\ $ (GND))) # (!\inst|sys_core|s_counter\(28) & (!\inst|sys_core|Add2~55\ & VCC))
-- \inst|sys_core|Add2~57\ = CARRY((\inst|sys_core|s_counter\(28) & !\inst|sys_core|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(28),
	datad => VCC,
	cin => \inst|sys_core|Add2~55\,
	combout => \inst|sys_core|Add2~56_combout\,
	cout => \inst|sys_core|Add2~57\);

-- Location: FF_X73_Y5_N25
\inst|sys_core|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(28));

-- Location: LCCOMB_X73_Y5_N26
\inst|sys_core|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~58_combout\ = (\inst|sys_core|s_counter\(29) & (!\inst|sys_core|Add2~57\)) # (!\inst|sys_core|s_counter\(29) & ((\inst|sys_core|Add2~57\) # (GND)))
-- \inst|sys_core|Add2~59\ = CARRY((!\inst|sys_core|Add2~57\) # (!\inst|sys_core|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(29),
	datad => VCC,
	cin => \inst|sys_core|Add2~57\,
	combout => \inst|sys_core|Add2~58_combout\,
	cout => \inst|sys_core|Add2~59\);

-- Location: FF_X73_Y5_N27
\inst|sys_core|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(29));

-- Location: LCCOMB_X73_Y5_N28
\inst|sys_core|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~60_combout\ = (\inst|sys_core|s_counter\(30) & (\inst|sys_core|Add2~59\ $ (GND))) # (!\inst|sys_core|s_counter\(30) & (!\inst|sys_core|Add2~59\ & VCC))
-- \inst|sys_core|Add2~61\ = CARRY((\inst|sys_core|s_counter\(30) & !\inst|sys_core|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|s_counter\(30),
	datad => VCC,
	cin => \inst|sys_core|Add2~59\,
	combout => \inst|sys_core|Add2~60_combout\,
	cout => \inst|sys_core|Add2~61\);

-- Location: FF_X73_Y5_N29
\inst|sys_core|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(30));

-- Location: LCCOMB_X73_Y5_N30
\inst|sys_core|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~62_combout\ = \inst|sys_core|s_counter\(31) $ (\inst|sys_core|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(31),
	cin => \inst|sys_core|Add2~61\,
	combout => \inst|sys_core|Add2~62_combout\);

-- Location: FF_X73_Y5_N31
\inst|sys_core|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(31));

-- Location: LCCOMB_X74_Y5_N20
\inst|sys_core|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~0_combout\ = (!\inst|sys_core|s_counter\(29) & (!\inst|sys_core|s_counter\(28) & (!\inst|sys_core|s_counter\(30) & !\inst|sys_core|s_counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(29),
	datab => \inst|sys_core|s_counter\(28),
	datac => \inst|sys_core|s_counter\(30),
	datad => \inst|sys_core|s_counter\(31),
	combout => \inst|sys_core|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y5_N6
\inst|sys_core|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~4_combout\ = (\inst|sys_core|Equal0~2_combout\ & (\inst|sys_core|Equal0~1_combout\ & (\inst|sys_core|Equal0~3_combout\ & \inst|sys_core|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|Equal0~2_combout\,
	datab => \inst|sys_core|Equal0~1_combout\,
	datac => \inst|sys_core|Equal0~3_combout\,
	datad => \inst|sys_core|Equal0~0_combout\,
	combout => \inst|sys_core|Equal0~4_combout\);

-- Location: LCCOMB_X72_Y5_N0
\inst|sys_core|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~11_combout\ = (\inst|sys_core|Equal0~6_combout\ & (\inst|sys_core|Equal0~5_combout\ & (\inst|sys_core|Equal0~10_combout\ & \inst|sys_core|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|Equal0~6_combout\,
	datab => \inst|sys_core|Equal0~5_combout\,
	datac => \inst|sys_core|Equal0~10_combout\,
	datad => \inst|sys_core|Equal0~4_combout\,
	combout => \inst|sys_core|Equal0~11_combout\);

-- Location: LCCOMB_X73_Y5_N2
\inst|sys_core|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Add2~34_combout\ = (\inst|sys_core|s_counter\(17) & (!\inst|sys_core|Add2~33\)) # (!\inst|sys_core|s_counter\(17) & ((\inst|sys_core|Add2~33\) # (GND)))
-- \inst|sys_core|Add2~35\ = CARRY((!\inst|sys_core|Add2~33\) # (!\inst|sys_core|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(17),
	datad => VCC,
	cin => \inst|sys_core|Add2~33\,
	combout => \inst|sys_core|Add2~34_combout\,
	cout => \inst|sys_core|Add2~35\);

-- Location: LCCOMB_X72_Y5_N8
\inst|sys_core|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|s_counter~2_combout\ = (!\inst|sys_core|Equal0~11_combout\ & \inst|sys_core|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|Equal0~11_combout\,
	datad => \inst|sys_core|Add2~34_combout\,
	combout => \inst|sys_core|s_counter~2_combout\);

-- Location: FF_X72_Y5_N9
\inst|sys_core|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(17));

-- Location: FF_X73_Y5_N5
\inst|sys_core|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|s_counter\(18));

-- Location: LCCOMB_X72_Y5_N10
\inst|sys_core|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|clkOut~0_combout\ = (\inst|sys_core|s_counter\(18) & (!\inst|sys_core|s_counter\(25) & (!\inst|sys_core|s_counter\(23) & \inst|sys_core|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(18),
	datab => \inst|sys_core|s_counter\(25),
	datac => \inst|sys_core|s_counter\(23),
	datad => \inst|sys_core|s_counter\(24),
	combout => \inst|sys_core|clkOut~0_combout\);

-- Location: LCCOMB_X72_Y5_N28
\inst|sys_core|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|clkOut~1_combout\ = (!\inst|sys_core|s_counter\(17) & (!\inst|sys_core|s_counter\(15) & (\inst|sys_core|s_counter\(16) & \inst|sys_core|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|s_counter\(17),
	datab => \inst|sys_core|s_counter\(15),
	datac => \inst|sys_core|s_counter\(16),
	datad => \inst|sys_core|s_counter\(11),
	combout => \inst|sys_core|clkOut~1_combout\);

-- Location: LCCOMB_X72_Y5_N26
\inst|sys_core|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|clkOut~2_combout\ = (\inst|sys_core|clkOut~0_combout\ & (!\inst|sys_core|s_counter\(6) & \inst|sys_core|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|clkOut~0_combout\,
	datac => \inst|sys_core|s_counter\(6),
	datad => \inst|sys_core|clkOut~1_combout\,
	combout => \inst|sys_core|clkOut~2_combout\);

-- Location: LCCOMB_X72_Y5_N12
\inst|sys_core|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|Equal0~7_combout\ = (\inst|sys_core|Equal0~5_combout\ & (\inst|sys_core|Equal0~6_combout\ & \inst|sys_core|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sys_core|Equal0~5_combout\,
	datac => \inst|sys_core|Equal0~6_combout\,
	datad => \inst|sys_core|Equal0~4_combout\,
	combout => \inst|sys_core|Equal0~7_combout\);

-- Location: LCCOMB_X72_Y5_N18
\inst|sys_core|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|clkOut~3_combout\ = (\inst|sys_core|Equal0~7_combout\ & (!\inst|sys_core|Equal0~10_combout\ & ((\inst|sys_core|clkOut~2_combout\) # (\inst|sys_core|clkOut~q\)))) # (!\inst|sys_core|Equal0~7_combout\ & (((\inst|sys_core|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|clkOut~2_combout\,
	datab => \inst|sys_core|Equal0~10_combout\,
	datac => \inst|sys_core|clkOut~q\,
	datad => \inst|sys_core|Equal0~7_combout\,
	combout => \inst|sys_core|clkOut~3_combout\);

-- Location: LCCOMB_X72_Y5_N4
\inst|sys_core|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sys_core|clkOut~feeder_combout\ = \inst|sys_core|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sys_core|clkOut~3_combout\,
	combout => \inst|sys_core|clkOut~feeder_combout\);

-- Location: FF_X72_Y5_N5
\inst|sys_core|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|sys_core|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sys_core|clkOut~q\);

-- Location: CLKCTRL_G16
\inst|sys_core|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|sys_core|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|sys_core|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X111_Y65_N12
\inst1|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_count~9_combout\ = (!\inst1|s_count\(0) & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_count\(0),
	datad => \SW[1]~input_o\,
	combout => \inst1|s_count~9_combout\);

-- Location: FF_X111_Y65_N13
\inst1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sys_core|clkOut~clkctrl_outclk\,
	d => \inst1|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_count\(0));

-- Location: LCCOMB_X111_Y65_N18
\inst1|s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_count[1]~4_cout\ = CARRY(\inst1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(0),
	datad => VCC,
	cout => \inst1|s_count[1]~4_cout\);

-- Location: LCCOMB_X111_Y65_N20
\inst1|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_count[1]~5_combout\ = (\SW[0]~input_o\ & ((\inst1|s_count\(1) & (!\inst1|s_count[1]~4_cout\)) # (!\inst1|s_count\(1) & ((\inst1|s_count[1]~4_cout\) # (GND))))) # (!\SW[0]~input_o\ & ((\inst1|s_count\(1) & (\inst1|s_count[1]~4_cout\ & VCC)) # 
-- (!\inst1|s_count\(1) & (!\inst1|s_count[1]~4_cout\))))
-- \inst1|s_count[1]~6\ = CARRY((\SW[0]~input_o\ & ((!\inst1|s_count[1]~4_cout\) # (!\inst1|s_count\(1)))) # (!\SW[0]~input_o\ & (!\inst1|s_count\(1) & !\inst1|s_count[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst1|s_count\(1),
	datad => VCC,
	cin => \inst1|s_count[1]~4_cout\,
	combout => \inst1|s_count[1]~5_combout\,
	cout => \inst1|s_count[1]~6\);

-- Location: FF_X111_Y65_N21
\inst1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sys_core|clkOut~clkctrl_outclk\,
	d => \inst1|s_count[1]~5_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_count\(1));

-- Location: LCCOMB_X111_Y65_N22
\inst1|s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_count[2]~7_combout\ = ((\inst1|s_count\(2) $ (\SW[0]~input_o\ $ (\inst1|s_count[1]~6\)))) # (GND)
-- \inst1|s_count[2]~8\ = CARRY((\inst1|s_count\(2) & ((!\inst1|s_count[1]~6\) # (!\SW[0]~input_o\))) # (!\inst1|s_count\(2) & (!\SW[0]~input_o\ & !\inst1|s_count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(2),
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \inst1|s_count[1]~6\,
	combout => \inst1|s_count[2]~7_combout\,
	cout => \inst1|s_count[2]~8\);

-- Location: FF_X111_Y65_N23
\inst1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sys_core|clkOut~clkctrl_outclk\,
	d => \inst1|s_count[2]~7_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_count\(2));

-- Location: LCCOMB_X111_Y65_N24
\inst1|s_count[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_count[3]~10_combout\ = \SW[0]~input_o\ $ (\inst1|s_count[2]~8\ $ (!\inst1|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \inst1|s_count\(3),
	cin => \inst1|s_count[2]~8\,
	combout => \inst1|s_count[3]~10_combout\);

-- Location: FF_X111_Y65_N25
\inst1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sys_core|clkOut~clkctrl_outclk\,
	d => \inst1|s_count[3]~10_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_count\(3));

-- Location: LCCOMB_X111_Y65_N2
\inst2|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~0_combout\ = (\inst1|s_count\(0) & (!\inst1|s_count\(3) & (\inst1|s_count\(1) $ (!\inst1|s_count\(2))))) # (!\inst1|s_count\(0) & (!\inst1|s_count\(1) & (\inst1|s_count\(2) $ (!\inst1|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst2|decOut_n~0_combout\);

-- Location: LCCOMB_X111_Y65_N8
\inst2|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~1_combout\ = (\inst1|s_count\(1) & (!\inst1|s_count\(3) & ((\inst1|s_count\(0)) # (!\inst1|s_count\(2))))) # (!\inst1|s_count\(1) & (\inst1|s_count\(0) & (\inst1|s_count\(2) $ (!\inst1|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst2|decOut_n~1_combout\);

-- Location: LCCOMB_X111_Y65_N10
\inst2|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~2_combout\ = (\inst1|s_count\(1) & (\inst1|s_count\(0) & ((!\inst1|s_count\(3))))) # (!\inst1|s_count\(1) & ((\inst1|s_count\(2) & ((!\inst1|s_count\(3)))) # (!\inst1|s_count\(2) & (\inst1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst2|decOut_n~2_combout\);

-- Location: LCCOMB_X111_Y65_N4
\inst2|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~3_combout\ = (\inst1|s_count\(1) & ((\inst1|s_count\(0) & (\inst1|s_count\(2))) # (!\inst1|s_count\(0) & (!\inst1|s_count\(2) & \inst1|s_count\(3))))) # (!\inst1|s_count\(1) & (!\inst1|s_count\(3) & (\inst1|s_count\(0) $ 
-- (\inst1|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst2|decOut_n~3_combout\);

-- Location: LCCOMB_X111_Y65_N26
\inst2|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~4_combout\ = (\inst1|s_count\(2) & (\inst1|s_count\(3) & ((\inst1|s_count\(1)) # (!\inst1|s_count\(0))))) # (!\inst1|s_count\(2) & (\inst1|s_count\(1) & (!\inst1|s_count\(0) & !\inst1|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst2|decOut_n~4_combout\);

-- Location: LCCOMB_X111_Y65_N0
\inst2|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~5_combout\ = (\inst1|s_count\(1) & ((\inst1|s_count\(0) & ((\inst1|s_count\(3)))) # (!\inst1|s_count\(0) & (\inst1|s_count\(2))))) # (!\inst1|s_count\(1) & (\inst1|s_count\(2) & (\inst1|s_count\(0) $ (\inst1|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst2|decOut_n~5_combout\);

-- Location: LCCOMB_X111_Y65_N6
\inst2|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~6_combout\ = (\inst1|s_count\(2) & (!\inst1|s_count\(1) & (\inst1|s_count\(0) $ (!\inst1|s_count\(3))))) # (!\inst1|s_count\(2) & (\inst1|s_count\(0) & (\inst1|s_count\(1) $ (!\inst1|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst2|decOut_n~6_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;
END structure;


