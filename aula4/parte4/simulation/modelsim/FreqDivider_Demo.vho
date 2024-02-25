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

-- DATE "03/19/2023 21:50:29"

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

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic
	);
END FreqDivider_Demo;

-- Design Ports Information
-- LEDR	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \sys_core|Add2~0_combout\ : std_logic;
SIGNAL \sys_core|Add2~1\ : std_logic;
SIGNAL \sys_core|Add2~2_combout\ : std_logic;
SIGNAL \sys_core|Add2~3\ : std_logic;
SIGNAL \sys_core|Add2~4_combout\ : std_logic;
SIGNAL \sys_core|Add2~5\ : std_logic;
SIGNAL \sys_core|Add2~6_combout\ : std_logic;
SIGNAL \sys_core|Add2~7\ : std_logic;
SIGNAL \sys_core|Add2~8_combout\ : std_logic;
SIGNAL \sys_core|Add2~9\ : std_logic;
SIGNAL \sys_core|Add2~10_combout\ : std_logic;
SIGNAL \sys_core|Equal0~6_combout\ : std_logic;
SIGNAL \sys_core|Add2~13\ : std_logic;
SIGNAL \sys_core|Add2~14_combout\ : std_logic;
SIGNAL \sys_core|Add2~15\ : std_logic;
SIGNAL \sys_core|Add2~16_combout\ : std_logic;
SIGNAL \sys_core|Add2~17\ : std_logic;
SIGNAL \sys_core|Add2~18_combout\ : std_logic;
SIGNAL \sys_core|Add2~19\ : std_logic;
SIGNAL \sys_core|Add2~20_combout\ : std_logic;
SIGNAL \sys_core|s_counter~6_combout\ : std_logic;
SIGNAL \sys_core|Add2~21\ : std_logic;
SIGNAL \sys_core|Add2~22_combout\ : std_logic;
SIGNAL \sys_core|s_counter~5_combout\ : std_logic;
SIGNAL \sys_core|Add2~23\ : std_logic;
SIGNAL \sys_core|Add2~24_combout\ : std_logic;
SIGNAL \sys_core|s_counter~4_combout\ : std_logic;
SIGNAL \sys_core|Add2~25\ : std_logic;
SIGNAL \sys_core|Add2~26_combout\ : std_logic;
SIGNAL \sys_core|s_counter~11_combout\ : std_logic;
SIGNAL \sys_core|Add2~27\ : std_logic;
SIGNAL \sys_core|Add2~28_combout\ : std_logic;
SIGNAL \sys_core|Add2~29\ : std_logic;
SIGNAL \sys_core|Add2~30_combout\ : std_logic;
SIGNAL \sys_core|s_counter~10_combout\ : std_logic;
SIGNAL \sys_core|Add2~31\ : std_logic;
SIGNAL \sys_core|Add2~32_combout\ : std_logic;
SIGNAL \sys_core|Add2~33\ : std_logic;
SIGNAL \sys_core|Add2~34_combout\ : std_logic;
SIGNAL \sys_core|s_counter~3_combout\ : std_logic;
SIGNAL \sys_core|Add2~35\ : std_logic;
SIGNAL \sys_core|Add2~36_combout\ : std_logic;
SIGNAL \sys_core|s_counter~2_combout\ : std_logic;
SIGNAL \sys_core|Add2~37\ : std_logic;
SIGNAL \sys_core|Add2~38_combout\ : std_logic;
SIGNAL \sys_core|s_counter~1_combout\ : std_logic;
SIGNAL \sys_core|Add2~39\ : std_logic;
SIGNAL \sys_core|Add2~40_combout\ : std_logic;
SIGNAL \sys_core|s_counter~0_combout\ : std_logic;
SIGNAL \sys_core|Add2~41\ : std_logic;
SIGNAL \sys_core|Add2~42_combout\ : std_logic;
SIGNAL \sys_core|s_counter~9_combout\ : std_logic;
SIGNAL \sys_core|Add2~43\ : std_logic;
SIGNAL \sys_core|Add2~44_combout\ : std_logic;
SIGNAL \sys_core|Add2~45\ : std_logic;
SIGNAL \sys_core|Add2~46_combout\ : std_logic;
SIGNAL \sys_core|s_counter~8_combout\ : std_logic;
SIGNAL \sys_core|Equal0~8_combout\ : std_logic;
SIGNAL \sys_core|Equal0~9_combout\ : std_logic;
SIGNAL \sys_core|Equal0~10_combout\ : std_logic;
SIGNAL \sys_core|Add2~47\ : std_logic;
SIGNAL \sys_core|Add2~48_combout\ : std_logic;
SIGNAL \sys_core|Add2~49\ : std_logic;
SIGNAL \sys_core|Add2~50_combout\ : std_logic;
SIGNAL \sys_core|Add2~51\ : std_logic;
SIGNAL \sys_core|Add2~52_combout\ : std_logic;
SIGNAL \sys_core|Add2~53\ : std_logic;
SIGNAL \sys_core|Add2~54_combout\ : std_logic;
SIGNAL \sys_core|Equal0~1_combout\ : std_logic;
SIGNAL \sys_core|Equal0~2_combout\ : std_logic;
SIGNAL \sys_core|Add2~55\ : std_logic;
SIGNAL \sys_core|Add2~56_combout\ : std_logic;
SIGNAL \sys_core|Add2~57\ : std_logic;
SIGNAL \sys_core|Add2~58_combout\ : std_logic;
SIGNAL \sys_core|Add2~59\ : std_logic;
SIGNAL \sys_core|Add2~60_combout\ : std_logic;
SIGNAL \sys_core|Add2~61\ : std_logic;
SIGNAL \sys_core|Add2~62_combout\ : std_logic;
SIGNAL \sys_core|Equal0~0_combout\ : std_logic;
SIGNAL \sys_core|Equal0~3_combout\ : std_logic;
SIGNAL \sys_core|Equal0~4_combout\ : std_logic;
SIGNAL \sys_core|Equal0~11_combout\ : std_logic;
SIGNAL \sys_core|s_counter~7_combout\ : std_logic;
SIGNAL \sys_core|Add2~11\ : std_logic;
SIGNAL \sys_core|Add2~12_combout\ : std_logic;
SIGNAL \sys_core|Equal0~5_combout\ : std_logic;
SIGNAL \sys_core|Equal0~7_combout\ : std_logic;
SIGNAL \sys_core|clkOut~0_combout\ : std_logic;
SIGNAL \sys_core|clkOut~1_combout\ : std_logic;
SIGNAL \sys_core|clkOut~2_combout\ : std_logic;
SIGNAL \sys_core|clkOut~3_combout\ : std_logic;
SIGNAL \sys_core|clkOut~q\ : std_logic;
SIGNAL \sys_core|s_counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X47_Y0_N9
\LEDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sys_core|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDR~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X48_Y27_N0
\sys_core|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~0_combout\ = \sys_core|s_counter\(0) $ (VCC)
-- \sys_core|Add2~1\ = CARRY(\sys_core|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(0),
	datad => VCC,
	combout => \sys_core|Add2~0_combout\,
	cout => \sys_core|Add2~1\);

-- Location: FF_X48_Y27_N1
\sys_core|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(0));

-- Location: LCCOMB_X48_Y27_N2
\sys_core|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~2_combout\ = (\sys_core|s_counter\(1) & (!\sys_core|Add2~1\)) # (!\sys_core|s_counter\(1) & ((\sys_core|Add2~1\) # (GND)))
-- \sys_core|Add2~3\ = CARRY((!\sys_core|Add2~1\) # (!\sys_core|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(1),
	datad => VCC,
	cin => \sys_core|Add2~1\,
	combout => \sys_core|Add2~2_combout\,
	cout => \sys_core|Add2~3\);

-- Location: FF_X48_Y27_N3
\sys_core|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(1));

-- Location: LCCOMB_X48_Y27_N4
\sys_core|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~4_combout\ = (\sys_core|s_counter\(2) & (\sys_core|Add2~3\ $ (GND))) # (!\sys_core|s_counter\(2) & (!\sys_core|Add2~3\ & VCC))
-- \sys_core|Add2~5\ = CARRY((\sys_core|s_counter\(2) & !\sys_core|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(2),
	datad => VCC,
	cin => \sys_core|Add2~3\,
	combout => \sys_core|Add2~4_combout\,
	cout => \sys_core|Add2~5\);

-- Location: FF_X48_Y27_N5
\sys_core|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(2));

-- Location: LCCOMB_X48_Y27_N6
\sys_core|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~6_combout\ = (\sys_core|s_counter\(3) & (!\sys_core|Add2~5\)) # (!\sys_core|s_counter\(3) & ((\sys_core|Add2~5\) # (GND)))
-- \sys_core|Add2~7\ = CARRY((!\sys_core|Add2~5\) # (!\sys_core|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(3),
	datad => VCC,
	cin => \sys_core|Add2~5\,
	combout => \sys_core|Add2~6_combout\,
	cout => \sys_core|Add2~7\);

-- Location: FF_X48_Y27_N7
\sys_core|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(3));

-- Location: LCCOMB_X48_Y27_N8
\sys_core|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~8_combout\ = (\sys_core|s_counter\(4) & (\sys_core|Add2~7\ $ (GND))) # (!\sys_core|s_counter\(4) & (!\sys_core|Add2~7\ & VCC))
-- \sys_core|Add2~9\ = CARRY((\sys_core|s_counter\(4) & !\sys_core|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(4),
	datad => VCC,
	cin => \sys_core|Add2~7\,
	combout => \sys_core|Add2~8_combout\,
	cout => \sys_core|Add2~9\);

-- Location: FF_X48_Y27_N9
\sys_core|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(4));

-- Location: LCCOMB_X48_Y27_N10
\sys_core|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~10_combout\ = (\sys_core|s_counter\(5) & (!\sys_core|Add2~9\)) # (!\sys_core|s_counter\(5) & ((\sys_core|Add2~9\) # (GND)))
-- \sys_core|Add2~11\ = CARRY((!\sys_core|Add2~9\) # (!\sys_core|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(5),
	datad => VCC,
	cin => \sys_core|Add2~9\,
	combout => \sys_core|Add2~10_combout\,
	cout => \sys_core|Add2~11\);

-- Location: LCCOMB_X47_Y27_N30
\sys_core|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~6_combout\ = (\sys_core|s_counter\(1) & (\sys_core|s_counter\(0) & \sys_core|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(1),
	datac => \sys_core|s_counter\(0),
	datad => \sys_core|s_counter\(2),
	combout => \sys_core|Equal0~6_combout\);

-- Location: LCCOMB_X48_Y27_N12
\sys_core|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~12_combout\ = (\sys_core|s_counter\(6) & (\sys_core|Add2~11\ $ (GND))) # (!\sys_core|s_counter\(6) & (!\sys_core|Add2~11\ & VCC))
-- \sys_core|Add2~13\ = CARRY((\sys_core|s_counter\(6) & !\sys_core|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(6),
	datad => VCC,
	cin => \sys_core|Add2~11\,
	combout => \sys_core|Add2~12_combout\,
	cout => \sys_core|Add2~13\);

-- Location: LCCOMB_X48_Y27_N14
\sys_core|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~14_combout\ = (\sys_core|s_counter\(7) & (!\sys_core|Add2~13\)) # (!\sys_core|s_counter\(7) & ((\sys_core|Add2~13\) # (GND)))
-- \sys_core|Add2~15\ = CARRY((!\sys_core|Add2~13\) # (!\sys_core|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(7),
	datad => VCC,
	cin => \sys_core|Add2~13\,
	combout => \sys_core|Add2~14_combout\,
	cout => \sys_core|Add2~15\);

-- Location: FF_X48_Y27_N15
\sys_core|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(7));

-- Location: LCCOMB_X48_Y27_N16
\sys_core|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~16_combout\ = (\sys_core|s_counter\(8) & (\sys_core|Add2~15\ $ (GND))) # (!\sys_core|s_counter\(8) & (!\sys_core|Add2~15\ & VCC))
-- \sys_core|Add2~17\ = CARRY((\sys_core|s_counter\(8) & !\sys_core|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(8),
	datad => VCC,
	cin => \sys_core|Add2~15\,
	combout => \sys_core|Add2~16_combout\,
	cout => \sys_core|Add2~17\);

-- Location: FF_X48_Y27_N17
\sys_core|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(8));

-- Location: LCCOMB_X48_Y27_N18
\sys_core|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~18_combout\ = (\sys_core|s_counter\(9) & (!\sys_core|Add2~17\)) # (!\sys_core|s_counter\(9) & ((\sys_core|Add2~17\) # (GND)))
-- \sys_core|Add2~19\ = CARRY((!\sys_core|Add2~17\) # (!\sys_core|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(9),
	datad => VCC,
	cin => \sys_core|Add2~17\,
	combout => \sys_core|Add2~18_combout\,
	cout => \sys_core|Add2~19\);

-- Location: FF_X48_Y27_N19
\sys_core|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(9));

-- Location: LCCOMB_X48_Y27_N20
\sys_core|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~20_combout\ = (\sys_core|s_counter\(10) & (\sys_core|Add2~19\ $ (GND))) # (!\sys_core|s_counter\(10) & (!\sys_core|Add2~19\ & VCC))
-- \sys_core|Add2~21\ = CARRY((\sys_core|s_counter\(10) & !\sys_core|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(10),
	datad => VCC,
	cin => \sys_core|Add2~19\,
	combout => \sys_core|Add2~20_combout\,
	cout => \sys_core|Add2~21\);

-- Location: LCCOMB_X49_Y26_N26
\sys_core|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~6_combout\ = (!\sys_core|Equal0~11_combout\ & \sys_core|Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|Equal0~11_combout\,
	datad => \sys_core|Add2~20_combout\,
	combout => \sys_core|s_counter~6_combout\);

-- Location: FF_X49_Y26_N27
\sys_core|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(10));

-- Location: LCCOMB_X48_Y27_N22
\sys_core|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~22_combout\ = (\sys_core|s_counter\(11) & (!\sys_core|Add2~21\)) # (!\sys_core|s_counter\(11) & ((\sys_core|Add2~21\) # (GND)))
-- \sys_core|Add2~23\ = CARRY((!\sys_core|Add2~21\) # (!\sys_core|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(11),
	datad => VCC,
	cin => \sys_core|Add2~21\,
	combout => \sys_core|Add2~22_combout\,
	cout => \sys_core|Add2~23\);

-- Location: LCCOMB_X49_Y26_N0
\sys_core|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~5_combout\ = (\sys_core|Add2~22_combout\ & !\sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_core|Add2~22_combout\,
	datad => \sys_core|Equal0~11_combout\,
	combout => \sys_core|s_counter~5_combout\);

-- Location: FF_X49_Y26_N1
\sys_core|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(11));

-- Location: LCCOMB_X48_Y27_N24
\sys_core|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~24_combout\ = (\sys_core|s_counter\(12) & (\sys_core|Add2~23\ $ (GND))) # (!\sys_core|s_counter\(12) & (!\sys_core|Add2~23\ & VCC))
-- \sys_core|Add2~25\ = CARRY((\sys_core|s_counter\(12) & !\sys_core|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(12),
	datad => VCC,
	cin => \sys_core|Add2~23\,
	combout => \sys_core|Add2~24_combout\,
	cout => \sys_core|Add2~25\);

-- Location: LCCOMB_X49_Y26_N14
\sys_core|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~4_combout\ = (\sys_core|Add2~24_combout\ & !\sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_core|Add2~24_combout\,
	datad => \sys_core|Equal0~11_combout\,
	combout => \sys_core|s_counter~4_combout\);

-- Location: FF_X49_Y26_N15
\sys_core|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(12));

-- Location: LCCOMB_X48_Y27_N26
\sys_core|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~26_combout\ = (\sys_core|s_counter\(13) & (!\sys_core|Add2~25\)) # (!\sys_core|s_counter\(13) & ((\sys_core|Add2~25\) # (GND)))
-- \sys_core|Add2~27\ = CARRY((!\sys_core|Add2~25\) # (!\sys_core|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(13),
	datad => VCC,
	cin => \sys_core|Add2~25\,
	combout => \sys_core|Add2~26_combout\,
	cout => \sys_core|Add2~27\);

-- Location: LCCOMB_X47_Y26_N0
\sys_core|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~11_combout\ = (!\sys_core|Equal0~11_combout\ & \sys_core|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|Equal0~11_combout\,
	datad => \sys_core|Add2~26_combout\,
	combout => \sys_core|s_counter~11_combout\);

-- Location: FF_X47_Y26_N1
\sys_core|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(13));

-- Location: LCCOMB_X48_Y27_N28
\sys_core|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~28_combout\ = (\sys_core|s_counter\(14) & (\sys_core|Add2~27\ $ (GND))) # (!\sys_core|s_counter\(14) & (!\sys_core|Add2~27\ & VCC))
-- \sys_core|Add2~29\ = CARRY((\sys_core|s_counter\(14) & !\sys_core|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(14),
	datad => VCC,
	cin => \sys_core|Add2~27\,
	combout => \sys_core|Add2~28_combout\,
	cout => \sys_core|Add2~29\);

-- Location: FF_X48_Y27_N29
\sys_core|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(14));

-- Location: LCCOMB_X48_Y27_N30
\sys_core|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~30_combout\ = (\sys_core|s_counter\(15) & (!\sys_core|Add2~29\)) # (!\sys_core|s_counter\(15) & ((\sys_core|Add2~29\) # (GND)))
-- \sys_core|Add2~31\ = CARRY((!\sys_core|Add2~29\) # (!\sys_core|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(15),
	datad => VCC,
	cin => \sys_core|Add2~29\,
	combout => \sys_core|Add2~30_combout\,
	cout => \sys_core|Add2~31\);

-- Location: LCCOMB_X47_Y26_N26
\sys_core|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~10_combout\ = (\sys_core|Add2~30_combout\ & !\sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_core|Add2~30_combout\,
	datad => \sys_core|Equal0~11_combout\,
	combout => \sys_core|s_counter~10_combout\);

-- Location: FF_X47_Y26_N27
\sys_core|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(15));

-- Location: LCCOMB_X48_Y26_N0
\sys_core|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~32_combout\ = (\sys_core|s_counter\(16) & (\sys_core|Add2~31\ $ (GND))) # (!\sys_core|s_counter\(16) & (!\sys_core|Add2~31\ & VCC))
-- \sys_core|Add2~33\ = CARRY((\sys_core|s_counter\(16) & !\sys_core|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(16),
	datad => VCC,
	cin => \sys_core|Add2~31\,
	combout => \sys_core|Add2~32_combout\,
	cout => \sys_core|Add2~33\);

-- Location: FF_X48_Y26_N1
\sys_core|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(16));

-- Location: LCCOMB_X48_Y26_N2
\sys_core|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~34_combout\ = (\sys_core|s_counter\(17) & (!\sys_core|Add2~33\)) # (!\sys_core|s_counter\(17) & ((\sys_core|Add2~33\) # (GND)))
-- \sys_core|Add2~35\ = CARRY((!\sys_core|Add2~33\) # (!\sys_core|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(17),
	datad => VCC,
	cin => \sys_core|Add2~33\,
	combout => \sys_core|Add2~34_combout\,
	cout => \sys_core|Add2~35\);

-- Location: LCCOMB_X49_Y26_N30
\sys_core|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~3_combout\ = (\sys_core|Add2~34_combout\ & !\sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|Add2~34_combout\,
	datad => \sys_core|Equal0~11_combout\,
	combout => \sys_core|s_counter~3_combout\);

-- Location: FF_X49_Y26_N31
\sys_core|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(17));

-- Location: LCCOMB_X48_Y26_N4
\sys_core|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~36_combout\ = (\sys_core|s_counter\(18) & (\sys_core|Add2~35\ $ (GND))) # (!\sys_core|s_counter\(18) & (!\sys_core|Add2~35\ & VCC))
-- \sys_core|Add2~37\ = CARRY((\sys_core|s_counter\(18) & !\sys_core|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(18),
	datad => VCC,
	cin => \sys_core|Add2~35\,
	combout => \sys_core|Add2~36_combout\,
	cout => \sys_core|Add2~37\);

-- Location: LCCOMB_X49_Y26_N12
\sys_core|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~2_combout\ = (\sys_core|Add2~36_combout\ & !\sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_core|Add2~36_combout\,
	datad => \sys_core|Equal0~11_combout\,
	combout => \sys_core|s_counter~2_combout\);

-- Location: FF_X49_Y26_N13
\sys_core|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(18));

-- Location: LCCOMB_X48_Y26_N6
\sys_core|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~38_combout\ = (\sys_core|s_counter\(19) & (!\sys_core|Add2~37\)) # (!\sys_core|s_counter\(19) & ((\sys_core|Add2~37\) # (GND)))
-- \sys_core|Add2~39\ = CARRY((!\sys_core|Add2~37\) # (!\sys_core|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(19),
	datad => VCC,
	cin => \sys_core|Add2~37\,
	combout => \sys_core|Add2~38_combout\,
	cout => \sys_core|Add2~39\);

-- Location: LCCOMB_X49_Y26_N10
\sys_core|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~1_combout\ = (\sys_core|Add2~38_combout\ & !\sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_core|Add2~38_combout\,
	datad => \sys_core|Equal0~11_combout\,
	combout => \sys_core|s_counter~1_combout\);

-- Location: FF_X49_Y26_N11
\sys_core|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(19));

-- Location: LCCOMB_X48_Y26_N8
\sys_core|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~40_combout\ = (\sys_core|s_counter\(20) & (\sys_core|Add2~39\ $ (GND))) # (!\sys_core|s_counter\(20) & (!\sys_core|Add2~39\ & VCC))
-- \sys_core|Add2~41\ = CARRY((\sys_core|s_counter\(20) & !\sys_core|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(20),
	datad => VCC,
	cin => \sys_core|Add2~39\,
	combout => \sys_core|Add2~40_combout\,
	cout => \sys_core|Add2~41\);

-- Location: LCCOMB_X49_Y26_N4
\sys_core|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~0_combout\ = (!\sys_core|Equal0~11_combout\ & \sys_core|Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|Equal0~11_combout\,
	datad => \sys_core|Add2~40_combout\,
	combout => \sys_core|s_counter~0_combout\);

-- Location: FF_X49_Y26_N5
\sys_core|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(20));

-- Location: LCCOMB_X48_Y26_N10
\sys_core|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~42_combout\ = (\sys_core|s_counter\(21) & (!\sys_core|Add2~41\)) # (!\sys_core|s_counter\(21) & ((\sys_core|Add2~41\) # (GND)))
-- \sys_core|Add2~43\ = CARRY((!\sys_core|Add2~41\) # (!\sys_core|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(21),
	datad => VCC,
	cin => \sys_core|Add2~41\,
	combout => \sys_core|Add2~42_combout\,
	cout => \sys_core|Add2~43\);

-- Location: LCCOMB_X47_Y26_N2
\sys_core|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~9_combout\ = (\sys_core|Add2~42_combout\ & !\sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_core|Add2~42_combout\,
	datad => \sys_core|Equal0~11_combout\,
	combout => \sys_core|s_counter~9_combout\);

-- Location: FF_X47_Y26_N3
\sys_core|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(21));

-- Location: LCCOMB_X48_Y26_N12
\sys_core|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~44_combout\ = (\sys_core|s_counter\(22) & (\sys_core|Add2~43\ $ (GND))) # (!\sys_core|s_counter\(22) & (!\sys_core|Add2~43\ & VCC))
-- \sys_core|Add2~45\ = CARRY((\sys_core|s_counter\(22) & !\sys_core|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(22),
	datad => VCC,
	cin => \sys_core|Add2~43\,
	combout => \sys_core|Add2~44_combout\,
	cout => \sys_core|Add2~45\);

-- Location: FF_X48_Y26_N13
\sys_core|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(22));

-- Location: LCCOMB_X48_Y26_N14
\sys_core|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~46_combout\ = (\sys_core|s_counter\(23) & (!\sys_core|Add2~45\)) # (!\sys_core|s_counter\(23) & ((\sys_core|Add2~45\) # (GND)))
-- \sys_core|Add2~47\ = CARRY((!\sys_core|Add2~45\) # (!\sys_core|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(23),
	datad => VCC,
	cin => \sys_core|Add2~45\,
	combout => \sys_core|Add2~46_combout\,
	cout => \sys_core|Add2~47\);

-- Location: LCCOMB_X47_Y26_N20
\sys_core|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~8_combout\ = (\sys_core|Add2~46_combout\ & !\sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_core|Add2~46_combout\,
	datad => \sys_core|Equal0~11_combout\,
	combout => \sys_core|s_counter~8_combout\);

-- Location: FF_X47_Y26_N21
\sys_core|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(23));

-- Location: LCCOMB_X47_Y26_N30
\sys_core|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~8_combout\ = (\sys_core|s_counter\(23) & (!\sys_core|s_counter\(16) & (!\sys_core|s_counter\(22) & \sys_core|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(23),
	datab => \sys_core|s_counter\(16),
	datac => \sys_core|s_counter\(22),
	datad => \sys_core|s_counter\(21),
	combout => \sys_core|Equal0~8_combout\);

-- Location: LCCOMB_X47_Y26_N16
\sys_core|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~9_combout\ = (\sys_core|s_counter\(15) & (\sys_core|s_counter\(13) & (!\sys_core|s_counter\(14) & !\sys_core|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(15),
	datab => \sys_core|s_counter\(13),
	datac => \sys_core|s_counter\(14),
	datad => \sys_core|s_counter\(9),
	combout => \sys_core|Equal0~9_combout\);

-- Location: LCCOMB_X47_Y26_N14
\sys_core|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~10_combout\ = (\sys_core|s_counter\(4) & (\sys_core|Equal0~8_combout\ & \sys_core|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(4),
	datac => \sys_core|Equal0~8_combout\,
	datad => \sys_core|Equal0~9_combout\,
	combout => \sys_core|Equal0~10_combout\);

-- Location: LCCOMB_X48_Y26_N16
\sys_core|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~48_combout\ = (\sys_core|s_counter\(24) & (\sys_core|Add2~47\ $ (GND))) # (!\sys_core|s_counter\(24) & (!\sys_core|Add2~47\ & VCC))
-- \sys_core|Add2~49\ = CARRY((\sys_core|s_counter\(24) & !\sys_core|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(24),
	datad => VCC,
	cin => \sys_core|Add2~47\,
	combout => \sys_core|Add2~48_combout\,
	cout => \sys_core|Add2~49\);

-- Location: FF_X48_Y26_N17
\sys_core|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(24));

-- Location: LCCOMB_X48_Y26_N18
\sys_core|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~50_combout\ = (\sys_core|s_counter\(25) & (!\sys_core|Add2~49\)) # (!\sys_core|s_counter\(25) & ((\sys_core|Add2~49\) # (GND)))
-- \sys_core|Add2~51\ = CARRY((!\sys_core|Add2~49\) # (!\sys_core|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(25),
	datad => VCC,
	cin => \sys_core|Add2~49\,
	combout => \sys_core|Add2~50_combout\,
	cout => \sys_core|Add2~51\);

-- Location: FF_X48_Y26_N19
\sys_core|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(25));

-- Location: LCCOMB_X48_Y26_N20
\sys_core|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~52_combout\ = (\sys_core|s_counter\(26) & (\sys_core|Add2~51\ $ (GND))) # (!\sys_core|s_counter\(26) & (!\sys_core|Add2~51\ & VCC))
-- \sys_core|Add2~53\ = CARRY((\sys_core|s_counter\(26) & !\sys_core|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(26),
	datad => VCC,
	cin => \sys_core|Add2~51\,
	combout => \sys_core|Add2~52_combout\,
	cout => \sys_core|Add2~53\);

-- Location: FF_X48_Y26_N21
\sys_core|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(26));

-- Location: LCCOMB_X48_Y26_N22
\sys_core|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~54_combout\ = (\sys_core|s_counter\(27) & (!\sys_core|Add2~53\)) # (!\sys_core|s_counter\(27) & ((\sys_core|Add2~53\) # (GND)))
-- \sys_core|Add2~55\ = CARRY((!\sys_core|Add2~53\) # (!\sys_core|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(27),
	datad => VCC,
	cin => \sys_core|Add2~53\,
	combout => \sys_core|Add2~54_combout\,
	cout => \sys_core|Add2~55\);

-- Location: FF_X48_Y26_N23
\sys_core|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(27));

-- Location: LCCOMB_X49_Y26_N22
\sys_core|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~1_combout\ = (!\sys_core|s_counter\(24) & (!\sys_core|s_counter\(25) & (!\sys_core|s_counter\(27) & !\sys_core|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(24),
	datab => \sys_core|s_counter\(25),
	datac => \sys_core|s_counter\(27),
	datad => \sys_core|s_counter\(26),
	combout => \sys_core|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y26_N28
\sys_core|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~2_combout\ = (\sys_core|s_counter\(18) & (\sys_core|s_counter\(20) & (\sys_core|s_counter\(17) & \sys_core|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(18),
	datab => \sys_core|s_counter\(20),
	datac => \sys_core|s_counter\(17),
	datad => \sys_core|s_counter\(19),
	combout => \sys_core|Equal0~2_combout\);

-- Location: LCCOMB_X48_Y26_N24
\sys_core|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~56_combout\ = (\sys_core|s_counter\(28) & (\sys_core|Add2~55\ $ (GND))) # (!\sys_core|s_counter\(28) & (!\sys_core|Add2~55\ & VCC))
-- \sys_core|Add2~57\ = CARRY((\sys_core|s_counter\(28) & !\sys_core|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(28),
	datad => VCC,
	cin => \sys_core|Add2~55\,
	combout => \sys_core|Add2~56_combout\,
	cout => \sys_core|Add2~57\);

-- Location: FF_X48_Y26_N25
\sys_core|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(28));

-- Location: LCCOMB_X48_Y26_N26
\sys_core|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~58_combout\ = (\sys_core|s_counter\(29) & (!\sys_core|Add2~57\)) # (!\sys_core|s_counter\(29) & ((\sys_core|Add2~57\) # (GND)))
-- \sys_core|Add2~59\ = CARRY((!\sys_core|Add2~57\) # (!\sys_core|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(29),
	datad => VCC,
	cin => \sys_core|Add2~57\,
	combout => \sys_core|Add2~58_combout\,
	cout => \sys_core|Add2~59\);

-- Location: FF_X48_Y26_N27
\sys_core|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(29));

-- Location: LCCOMB_X48_Y26_N28
\sys_core|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~60_combout\ = (\sys_core|s_counter\(30) & (\sys_core|Add2~59\ $ (GND))) # (!\sys_core|s_counter\(30) & (!\sys_core|Add2~59\ & VCC))
-- \sys_core|Add2~61\ = CARRY((\sys_core|s_counter\(30) & !\sys_core|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(30),
	datad => VCC,
	cin => \sys_core|Add2~59\,
	combout => \sys_core|Add2~60_combout\,
	cout => \sys_core|Add2~61\);

-- Location: FF_X48_Y26_N29
\sys_core|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(30));

-- Location: LCCOMB_X48_Y26_N30
\sys_core|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Add2~62_combout\ = \sys_core|s_counter\(31) $ (\sys_core|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(31),
	cin => \sys_core|Add2~61\,
	combout => \sys_core|Add2~62_combout\);

-- Location: FF_X48_Y26_N31
\sys_core|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(31));

-- Location: LCCOMB_X49_Y26_N8
\sys_core|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~0_combout\ = (!\sys_core|s_counter\(29) & (!\sys_core|s_counter\(31) & (!\sys_core|s_counter\(28) & !\sys_core|s_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(29),
	datab => \sys_core|s_counter\(31),
	datac => \sys_core|s_counter\(28),
	datad => \sys_core|s_counter\(30),
	combout => \sys_core|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y26_N24
\sys_core|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~3_combout\ = (\sys_core|s_counter\(10) & (\sys_core|s_counter\(12) & (!\sys_core|s_counter\(8) & \sys_core|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(10),
	datab => \sys_core|s_counter\(12),
	datac => \sys_core|s_counter\(8),
	datad => \sys_core|s_counter\(11),
	combout => \sys_core|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y26_N6
\sys_core|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~4_combout\ = (\sys_core|Equal0~1_combout\ & (\sys_core|Equal0~2_combout\ & (\sys_core|Equal0~0_combout\ & \sys_core|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|Equal0~1_combout\,
	datab => \sys_core|Equal0~2_combout\,
	datac => \sys_core|Equal0~0_combout\,
	datad => \sys_core|Equal0~3_combout\,
	combout => \sys_core|Equal0~4_combout\);

-- Location: LCCOMB_X47_Y26_N28
\sys_core|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~11_combout\ = (\sys_core|Equal0~6_combout\ & (\sys_core|Equal0~5_combout\ & (\sys_core|Equal0~10_combout\ & \sys_core|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|Equal0~6_combout\,
	datab => \sys_core|Equal0~5_combout\,
	datac => \sys_core|Equal0~10_combout\,
	datad => \sys_core|Equal0~4_combout\,
	combout => \sys_core|Equal0~11_combout\);

-- Location: LCCOMB_X47_Y26_N10
\sys_core|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|s_counter~7_combout\ = (\sys_core|Add2~10_combout\ & !\sys_core|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_core|Add2~10_combout\,
	datad => \sys_core|Equal0~11_combout\,
	combout => \sys_core|s_counter~7_combout\);

-- Location: FF_X48_Y27_N11
\sys_core|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \sys_core|s_counter~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(5));

-- Location: FF_X48_Y27_N13
\sys_core|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|s_counter\(6));

-- Location: LCCOMB_X47_Y27_N8
\sys_core|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~5_combout\ = (\sys_core|s_counter\(3) & (!\sys_core|s_counter\(6) & (!\sys_core|s_counter\(7) & !\sys_core|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(3),
	datab => \sys_core|s_counter\(6),
	datac => \sys_core|s_counter\(7),
	datad => \sys_core|s_counter\(5),
	combout => \sys_core|Equal0~5_combout\);

-- Location: LCCOMB_X47_Y26_N22
\sys_core|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|Equal0~7_combout\ = (\sys_core|Equal0~5_combout\ & (\sys_core|Equal0~6_combout\ & \sys_core|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|Equal0~5_combout\,
	datac => \sys_core|Equal0~6_combout\,
	datad => \sys_core|Equal0~4_combout\,
	combout => \sys_core|Equal0~7_combout\);

-- Location: LCCOMB_X47_Y26_N4
\sys_core|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|clkOut~0_combout\ = (!\sys_core|s_counter\(23) & (\sys_core|s_counter\(16) & (\sys_core|s_counter\(22) & !\sys_core|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(23),
	datab => \sys_core|s_counter\(16),
	datac => \sys_core|s_counter\(22),
	datad => \sys_core|s_counter\(21),
	combout => \sys_core|clkOut~0_combout\);

-- Location: LCCOMB_X47_Y26_N6
\sys_core|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|clkOut~1_combout\ = (!\sys_core|s_counter\(15) & (!\sys_core|s_counter\(13) & (\sys_core|s_counter\(14) & \sys_core|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|s_counter\(15),
	datab => \sys_core|s_counter\(13),
	datac => \sys_core|s_counter\(14),
	datad => \sys_core|s_counter\(9),
	combout => \sys_core|clkOut~1_combout\);

-- Location: LCCOMB_X47_Y26_N24
\sys_core|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|clkOut~2_combout\ = (!\sys_core|s_counter\(4) & (\sys_core|clkOut~0_combout\ & \sys_core|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_core|s_counter\(4),
	datac => \sys_core|clkOut~0_combout\,
	datad => \sys_core|clkOut~1_combout\,
	combout => \sys_core|clkOut~2_combout\);

-- Location: LCCOMB_X47_Y26_N8
\sys_core|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_core|clkOut~3_combout\ = (!\sys_core|Equal0~11_combout\ & ((\sys_core|clkOut~q\) # ((\sys_core|Equal0~7_combout\ & \sys_core|clkOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_core|Equal0~7_combout\,
	datab => \sys_core|clkOut~2_combout\,
	datac => \sys_core|clkOut~q\,
	datad => \sys_core|Equal0~11_combout\,
	combout => \sys_core|clkOut~3_combout\);

-- Location: FF_X47_Y26_N9
\sys_core|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_core|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_core|clkOut~q\);

ww_LEDR <= \LEDR~output_o\;
END structure;


