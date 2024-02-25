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

-- DATE "03/19/2023 20:27:33"

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

ENTITY 	FreqDividerTest IS
    PORT (
	clkOut : OUT std_logic;
	clkIn : IN std_logic;
	k : IN std_logic_vector(31 DOWNTO 0)
	);
END FreqDividerTest;

-- Design Ports Information
-- clkOut	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[0]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[4]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[9]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[10]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[12]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[14]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[15]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[16]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[17]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[18]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[19]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[20]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[21]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[22]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[23]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[24]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[25]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[26]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[27]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[28]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[29]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[30]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[31]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkIn	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDividerTest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkOut : std_logic;
SIGNAL ww_clkIn : std_logic;
SIGNAL ww_k : std_logic_vector(31 DOWNTO 0);
SIGNAL \clkIn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k[0]~input_o\ : std_logic;
SIGNAL \clkOut~output_o\ : std_logic;
SIGNAL \clkIn~input_o\ : std_logic;
SIGNAL \clkIn~inputclkctrl_outclk\ : std_logic;
SIGNAL \k[31]~input_o\ : std_logic;
SIGNAL \k[30]~input_o\ : std_logic;
SIGNAL \k[29]~input_o\ : std_logic;
SIGNAL \k[28]~input_o\ : std_logic;
SIGNAL \k[27]~input_o\ : std_logic;
SIGNAL \k[26]~input_o\ : std_logic;
SIGNAL \k[25]~input_o\ : std_logic;
SIGNAL \k[24]~input_o\ : std_logic;
SIGNAL \k[23]~input_o\ : std_logic;
SIGNAL \k[22]~input_o\ : std_logic;
SIGNAL \k[21]~input_o\ : std_logic;
SIGNAL \k[20]~input_o\ : std_logic;
SIGNAL \k[19]~input_o\ : std_logic;
SIGNAL \k[18]~input_o\ : std_logic;
SIGNAL \k[17]~input_o\ : std_logic;
SIGNAL \k[16]~input_o\ : std_logic;
SIGNAL \k[15]~input_o\ : std_logic;
SIGNAL \k[14]~input_o\ : std_logic;
SIGNAL \k[13]~input_o\ : std_logic;
SIGNAL \k[12]~input_o\ : std_logic;
SIGNAL \k[11]~input_o\ : std_logic;
SIGNAL \k[10]~input_o\ : std_logic;
SIGNAL \k[9]~input_o\ : std_logic;
SIGNAL \k[8]~input_o\ : std_logic;
SIGNAL \k[7]~input_o\ : std_logic;
SIGNAL \k[6]~input_o\ : std_logic;
SIGNAL \k[5]~input_o\ : std_logic;
SIGNAL \k[4]~input_o\ : std_logic;
SIGNAL \k[3]~input_o\ : std_logic;
SIGNAL \k[2]~input_o\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~19\ : std_logic;
SIGNAL \inst|Add1~21\ : std_logic;
SIGNAL \inst|Add1~23\ : std_logic;
SIGNAL \inst|Add1~25\ : std_logic;
SIGNAL \inst|Add1~27\ : std_logic;
SIGNAL \inst|Add1~29\ : std_logic;
SIGNAL \inst|Add1~31\ : std_logic;
SIGNAL \inst|Add1~33\ : std_logic;
SIGNAL \inst|Add1~35\ : std_logic;
SIGNAL \inst|Add1~37\ : std_logic;
SIGNAL \inst|Add1~39\ : std_logic;
SIGNAL \inst|Add1~41\ : std_logic;
SIGNAL \inst|Add1~43\ : std_logic;
SIGNAL \inst|Add1~45\ : std_logic;
SIGNAL \inst|Add1~47\ : std_logic;
SIGNAL \inst|Add1~49\ : std_logic;
SIGNAL \inst|Add1~51\ : std_logic;
SIGNAL \inst|Add1~53\ : std_logic;
SIGNAL \inst|Add1~55\ : std_logic;
SIGNAL \inst|Add1~57\ : std_logic;
SIGNAL \inst|Add1~59\ : std_logic;
SIGNAL \inst|Add1~61\ : std_logic;
SIGNAL \inst|Add1~62_combout\ : std_logic;
SIGNAL \inst|Add1~60_combout\ : std_logic;
SIGNAL \inst|s_counter[0]~32_combout\ : std_logic;
SIGNAL \k[1]~input_o\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Equal0~11_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Equal0~12_combout\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Equal0~10_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Equal0~13_combout\ : std_logic;
SIGNAL \inst|Equal0~14_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~51\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|Add0~53\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|Equal0~16_combout\ : std_logic;
SIGNAL \inst|Add0~55\ : std_logic;
SIGNAL \inst|Add0~57\ : std_logic;
SIGNAL \inst|Add0~59\ : std_logic;
SIGNAL \inst|Add0~61\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|Equal0~18_combout\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|Equal0~17_combout\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|Equal0~15_combout\ : std_logic;
SIGNAL \inst|Equal0~19_combout\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Equal0~20_combout\ : std_logic;
SIGNAL \inst|s_counter[0]~33\ : std_logic;
SIGNAL \inst|s_counter[1]~34_combout\ : std_logic;
SIGNAL \inst|s_counter[1]~35\ : std_logic;
SIGNAL \inst|s_counter[2]~36_combout\ : std_logic;
SIGNAL \inst|s_counter[2]~37\ : std_logic;
SIGNAL \inst|s_counter[3]~38_combout\ : std_logic;
SIGNAL \inst|s_counter[3]~39\ : std_logic;
SIGNAL \inst|s_counter[4]~40_combout\ : std_logic;
SIGNAL \inst|s_counter[4]~41\ : std_logic;
SIGNAL \inst|s_counter[5]~42_combout\ : std_logic;
SIGNAL \inst|s_counter[5]~43\ : std_logic;
SIGNAL \inst|s_counter[6]~44_combout\ : std_logic;
SIGNAL \inst|s_counter[6]~45\ : std_logic;
SIGNAL \inst|s_counter[7]~46_combout\ : std_logic;
SIGNAL \inst|s_counter[7]~47\ : std_logic;
SIGNAL \inst|s_counter[8]~48_combout\ : std_logic;
SIGNAL \inst|s_counter[8]~49\ : std_logic;
SIGNAL \inst|s_counter[9]~50_combout\ : std_logic;
SIGNAL \inst|s_counter[9]~51\ : std_logic;
SIGNAL \inst|s_counter[10]~52_combout\ : std_logic;
SIGNAL \inst|s_counter[10]~53\ : std_logic;
SIGNAL \inst|s_counter[11]~54_combout\ : std_logic;
SIGNAL \inst|s_counter[11]~55\ : std_logic;
SIGNAL \inst|s_counter[12]~56_combout\ : std_logic;
SIGNAL \inst|s_counter[12]~57\ : std_logic;
SIGNAL \inst|s_counter[13]~58_combout\ : std_logic;
SIGNAL \inst|s_counter[13]~59\ : std_logic;
SIGNAL \inst|s_counter[14]~60_combout\ : std_logic;
SIGNAL \inst|s_counter[14]~61\ : std_logic;
SIGNAL \inst|s_counter[15]~62_combout\ : std_logic;
SIGNAL \inst|s_counter[15]~63\ : std_logic;
SIGNAL \inst|s_counter[16]~64_combout\ : std_logic;
SIGNAL \inst|s_counter[16]~65\ : std_logic;
SIGNAL \inst|s_counter[17]~66_combout\ : std_logic;
SIGNAL \inst|s_counter[17]~67\ : std_logic;
SIGNAL \inst|s_counter[18]~68_combout\ : std_logic;
SIGNAL \inst|s_counter[18]~69\ : std_logic;
SIGNAL \inst|s_counter[19]~70_combout\ : std_logic;
SIGNAL \inst|s_counter[19]~71\ : std_logic;
SIGNAL \inst|s_counter[20]~72_combout\ : std_logic;
SIGNAL \inst|s_counter[20]~73\ : std_logic;
SIGNAL \inst|s_counter[21]~74_combout\ : std_logic;
SIGNAL \inst|s_counter[21]~75\ : std_logic;
SIGNAL \inst|s_counter[22]~76_combout\ : std_logic;
SIGNAL \inst|s_counter[22]~77\ : std_logic;
SIGNAL \inst|s_counter[23]~78_combout\ : std_logic;
SIGNAL \inst|s_counter[23]~79\ : std_logic;
SIGNAL \inst|s_counter[24]~80_combout\ : std_logic;
SIGNAL \inst|s_counter[24]~81\ : std_logic;
SIGNAL \inst|s_counter[25]~82_combout\ : std_logic;
SIGNAL \inst|s_counter[25]~83\ : std_logic;
SIGNAL \inst|s_counter[26]~84_combout\ : std_logic;
SIGNAL \inst|s_counter[26]~85\ : std_logic;
SIGNAL \inst|s_counter[27]~86_combout\ : std_logic;
SIGNAL \inst|s_counter[27]~87\ : std_logic;
SIGNAL \inst|s_counter[28]~88_combout\ : std_logic;
SIGNAL \inst|s_counter[28]~89\ : std_logic;
SIGNAL \inst|s_counter[29]~90_combout\ : std_logic;
SIGNAL \inst|s_counter[29]~91\ : std_logic;
SIGNAL \inst|s_counter[30]~92_combout\ : std_logic;
SIGNAL \inst|s_counter[30]~93\ : std_logic;
SIGNAL \inst|s_counter[31]~94_combout\ : std_logic;
SIGNAL \inst|clkOut~18_combout\ : std_logic;
SIGNAL \inst|Add1~52_combout\ : std_logic;
SIGNAL \inst|Add1~54_combout\ : std_logic;
SIGNAL \inst|clkOut~16_combout\ : std_logic;
SIGNAL \inst|Add1~56_combout\ : std_logic;
SIGNAL \inst|Add1~58_combout\ : std_logic;
SIGNAL \inst|clkOut~17_combout\ : std_logic;
SIGNAL \inst|Add1~50_combout\ : std_logic;
SIGNAL \inst|Add1~48_combout\ : std_logic;
SIGNAL \inst|clkOut~15_combout\ : std_logic;
SIGNAL \inst|clkOut~19_combout\ : std_logic;
SIGNAL \inst|Add1~46_combout\ : std_logic;
SIGNAL \inst|Add1~44_combout\ : std_logic;
SIGNAL \inst|clkOut~13_combout\ : std_logic;
SIGNAL \inst|Add1~32_combout\ : std_logic;
SIGNAL \inst|Add1~34_combout\ : std_logic;
SIGNAL \inst|clkOut~10_combout\ : std_logic;
SIGNAL \inst|Add1~38_combout\ : std_logic;
SIGNAL \inst|Add1~36_combout\ : std_logic;
SIGNAL \inst|clkOut~11_combout\ : std_logic;
SIGNAL \inst|Add1~42_combout\ : std_logic;
SIGNAL \inst|Add1~40_combout\ : std_logic;
SIGNAL \inst|clkOut~12_combout\ : std_logic;
SIGNAL \inst|clkOut~14_combout\ : std_logic;
SIGNAL \inst|Add1~24_combout\ : std_logic;
SIGNAL \inst|Add1~26_combout\ : std_logic;
SIGNAL \inst|clkOut~7_combout\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|clkOut~5_combout\ : std_logic;
SIGNAL \inst|Add1~30_combout\ : std_logic;
SIGNAL \inst|Add1~28_combout\ : std_logic;
SIGNAL \inst|clkOut~8_combout\ : std_logic;
SIGNAL \inst|Add1~20_combout\ : std_logic;
SIGNAL \inst|Add1~22_combout\ : std_logic;
SIGNAL \inst|clkOut~6_combout\ : std_logic;
SIGNAL \inst|clkOut~9_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|clkOut~2_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|clkOut~0_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|clkOut~1_combout\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|clkOut~3_combout\ : std_logic;
SIGNAL \inst|clkOut~4_combout\ : std_logic;
SIGNAL \inst|clkOut~20_combout\ : std_logic;
SIGNAL \inst|clkOut~21_combout\ : std_logic;
SIGNAL \inst|clkOut~q\ : std_logic;
SIGNAL \inst|s_counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

clkOut <= ww_clkOut;
ww_clkIn <= clkIn;
ww_k <= k;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkIn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkIn~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y73_N9
\clkOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clkOut~q\,
	devoe => ww_devoe,
	o => \clkOut~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clkIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkIn,
	o => \clkIn~input_o\);

-- Location: CLKCTRL_G2
\clkIn~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkIn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkIn~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y73_N8
\k[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(31),
	o => \k[31]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\k[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(30),
	o => \k[30]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\k[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(29),
	o => \k[29]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\k[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(28),
	o => \k[28]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\k[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(27),
	o => \k[27]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\k[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(26),
	o => \k[26]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\k[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(25),
	o => \k[25]~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\k[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(24),
	o => \k[24]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\k[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(23),
	o => \k[23]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\k[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(22),
	o => \k[22]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\k[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(21),
	o => \k[21]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\k[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(20),
	o => \k[20]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\k[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(19),
	o => \k[19]~input_o\);

-- Location: IOIBUF_X11_Y73_N8
\k[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(18),
	o => \k[18]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\k[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(17),
	o => \k[17]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\k[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(16),
	o => \k[16]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\k[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(15),
	o => \k[15]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\k[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(14),
	o => \k[14]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\k[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(13),
	o => \k[13]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\k[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(12),
	o => \k[12]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\k[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(11),
	o => \k[11]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\k[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(10),
	o => \k[10]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\k[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(9),
	o => \k[9]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\k[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(8),
	o => \k[8]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\k[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(7),
	o => \k[7]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\k[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(6),
	o => \k[6]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\k[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(5),
	o => \k[5]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\k[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(4),
	o => \k[4]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\k[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(3),
	o => \k[3]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\k[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(2),
	o => \k[2]~input_o\);

-- Location: LCCOMB_X23_Y72_N0
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \k[2]~input_o\ $ (VCC)
-- \inst|Add1~1\ = CARRY(\k[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X23_Y72_N2
\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\k[3]~input_o\ & (\inst|Add1~1\ & VCC)) # (!\k[3]~input_o\ & (!\inst|Add1~1\))
-- \inst|Add1~3\ = CARRY((!\k[3]~input_o\ & !\inst|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[3]~input_o\,
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X23_Y72_N4
\inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\k[4]~input_o\ & ((GND) # (!\inst|Add1~3\))) # (!\k[4]~input_o\ & (\inst|Add1~3\ $ (GND)))
-- \inst|Add1~5\ = CARRY((\k[4]~input_o\) # (!\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[4]~input_o\,
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X23_Y72_N6
\inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\k[5]~input_o\ & (\inst|Add1~5\ & VCC)) # (!\k[5]~input_o\ & (!\inst|Add1~5\))
-- \inst|Add1~7\ = CARRY((!\k[5]~input_o\ & !\inst|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[5]~input_o\,
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X23_Y72_N8
\inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\k[6]~input_o\ & ((GND) # (!\inst|Add1~7\))) # (!\k[6]~input_o\ & (\inst|Add1~7\ $ (GND)))
-- \inst|Add1~9\ = CARRY((\k[6]~input_o\) # (!\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[6]~input_o\,
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X23_Y72_N10
\inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\k[7]~input_o\ & (\inst|Add1~9\ & VCC)) # (!\k[7]~input_o\ & (!\inst|Add1~9\))
-- \inst|Add1~11\ = CARRY((!\k[7]~input_o\ & !\inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[7]~input_o\,
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X23_Y72_N12
\inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\k[8]~input_o\ & ((GND) # (!\inst|Add1~11\))) # (!\k[8]~input_o\ & (\inst|Add1~11\ $ (GND)))
-- \inst|Add1~13\ = CARRY((\k[8]~input_o\) # (!\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[8]~input_o\,
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X23_Y72_N14
\inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\k[9]~input_o\ & (\inst|Add1~13\ & VCC)) # (!\k[9]~input_o\ & (!\inst|Add1~13\))
-- \inst|Add1~15\ = CARRY((!\k[9]~input_o\ & !\inst|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[9]~input_o\,
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X23_Y72_N16
\inst|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = (\k[10]~input_o\ & ((GND) # (!\inst|Add1~15\))) # (!\k[10]~input_o\ & (\inst|Add1~15\ $ (GND)))
-- \inst|Add1~17\ = CARRY((\k[10]~input_o\) # (!\inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[10]~input_o\,
	datad => VCC,
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\,
	cout => \inst|Add1~17\);

-- Location: LCCOMB_X23_Y72_N18
\inst|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = (\k[11]~input_o\ & (\inst|Add1~17\ & VCC)) # (!\k[11]~input_o\ & (!\inst|Add1~17\))
-- \inst|Add1~19\ = CARRY((!\k[11]~input_o\ & !\inst|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[11]~input_o\,
	datad => VCC,
	cin => \inst|Add1~17\,
	combout => \inst|Add1~18_combout\,
	cout => \inst|Add1~19\);

-- Location: LCCOMB_X23_Y72_N20
\inst|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~20_combout\ = (\k[12]~input_o\ & ((GND) # (!\inst|Add1~19\))) # (!\k[12]~input_o\ & (\inst|Add1~19\ $ (GND)))
-- \inst|Add1~21\ = CARRY((\k[12]~input_o\) # (!\inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[12]~input_o\,
	datad => VCC,
	cin => \inst|Add1~19\,
	combout => \inst|Add1~20_combout\,
	cout => \inst|Add1~21\);

-- Location: LCCOMB_X23_Y72_N22
\inst|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~22_combout\ = (\k[13]~input_o\ & (\inst|Add1~21\ & VCC)) # (!\k[13]~input_o\ & (!\inst|Add1~21\))
-- \inst|Add1~23\ = CARRY((!\k[13]~input_o\ & !\inst|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[13]~input_o\,
	datad => VCC,
	cin => \inst|Add1~21\,
	combout => \inst|Add1~22_combout\,
	cout => \inst|Add1~23\);

-- Location: LCCOMB_X23_Y72_N24
\inst|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~24_combout\ = (\k[14]~input_o\ & ((GND) # (!\inst|Add1~23\))) # (!\k[14]~input_o\ & (\inst|Add1~23\ $ (GND)))
-- \inst|Add1~25\ = CARRY((\k[14]~input_o\) # (!\inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[14]~input_o\,
	datad => VCC,
	cin => \inst|Add1~23\,
	combout => \inst|Add1~24_combout\,
	cout => \inst|Add1~25\);

-- Location: LCCOMB_X23_Y72_N26
\inst|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~26_combout\ = (\k[15]~input_o\ & (\inst|Add1~25\ & VCC)) # (!\k[15]~input_o\ & (!\inst|Add1~25\))
-- \inst|Add1~27\ = CARRY((!\k[15]~input_o\ & !\inst|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[15]~input_o\,
	datad => VCC,
	cin => \inst|Add1~25\,
	combout => \inst|Add1~26_combout\,
	cout => \inst|Add1~27\);

-- Location: LCCOMB_X23_Y72_N28
\inst|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~28_combout\ = (\k[16]~input_o\ & ((GND) # (!\inst|Add1~27\))) # (!\k[16]~input_o\ & (\inst|Add1~27\ $ (GND)))
-- \inst|Add1~29\ = CARRY((\k[16]~input_o\) # (!\inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[16]~input_o\,
	datad => VCC,
	cin => \inst|Add1~27\,
	combout => \inst|Add1~28_combout\,
	cout => \inst|Add1~29\);

-- Location: LCCOMB_X23_Y72_N30
\inst|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~30_combout\ = (\k[17]~input_o\ & (\inst|Add1~29\ & VCC)) # (!\k[17]~input_o\ & (!\inst|Add1~29\))
-- \inst|Add1~31\ = CARRY((!\k[17]~input_o\ & !\inst|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[17]~input_o\,
	datad => VCC,
	cin => \inst|Add1~29\,
	combout => \inst|Add1~30_combout\,
	cout => \inst|Add1~31\);

-- Location: LCCOMB_X23_Y71_N0
\inst|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~32_combout\ = (\k[18]~input_o\ & ((GND) # (!\inst|Add1~31\))) # (!\k[18]~input_o\ & (\inst|Add1~31\ $ (GND)))
-- \inst|Add1~33\ = CARRY((\k[18]~input_o\) # (!\inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[18]~input_o\,
	datad => VCC,
	cin => \inst|Add1~31\,
	combout => \inst|Add1~32_combout\,
	cout => \inst|Add1~33\);

-- Location: LCCOMB_X23_Y71_N2
\inst|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~34_combout\ = (\k[19]~input_o\ & (\inst|Add1~33\ & VCC)) # (!\k[19]~input_o\ & (!\inst|Add1~33\))
-- \inst|Add1~35\ = CARRY((!\k[19]~input_o\ & !\inst|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[19]~input_o\,
	datad => VCC,
	cin => \inst|Add1~33\,
	combout => \inst|Add1~34_combout\,
	cout => \inst|Add1~35\);

-- Location: LCCOMB_X23_Y71_N4
\inst|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~36_combout\ = (\k[20]~input_o\ & ((GND) # (!\inst|Add1~35\))) # (!\k[20]~input_o\ & (\inst|Add1~35\ $ (GND)))
-- \inst|Add1~37\ = CARRY((\k[20]~input_o\) # (!\inst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[20]~input_o\,
	datad => VCC,
	cin => \inst|Add1~35\,
	combout => \inst|Add1~36_combout\,
	cout => \inst|Add1~37\);

-- Location: LCCOMB_X23_Y71_N6
\inst|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~38_combout\ = (\k[21]~input_o\ & (\inst|Add1~37\ & VCC)) # (!\k[21]~input_o\ & (!\inst|Add1~37\))
-- \inst|Add1~39\ = CARRY((!\k[21]~input_o\ & !\inst|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[21]~input_o\,
	datad => VCC,
	cin => \inst|Add1~37\,
	combout => \inst|Add1~38_combout\,
	cout => \inst|Add1~39\);

-- Location: LCCOMB_X23_Y71_N8
\inst|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~40_combout\ = (\k[22]~input_o\ & ((GND) # (!\inst|Add1~39\))) # (!\k[22]~input_o\ & (\inst|Add1~39\ $ (GND)))
-- \inst|Add1~41\ = CARRY((\k[22]~input_o\) # (!\inst|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[22]~input_o\,
	datad => VCC,
	cin => \inst|Add1~39\,
	combout => \inst|Add1~40_combout\,
	cout => \inst|Add1~41\);

-- Location: LCCOMB_X23_Y71_N10
\inst|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~42_combout\ = (\k[23]~input_o\ & (\inst|Add1~41\ & VCC)) # (!\k[23]~input_o\ & (!\inst|Add1~41\))
-- \inst|Add1~43\ = CARRY((!\k[23]~input_o\ & !\inst|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[23]~input_o\,
	datad => VCC,
	cin => \inst|Add1~41\,
	combout => \inst|Add1~42_combout\,
	cout => \inst|Add1~43\);

-- Location: LCCOMB_X23_Y71_N12
\inst|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~44_combout\ = (\k[24]~input_o\ & ((GND) # (!\inst|Add1~43\))) # (!\k[24]~input_o\ & (\inst|Add1~43\ $ (GND)))
-- \inst|Add1~45\ = CARRY((\k[24]~input_o\) # (!\inst|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[24]~input_o\,
	datad => VCC,
	cin => \inst|Add1~43\,
	combout => \inst|Add1~44_combout\,
	cout => \inst|Add1~45\);

-- Location: LCCOMB_X23_Y71_N14
\inst|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~46_combout\ = (\k[25]~input_o\ & (\inst|Add1~45\ & VCC)) # (!\k[25]~input_o\ & (!\inst|Add1~45\))
-- \inst|Add1~47\ = CARRY((!\k[25]~input_o\ & !\inst|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[25]~input_o\,
	datad => VCC,
	cin => \inst|Add1~45\,
	combout => \inst|Add1~46_combout\,
	cout => \inst|Add1~47\);

-- Location: LCCOMB_X23_Y71_N16
\inst|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~48_combout\ = (\k[26]~input_o\ & ((GND) # (!\inst|Add1~47\))) # (!\k[26]~input_o\ & (\inst|Add1~47\ $ (GND)))
-- \inst|Add1~49\ = CARRY((\k[26]~input_o\) # (!\inst|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[26]~input_o\,
	datad => VCC,
	cin => \inst|Add1~47\,
	combout => \inst|Add1~48_combout\,
	cout => \inst|Add1~49\);

-- Location: LCCOMB_X23_Y71_N18
\inst|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~50_combout\ = (\k[27]~input_o\ & (\inst|Add1~49\ & VCC)) # (!\k[27]~input_o\ & (!\inst|Add1~49\))
-- \inst|Add1~51\ = CARRY((!\k[27]~input_o\ & !\inst|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[27]~input_o\,
	datad => VCC,
	cin => \inst|Add1~49\,
	combout => \inst|Add1~50_combout\,
	cout => \inst|Add1~51\);

-- Location: LCCOMB_X23_Y71_N20
\inst|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~52_combout\ = (\k[28]~input_o\ & ((GND) # (!\inst|Add1~51\))) # (!\k[28]~input_o\ & (\inst|Add1~51\ $ (GND)))
-- \inst|Add1~53\ = CARRY((\k[28]~input_o\) # (!\inst|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[28]~input_o\,
	datad => VCC,
	cin => \inst|Add1~51\,
	combout => \inst|Add1~52_combout\,
	cout => \inst|Add1~53\);

-- Location: LCCOMB_X23_Y71_N22
\inst|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~54_combout\ = (\k[29]~input_o\ & (\inst|Add1~53\ & VCC)) # (!\k[29]~input_o\ & (!\inst|Add1~53\))
-- \inst|Add1~55\ = CARRY((!\k[29]~input_o\ & !\inst|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[29]~input_o\,
	datad => VCC,
	cin => \inst|Add1~53\,
	combout => \inst|Add1~54_combout\,
	cout => \inst|Add1~55\);

-- Location: LCCOMB_X23_Y71_N24
\inst|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~56_combout\ = (\k[30]~input_o\ & ((GND) # (!\inst|Add1~55\))) # (!\k[30]~input_o\ & (\inst|Add1~55\ $ (GND)))
-- \inst|Add1~57\ = CARRY((\k[30]~input_o\) # (!\inst|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[30]~input_o\,
	datad => VCC,
	cin => \inst|Add1~55\,
	combout => \inst|Add1~56_combout\,
	cout => \inst|Add1~57\);

-- Location: LCCOMB_X23_Y71_N26
\inst|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~58_combout\ = (\k[31]~input_o\ & (\inst|Add1~57\ & VCC)) # (!\k[31]~input_o\ & (!\inst|Add1~57\))
-- \inst|Add1~59\ = CARRY((!\k[31]~input_o\ & !\inst|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[31]~input_o\,
	datad => VCC,
	cin => \inst|Add1~57\,
	combout => \inst|Add1~58_combout\,
	cout => \inst|Add1~59\);

-- Location: LCCOMB_X23_Y71_N28
\inst|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~60_combout\ = \inst|Add1~59\ $ (GND)
-- \inst|Add1~61\ = CARRY(!\inst|Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|Add1~59\,
	combout => \inst|Add1~60_combout\,
	cout => \inst|Add1~61\);

-- Location: LCCOMB_X23_Y71_N30
\inst|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~62_combout\ = !\inst|Add1~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add1~61\,
	combout => \inst|Add1~62_combout\);

-- Location: LCCOMB_X24_Y69_N0
\inst|s_counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[0]~32_combout\ = \inst|s_counter\(0) $ (VCC)
-- \inst|s_counter[0]~33\ = CARRY(\inst|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(0),
	datad => VCC,
	combout => \inst|s_counter[0]~32_combout\,
	cout => \inst|s_counter[0]~33\);

-- Location: IOIBUF_X25_Y73_N15
\k[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(1),
	o => \k[1]~input_o\);

-- Location: LCCOMB_X25_Y72_N0
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \k[1]~input_o\ $ (VCC)
-- \inst|Add0~1\ = CARRY(\k[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[1]~input_o\,
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X25_Y72_N2
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\k[2]~input_o\ & (\inst|Add0~1\ & VCC)) # (!\k[2]~input_o\ & (!\inst|Add0~1\))
-- \inst|Add0~3\ = CARRY((!\k[2]~input_o\ & !\inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[2]~input_o\,
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X25_Y72_N4
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\k[3]~input_o\ & ((GND) # (!\inst|Add0~3\))) # (!\k[3]~input_o\ & (\inst|Add0~3\ $ (GND)))
-- \inst|Add0~5\ = CARRY((\k[3]~input_o\) # (!\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[3]~input_o\,
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X25_Y72_N6
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\k[4]~input_o\ & (\inst|Add0~5\ & VCC)) # (!\k[4]~input_o\ & (!\inst|Add0~5\))
-- \inst|Add0~7\ = CARRY((!\k[4]~input_o\ & !\inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[4]~input_o\,
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X25_Y72_N8
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\k[5]~input_o\ & ((GND) # (!\inst|Add0~7\))) # (!\k[5]~input_o\ & (\inst|Add0~7\ $ (GND)))
-- \inst|Add0~9\ = CARRY((\k[5]~input_o\) # (!\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[5]~input_o\,
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X25_Y72_N10
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\k[6]~input_o\ & (\inst|Add0~9\ & VCC)) # (!\k[6]~input_o\ & (!\inst|Add0~9\))
-- \inst|Add0~11\ = CARRY((!\k[6]~input_o\ & !\inst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[6]~input_o\,
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X25_Y72_N12
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\k[7]~input_o\ & ((GND) # (!\inst|Add0~11\))) # (!\k[7]~input_o\ & (\inst|Add0~11\ $ (GND)))
-- \inst|Add0~13\ = CARRY((\k[7]~input_o\) # (!\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[7]~input_o\,
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X25_Y72_N14
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\k[8]~input_o\ & (\inst|Add0~13\ & VCC)) # (!\k[8]~input_o\ & (!\inst|Add0~13\))
-- \inst|Add0~15\ = CARRY((!\k[8]~input_o\ & !\inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[8]~input_o\,
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X25_Y72_N16
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\k[9]~input_o\ & ((GND) # (!\inst|Add0~15\))) # (!\k[9]~input_o\ & (\inst|Add0~15\ $ (GND)))
-- \inst|Add0~17\ = CARRY((\k[9]~input_o\) # (!\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[9]~input_o\,
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X25_Y72_N18
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\k[10]~input_o\ & (\inst|Add0~17\ & VCC)) # (!\k[10]~input_o\ & (!\inst|Add0~17\))
-- \inst|Add0~19\ = CARRY((!\k[10]~input_o\ & !\inst|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[10]~input_o\,
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X25_Y72_N20
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\k[11]~input_o\ & ((GND) # (!\inst|Add0~19\))) # (!\k[11]~input_o\ & (\inst|Add0~19\ $ (GND)))
-- \inst|Add0~21\ = CARRY((\k[11]~input_o\) # (!\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[11]~input_o\,
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X25_Y72_N22
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\k[12]~input_o\ & (\inst|Add0~21\ & VCC)) # (!\k[12]~input_o\ & (!\inst|Add0~21\))
-- \inst|Add0~23\ = CARRY((!\k[12]~input_o\ & !\inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[12]~input_o\,
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X25_Y72_N24
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\k[13]~input_o\ & ((GND) # (!\inst|Add0~23\))) # (!\k[13]~input_o\ & (\inst|Add0~23\ $ (GND)))
-- \inst|Add0~25\ = CARRY((\k[13]~input_o\) # (!\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[13]~input_o\,
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X25_Y72_N26
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\k[14]~input_o\ & (\inst|Add0~25\ & VCC)) # (!\k[14]~input_o\ & (!\inst|Add0~25\))
-- \inst|Add0~27\ = CARRY((!\k[14]~input_o\ & !\inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[14]~input_o\,
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X25_Y72_N28
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\k[15]~input_o\ & ((GND) # (!\inst|Add0~27\))) # (!\k[15]~input_o\ & (\inst|Add0~27\ $ (GND)))
-- \inst|Add0~29\ = CARRY((\k[15]~input_o\) # (!\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[15]~input_o\,
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X25_Y72_N30
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\k[16]~input_o\ & (\inst|Add0~29\ & VCC)) # (!\k[16]~input_o\ & (!\inst|Add0~29\))
-- \inst|Add0~31\ = CARRY((!\k[16]~input_o\ & !\inst|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[16]~input_o\,
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X25_Y71_N0
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\k[17]~input_o\ & ((GND) # (!\inst|Add0~31\))) # (!\k[17]~input_o\ & (\inst|Add0~31\ $ (GND)))
-- \inst|Add0~33\ = CARRY((\k[17]~input_o\) # (!\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[17]~input_o\,
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X25_Y71_N2
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\k[18]~input_o\ & (\inst|Add0~33\ & VCC)) # (!\k[18]~input_o\ & (!\inst|Add0~33\))
-- \inst|Add0~35\ = CARRY((!\k[18]~input_o\ & !\inst|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[18]~input_o\,
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X25_Y71_N4
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\k[19]~input_o\ & ((GND) # (!\inst|Add0~35\))) # (!\k[19]~input_o\ & (\inst|Add0~35\ $ (GND)))
-- \inst|Add0~37\ = CARRY((\k[19]~input_o\) # (!\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[19]~input_o\,
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X25_Y71_N6
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\k[20]~input_o\ & (\inst|Add0~37\ & VCC)) # (!\k[20]~input_o\ & (!\inst|Add0~37\))
-- \inst|Add0~39\ = CARRY((!\k[20]~input_o\ & !\inst|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[20]~input_o\,
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X25_Y68_N22
\inst|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~11_combout\ = (\inst|Add0~36_combout\ & (\inst|s_counter\(18) & (\inst|Add0~38_combout\ $ (!\inst|s_counter\(19))))) # (!\inst|Add0~36_combout\ & (!\inst|s_counter\(18) & (\inst|Add0~38_combout\ $ (!\inst|s_counter\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~36_combout\,
	datab => \inst|Add0~38_combout\,
	datac => \inst|s_counter\(18),
	datad => \inst|s_counter\(19),
	combout => \inst|Equal0~11_combout\);

-- Location: LCCOMB_X25_Y71_N8
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\k[21]~input_o\ & ((GND) # (!\inst|Add0~39\))) # (!\k[21]~input_o\ & (\inst|Add0~39\ $ (GND)))
-- \inst|Add0~41\ = CARRY((\k[21]~input_o\) # (!\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[21]~input_o\,
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X25_Y71_N10
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\k[22]~input_o\ & (\inst|Add0~41\ & VCC)) # (!\k[22]~input_o\ & (!\inst|Add0~41\))
-- \inst|Add0~43\ = CARRY((!\k[22]~input_o\ & !\inst|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[22]~input_o\,
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X25_Y68_N20
\inst|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~12_combout\ = (\inst|Add0~40_combout\ & (\inst|s_counter\(20) & (\inst|Add0~42_combout\ $ (!\inst|s_counter\(21))))) # (!\inst|Add0~40_combout\ & (!\inst|s_counter\(20) & (\inst|Add0~42_combout\ $ (!\inst|s_counter\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~40_combout\,
	datab => \inst|Add0~42_combout\,
	datac => \inst|s_counter\(21),
	datad => \inst|s_counter\(20),
	combout => \inst|Equal0~12_combout\);

-- Location: LCCOMB_X26_Y68_N12
\inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~10_combout\ = (\inst|Add0~32_combout\ & (\inst|s_counter\(16) & (\inst|Add0~34_combout\ $ (!\inst|s_counter\(17))))) # (!\inst|Add0~32_combout\ & (!\inst|s_counter\(16) & (\inst|Add0~34_combout\ $ (!\inst|s_counter\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~32_combout\,
	datab => \inst|Add0~34_combout\,
	datac => \inst|s_counter\(17),
	datad => \inst|s_counter\(16),
	combout => \inst|Equal0~10_combout\);

-- Location: LCCOMB_X25_Y71_N12
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\k[23]~input_o\ & ((GND) # (!\inst|Add0~43\))) # (!\k[23]~input_o\ & (\inst|Add0~43\ $ (GND)))
-- \inst|Add0~45\ = CARRY((\k[23]~input_o\) # (!\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[23]~input_o\,
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X25_Y71_N14
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\k[24]~input_o\ & (\inst|Add0~45\ & VCC)) # (!\k[24]~input_o\ & (!\inst|Add0~45\))
-- \inst|Add0~47\ = CARRY((!\k[24]~input_o\ & !\inst|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[24]~input_o\,
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X26_Y68_N22
\inst|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~13_combout\ = (\inst|Add0~46_combout\ & (\inst|s_counter\(23) & (\inst|Add0~44_combout\ $ (!\inst|s_counter\(22))))) # (!\inst|Add0~46_combout\ & (!\inst|s_counter\(23) & (\inst|Add0~44_combout\ $ (!\inst|s_counter\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~46_combout\,
	datab => \inst|Add0~44_combout\,
	datac => \inst|s_counter\(22),
	datad => \inst|s_counter\(23),
	combout => \inst|Equal0~13_combout\);

-- Location: LCCOMB_X25_Y68_N10
\inst|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~14_combout\ = (\inst|Equal0~11_combout\ & (\inst|Equal0~12_combout\ & (\inst|Equal0~10_combout\ & \inst|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~11_combout\,
	datab => \inst|Equal0~12_combout\,
	datac => \inst|Equal0~10_combout\,
	datad => \inst|Equal0~13_combout\,
	combout => \inst|Equal0~14_combout\);

-- Location: LCCOMB_X25_Y69_N30
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|s_counter\(6) & (\inst|Add0~12_combout\ & (\inst|Add0~14_combout\ $ (!\inst|s_counter\(7))))) # (!\inst|s_counter\(6) & (!\inst|Add0~12_combout\ & (\inst|Add0~14_combout\ $ (!\inst|s_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(6),
	datab => \inst|Add0~12_combout\,
	datac => \inst|Add0~14_combout\,
	datad => \inst|s_counter\(7),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y69_N28
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|Add0~6_combout\ & (\inst|s_counter\(3) & (\inst|Add0~4_combout\ $ (!\inst|s_counter\(2))))) # (!\inst|Add0~6_combout\ & (!\inst|s_counter\(3) & (\inst|Add0~4_combout\ $ (!\inst|s_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datab => \inst|Add0~4_combout\,
	datac => \inst|s_counter\(3),
	datad => \inst|s_counter\(2),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y68_N30
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Add0~10_combout\ & (\inst|s_counter\(5) & (\inst|Add0~8_combout\ $ (!\inst|s_counter\(4))))) # (!\inst|Add0~10_combout\ & (!\inst|s_counter\(5) & (\inst|Add0~8_combout\ $ (!\inst|s_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datab => \inst|Add0~8_combout\,
	datac => \inst|s_counter\(4),
	datad => \inst|s_counter\(5),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y68_N28
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|Add0~2_combout\ & (\inst|s_counter\(1) & (\inst|Add0~0_combout\ $ (!\inst|s_counter\(0))))) # (!\inst|Add0~2_combout\ & (!\inst|s_counter\(1) & (\inst|Add0~0_combout\ $ (!\inst|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|Add0~0_combout\,
	datac => \inst|s_counter\(0),
	datad => \inst|s_counter\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y68_N16
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~3_combout\ & (\inst|Equal0~1_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y71_N16
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\k[25]~input_o\ & ((GND) # (!\inst|Add0~47\))) # (!\k[25]~input_o\ & (\inst|Add0~47\ $ (GND)))
-- \inst|Add0~49\ = CARRY((\k[25]~input_o\) # (!\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[25]~input_o\,
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X25_Y71_N18
\inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\k[26]~input_o\ & (\inst|Add0~49\ & VCC)) # (!\k[26]~input_o\ & (!\inst|Add0~49\))
-- \inst|Add0~51\ = CARRY((!\k[26]~input_o\ & !\inst|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[26]~input_o\,
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: LCCOMB_X25_Y71_N20
\inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\k[27]~input_o\ & ((GND) # (!\inst|Add0~51\))) # (!\k[27]~input_o\ & (\inst|Add0~51\ $ (GND)))
-- \inst|Add0~53\ = CARRY((\k[27]~input_o\) # (!\inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[27]~input_o\,
	datad => VCC,
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: LCCOMB_X25_Y71_N22
\inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\k[28]~input_o\ & (\inst|Add0~53\ & VCC)) # (!\k[28]~input_o\ & (!\inst|Add0~53\))
-- \inst|Add0~55\ = CARRY((!\k[28]~input_o\ & !\inst|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[28]~input_o\,
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: LCCOMB_X23_Y68_N28
\inst|Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~16_combout\ = (\inst|Add0~52_combout\ & (\inst|s_counter\(26) & (\inst|Add0~54_combout\ $ (!\inst|s_counter\(27))))) # (!\inst|Add0~52_combout\ & (!\inst|s_counter\(26) & (\inst|Add0~54_combout\ $ (!\inst|s_counter\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~52_combout\,
	datab => \inst|Add0~54_combout\,
	datac => \inst|s_counter\(26),
	datad => \inst|s_counter\(27),
	combout => \inst|Equal0~16_combout\);

-- Location: LCCOMB_X25_Y71_N24
\inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (\k[29]~input_o\ & ((GND) # (!\inst|Add0~55\))) # (!\k[29]~input_o\ & (\inst|Add0~55\ $ (GND)))
-- \inst|Add0~57\ = CARRY((\k[29]~input_o\) # (!\inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[29]~input_o\,
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~56_combout\,
	cout => \inst|Add0~57\);

-- Location: LCCOMB_X25_Y71_N26
\inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\k[30]~input_o\ & (\inst|Add0~57\ & VCC)) # (!\k[30]~input_o\ & (!\inst|Add0~57\))
-- \inst|Add0~59\ = CARRY((!\k[30]~input_o\ & !\inst|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[30]~input_o\,
	datad => VCC,
	cin => \inst|Add0~57\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: LCCOMB_X25_Y71_N28
\inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (\k[31]~input_o\ & ((GND) # (!\inst|Add0~59\))) # (!\k[31]~input_o\ & (\inst|Add0~59\ $ (GND)))
-- \inst|Add0~61\ = CARRY((\k[31]~input_o\) # (!\inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[31]~input_o\,
	datad => VCC,
	cin => \inst|Add0~59\,
	combout => \inst|Add0~60_combout\,
	cout => \inst|Add0~61\);

-- Location: LCCOMB_X25_Y71_N30
\inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = !\inst|Add0~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~61\,
	combout => \inst|Add0~62_combout\);

-- Location: LCCOMB_X25_Y68_N24
\inst|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~18_combout\ = (\inst|Add0~62_combout\ & (\inst|s_counter\(31) & (\inst|s_counter\(30) $ (!\inst|Add0~60_combout\)))) # (!\inst|Add0~62_combout\ & (!\inst|s_counter\(31) & (\inst|s_counter\(30) $ (!\inst|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~62_combout\,
	datab => \inst|s_counter\(30),
	datac => \inst|Add0~60_combout\,
	datad => \inst|s_counter\(31),
	combout => \inst|Equal0~18_combout\);

-- Location: LCCOMB_X23_Y68_N26
\inst|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~17_combout\ = (\inst|Add0~56_combout\ & (\inst|s_counter\(28) & (\inst|s_counter\(29) $ (!\inst|Add0~58_combout\)))) # (!\inst|Add0~56_combout\ & (!\inst|s_counter\(28) & (\inst|s_counter\(29) $ (!\inst|Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~56_combout\,
	datab => \inst|s_counter\(29),
	datac => \inst|Add0~58_combout\,
	datad => \inst|s_counter\(28),
	combout => \inst|Equal0~17_combout\);

-- Location: LCCOMB_X23_Y68_N14
\inst|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~15_combout\ = (\inst|Add0~48_combout\ & (\inst|s_counter\(24) & (\inst|s_counter\(25) $ (!\inst|Add0~50_combout\)))) # (!\inst|Add0~48_combout\ & (!\inst|s_counter\(24) & (\inst|s_counter\(25) $ (!\inst|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~48_combout\,
	datab => \inst|s_counter\(25),
	datac => \inst|Add0~50_combout\,
	datad => \inst|s_counter\(24),
	combout => \inst|Equal0~15_combout\);

-- Location: LCCOMB_X25_Y68_N14
\inst|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~19_combout\ = (\inst|Equal0~16_combout\ & (\inst|Equal0~18_combout\ & (\inst|Equal0~17_combout\ & \inst|Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~16_combout\,
	datab => \inst|Equal0~18_combout\,
	datac => \inst|Equal0~17_combout\,
	datad => \inst|Equal0~15_combout\,
	combout => \inst|Equal0~19_combout\);

-- Location: LCCOMB_X25_Y68_N26
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|Add0~20_combout\ & (\inst|s_counter\(10) & (\inst|Add0~22_combout\ $ (!\inst|s_counter\(11))))) # (!\inst|Add0~20_combout\ & (!\inst|s_counter\(10) & (\inst|Add0~22_combout\ $ (!\inst|s_counter\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~20_combout\,
	datab => \inst|Add0~22_combout\,
	datac => \inst|s_counter\(10),
	datad => \inst|s_counter\(11),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y69_N8
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|Add0~18_combout\ & (\inst|s_counter\(9) & (\inst|Add0~16_combout\ $ (!\inst|s_counter\(8))))) # (!\inst|Add0~18_combout\ & (!\inst|s_counter\(9) & (\inst|Add0~16_combout\ $ (!\inst|s_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~18_combout\,
	datab => \inst|Add0~16_combout\,
	datac => \inst|s_counter\(8),
	datad => \inst|s_counter\(9),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y69_N6
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (\inst|Add0~24_combout\ & (\inst|s_counter\(12) & (\inst|Add0~26_combout\ $ (!\inst|s_counter\(13))))) # (!\inst|Add0~24_combout\ & (!\inst|s_counter\(12) & (\inst|Add0~26_combout\ $ (!\inst|s_counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~24_combout\,
	datab => \inst|Add0~26_combout\,
	datac => \inst|s_counter\(13),
	datad => \inst|s_counter\(12),
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y69_N16
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (\inst|Add0~30_combout\ & (\inst|s_counter\(15) & (\inst|Add0~28_combout\ $ (!\inst|s_counter\(14))))) # (!\inst|Add0~30_combout\ & (!\inst|s_counter\(15) & (\inst|Add0~28_combout\ $ (!\inst|s_counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~30_combout\,
	datab => \inst|s_counter\(15),
	datac => \inst|Add0~28_combout\,
	datad => \inst|s_counter\(14),
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X25_Y68_N12
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (\inst|Equal0~6_combout\ & (\inst|Equal0~5_combout\ & (\inst|Equal0~7_combout\ & \inst|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Equal0~8_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X25_Y68_N0
\inst|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~20_combout\ = (\inst|Equal0~14_combout\ & (\inst|Equal0~4_combout\ & (\inst|Equal0~19_combout\ & \inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~14_combout\,
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~19_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Equal0~20_combout\);

-- Location: FF_X24_Y69_N1
\inst|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[0]~32_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(0));

-- Location: LCCOMB_X24_Y69_N2
\inst|s_counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[1]~34_combout\ = (\inst|s_counter\(1) & (!\inst|s_counter[0]~33\)) # (!\inst|s_counter\(1) & ((\inst|s_counter[0]~33\) # (GND)))
-- \inst|s_counter[1]~35\ = CARRY((!\inst|s_counter[0]~33\) # (!\inst|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(1),
	datad => VCC,
	cin => \inst|s_counter[0]~33\,
	combout => \inst|s_counter[1]~34_combout\,
	cout => \inst|s_counter[1]~35\);

-- Location: FF_X24_Y69_N3
\inst|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[1]~34_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(1));

-- Location: LCCOMB_X24_Y69_N4
\inst|s_counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[2]~36_combout\ = (\inst|s_counter\(2) & (\inst|s_counter[1]~35\ $ (GND))) # (!\inst|s_counter\(2) & (!\inst|s_counter[1]~35\ & VCC))
-- \inst|s_counter[2]~37\ = CARRY((\inst|s_counter\(2) & !\inst|s_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(2),
	datad => VCC,
	cin => \inst|s_counter[1]~35\,
	combout => \inst|s_counter[2]~36_combout\,
	cout => \inst|s_counter[2]~37\);

-- Location: FF_X24_Y69_N5
\inst|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[2]~36_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(2));

-- Location: LCCOMB_X24_Y69_N6
\inst|s_counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[3]~38_combout\ = (\inst|s_counter\(3) & (!\inst|s_counter[2]~37\)) # (!\inst|s_counter\(3) & ((\inst|s_counter[2]~37\) # (GND)))
-- \inst|s_counter[3]~39\ = CARRY((!\inst|s_counter[2]~37\) # (!\inst|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(3),
	datad => VCC,
	cin => \inst|s_counter[2]~37\,
	combout => \inst|s_counter[3]~38_combout\,
	cout => \inst|s_counter[3]~39\);

-- Location: FF_X24_Y69_N7
\inst|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[3]~38_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(3));

-- Location: LCCOMB_X24_Y69_N8
\inst|s_counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[4]~40_combout\ = (\inst|s_counter\(4) & (\inst|s_counter[3]~39\ $ (GND))) # (!\inst|s_counter\(4) & (!\inst|s_counter[3]~39\ & VCC))
-- \inst|s_counter[4]~41\ = CARRY((\inst|s_counter\(4) & !\inst|s_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(4),
	datad => VCC,
	cin => \inst|s_counter[3]~39\,
	combout => \inst|s_counter[4]~40_combout\,
	cout => \inst|s_counter[4]~41\);

-- Location: FF_X24_Y69_N9
\inst|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[4]~40_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(4));

-- Location: LCCOMB_X24_Y69_N10
\inst|s_counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[5]~42_combout\ = (\inst|s_counter\(5) & (!\inst|s_counter[4]~41\)) # (!\inst|s_counter\(5) & ((\inst|s_counter[4]~41\) # (GND)))
-- \inst|s_counter[5]~43\ = CARRY((!\inst|s_counter[4]~41\) # (!\inst|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(5),
	datad => VCC,
	cin => \inst|s_counter[4]~41\,
	combout => \inst|s_counter[5]~42_combout\,
	cout => \inst|s_counter[5]~43\);

-- Location: FF_X24_Y69_N11
\inst|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[5]~42_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(5));

-- Location: LCCOMB_X24_Y69_N12
\inst|s_counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[6]~44_combout\ = (\inst|s_counter\(6) & (\inst|s_counter[5]~43\ $ (GND))) # (!\inst|s_counter\(6) & (!\inst|s_counter[5]~43\ & VCC))
-- \inst|s_counter[6]~45\ = CARRY((\inst|s_counter\(6) & !\inst|s_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(6),
	datad => VCC,
	cin => \inst|s_counter[5]~43\,
	combout => \inst|s_counter[6]~44_combout\,
	cout => \inst|s_counter[6]~45\);

-- Location: FF_X24_Y69_N13
\inst|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[6]~44_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(6));

-- Location: LCCOMB_X24_Y69_N14
\inst|s_counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[7]~46_combout\ = (\inst|s_counter\(7) & (!\inst|s_counter[6]~45\)) # (!\inst|s_counter\(7) & ((\inst|s_counter[6]~45\) # (GND)))
-- \inst|s_counter[7]~47\ = CARRY((!\inst|s_counter[6]~45\) # (!\inst|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(7),
	datad => VCC,
	cin => \inst|s_counter[6]~45\,
	combout => \inst|s_counter[7]~46_combout\,
	cout => \inst|s_counter[7]~47\);

-- Location: FF_X24_Y69_N15
\inst|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[7]~46_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(7));

-- Location: LCCOMB_X24_Y69_N16
\inst|s_counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[8]~48_combout\ = (\inst|s_counter\(8) & (\inst|s_counter[7]~47\ $ (GND))) # (!\inst|s_counter\(8) & (!\inst|s_counter[7]~47\ & VCC))
-- \inst|s_counter[8]~49\ = CARRY((\inst|s_counter\(8) & !\inst|s_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(8),
	datad => VCC,
	cin => \inst|s_counter[7]~47\,
	combout => \inst|s_counter[8]~48_combout\,
	cout => \inst|s_counter[8]~49\);

-- Location: FF_X24_Y69_N17
\inst|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[8]~48_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(8));

-- Location: LCCOMB_X24_Y69_N18
\inst|s_counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[9]~50_combout\ = (\inst|s_counter\(9) & (!\inst|s_counter[8]~49\)) # (!\inst|s_counter\(9) & ((\inst|s_counter[8]~49\) # (GND)))
-- \inst|s_counter[9]~51\ = CARRY((!\inst|s_counter[8]~49\) # (!\inst|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(9),
	datad => VCC,
	cin => \inst|s_counter[8]~49\,
	combout => \inst|s_counter[9]~50_combout\,
	cout => \inst|s_counter[9]~51\);

-- Location: FF_X24_Y69_N19
\inst|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[9]~50_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(9));

-- Location: LCCOMB_X24_Y69_N20
\inst|s_counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[10]~52_combout\ = (\inst|s_counter\(10) & (\inst|s_counter[9]~51\ $ (GND))) # (!\inst|s_counter\(10) & (!\inst|s_counter[9]~51\ & VCC))
-- \inst|s_counter[10]~53\ = CARRY((\inst|s_counter\(10) & !\inst|s_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(10),
	datad => VCC,
	cin => \inst|s_counter[9]~51\,
	combout => \inst|s_counter[10]~52_combout\,
	cout => \inst|s_counter[10]~53\);

-- Location: FF_X24_Y69_N21
\inst|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[10]~52_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(10));

-- Location: LCCOMB_X24_Y69_N22
\inst|s_counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[11]~54_combout\ = (\inst|s_counter\(11) & (!\inst|s_counter[10]~53\)) # (!\inst|s_counter\(11) & ((\inst|s_counter[10]~53\) # (GND)))
-- \inst|s_counter[11]~55\ = CARRY((!\inst|s_counter[10]~53\) # (!\inst|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(11),
	datad => VCC,
	cin => \inst|s_counter[10]~53\,
	combout => \inst|s_counter[11]~54_combout\,
	cout => \inst|s_counter[11]~55\);

-- Location: FF_X24_Y69_N23
\inst|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[11]~54_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(11));

-- Location: LCCOMB_X24_Y69_N24
\inst|s_counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[12]~56_combout\ = (\inst|s_counter\(12) & (\inst|s_counter[11]~55\ $ (GND))) # (!\inst|s_counter\(12) & (!\inst|s_counter[11]~55\ & VCC))
-- \inst|s_counter[12]~57\ = CARRY((\inst|s_counter\(12) & !\inst|s_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(12),
	datad => VCC,
	cin => \inst|s_counter[11]~55\,
	combout => \inst|s_counter[12]~56_combout\,
	cout => \inst|s_counter[12]~57\);

-- Location: FF_X24_Y69_N25
\inst|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[12]~56_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(12));

-- Location: LCCOMB_X24_Y69_N26
\inst|s_counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[13]~58_combout\ = (\inst|s_counter\(13) & (!\inst|s_counter[12]~57\)) # (!\inst|s_counter\(13) & ((\inst|s_counter[12]~57\) # (GND)))
-- \inst|s_counter[13]~59\ = CARRY((!\inst|s_counter[12]~57\) # (!\inst|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(13),
	datad => VCC,
	cin => \inst|s_counter[12]~57\,
	combout => \inst|s_counter[13]~58_combout\,
	cout => \inst|s_counter[13]~59\);

-- Location: FF_X24_Y69_N27
\inst|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[13]~58_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(13));

-- Location: LCCOMB_X24_Y69_N28
\inst|s_counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[14]~60_combout\ = (\inst|s_counter\(14) & (\inst|s_counter[13]~59\ $ (GND))) # (!\inst|s_counter\(14) & (!\inst|s_counter[13]~59\ & VCC))
-- \inst|s_counter[14]~61\ = CARRY((\inst|s_counter\(14) & !\inst|s_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(14),
	datad => VCC,
	cin => \inst|s_counter[13]~59\,
	combout => \inst|s_counter[14]~60_combout\,
	cout => \inst|s_counter[14]~61\);

-- Location: FF_X24_Y69_N29
\inst|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[14]~60_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(14));

-- Location: LCCOMB_X24_Y69_N30
\inst|s_counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[15]~62_combout\ = (\inst|s_counter\(15) & (!\inst|s_counter[14]~61\)) # (!\inst|s_counter\(15) & ((\inst|s_counter[14]~61\) # (GND)))
-- \inst|s_counter[15]~63\ = CARRY((!\inst|s_counter[14]~61\) # (!\inst|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(15),
	datad => VCC,
	cin => \inst|s_counter[14]~61\,
	combout => \inst|s_counter[15]~62_combout\,
	cout => \inst|s_counter[15]~63\);

-- Location: FF_X24_Y69_N31
\inst|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[15]~62_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(15));

-- Location: LCCOMB_X24_Y68_N0
\inst|s_counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[16]~64_combout\ = (\inst|s_counter\(16) & (\inst|s_counter[15]~63\ $ (GND))) # (!\inst|s_counter\(16) & (!\inst|s_counter[15]~63\ & VCC))
-- \inst|s_counter[16]~65\ = CARRY((\inst|s_counter\(16) & !\inst|s_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(16),
	datad => VCC,
	cin => \inst|s_counter[15]~63\,
	combout => \inst|s_counter[16]~64_combout\,
	cout => \inst|s_counter[16]~65\);

-- Location: FF_X24_Y68_N1
\inst|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[16]~64_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(16));

-- Location: LCCOMB_X24_Y68_N2
\inst|s_counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[17]~66_combout\ = (\inst|s_counter\(17) & (!\inst|s_counter[16]~65\)) # (!\inst|s_counter\(17) & ((\inst|s_counter[16]~65\) # (GND)))
-- \inst|s_counter[17]~67\ = CARRY((!\inst|s_counter[16]~65\) # (!\inst|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(17),
	datad => VCC,
	cin => \inst|s_counter[16]~65\,
	combout => \inst|s_counter[17]~66_combout\,
	cout => \inst|s_counter[17]~67\);

-- Location: FF_X24_Y68_N3
\inst|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[17]~66_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(17));

-- Location: LCCOMB_X24_Y68_N4
\inst|s_counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[18]~68_combout\ = (\inst|s_counter\(18) & (\inst|s_counter[17]~67\ $ (GND))) # (!\inst|s_counter\(18) & (!\inst|s_counter[17]~67\ & VCC))
-- \inst|s_counter[18]~69\ = CARRY((\inst|s_counter\(18) & !\inst|s_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(18),
	datad => VCC,
	cin => \inst|s_counter[17]~67\,
	combout => \inst|s_counter[18]~68_combout\,
	cout => \inst|s_counter[18]~69\);

-- Location: FF_X24_Y68_N5
\inst|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[18]~68_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(18));

-- Location: LCCOMB_X24_Y68_N6
\inst|s_counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[19]~70_combout\ = (\inst|s_counter\(19) & (!\inst|s_counter[18]~69\)) # (!\inst|s_counter\(19) & ((\inst|s_counter[18]~69\) # (GND)))
-- \inst|s_counter[19]~71\ = CARRY((!\inst|s_counter[18]~69\) # (!\inst|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(19),
	datad => VCC,
	cin => \inst|s_counter[18]~69\,
	combout => \inst|s_counter[19]~70_combout\,
	cout => \inst|s_counter[19]~71\);

-- Location: FF_X24_Y68_N7
\inst|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[19]~70_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(19));

-- Location: LCCOMB_X24_Y68_N8
\inst|s_counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[20]~72_combout\ = (\inst|s_counter\(20) & (\inst|s_counter[19]~71\ $ (GND))) # (!\inst|s_counter\(20) & (!\inst|s_counter[19]~71\ & VCC))
-- \inst|s_counter[20]~73\ = CARRY((\inst|s_counter\(20) & !\inst|s_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(20),
	datad => VCC,
	cin => \inst|s_counter[19]~71\,
	combout => \inst|s_counter[20]~72_combout\,
	cout => \inst|s_counter[20]~73\);

-- Location: FF_X24_Y68_N9
\inst|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[20]~72_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(20));

-- Location: LCCOMB_X24_Y68_N10
\inst|s_counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[21]~74_combout\ = (\inst|s_counter\(21) & (!\inst|s_counter[20]~73\)) # (!\inst|s_counter\(21) & ((\inst|s_counter[20]~73\) # (GND)))
-- \inst|s_counter[21]~75\ = CARRY((!\inst|s_counter[20]~73\) # (!\inst|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(21),
	datad => VCC,
	cin => \inst|s_counter[20]~73\,
	combout => \inst|s_counter[21]~74_combout\,
	cout => \inst|s_counter[21]~75\);

-- Location: FF_X24_Y68_N11
\inst|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[21]~74_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(21));

-- Location: LCCOMB_X24_Y68_N12
\inst|s_counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[22]~76_combout\ = (\inst|s_counter\(22) & (\inst|s_counter[21]~75\ $ (GND))) # (!\inst|s_counter\(22) & (!\inst|s_counter[21]~75\ & VCC))
-- \inst|s_counter[22]~77\ = CARRY((\inst|s_counter\(22) & !\inst|s_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(22),
	datad => VCC,
	cin => \inst|s_counter[21]~75\,
	combout => \inst|s_counter[22]~76_combout\,
	cout => \inst|s_counter[22]~77\);

-- Location: FF_X24_Y68_N13
\inst|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[22]~76_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(22));

-- Location: LCCOMB_X24_Y68_N14
\inst|s_counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[23]~78_combout\ = (\inst|s_counter\(23) & (!\inst|s_counter[22]~77\)) # (!\inst|s_counter\(23) & ((\inst|s_counter[22]~77\) # (GND)))
-- \inst|s_counter[23]~79\ = CARRY((!\inst|s_counter[22]~77\) # (!\inst|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(23),
	datad => VCC,
	cin => \inst|s_counter[22]~77\,
	combout => \inst|s_counter[23]~78_combout\,
	cout => \inst|s_counter[23]~79\);

-- Location: FF_X24_Y68_N15
\inst|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[23]~78_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(23));

-- Location: LCCOMB_X24_Y68_N16
\inst|s_counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[24]~80_combout\ = (\inst|s_counter\(24) & (\inst|s_counter[23]~79\ $ (GND))) # (!\inst|s_counter\(24) & (!\inst|s_counter[23]~79\ & VCC))
-- \inst|s_counter[24]~81\ = CARRY((\inst|s_counter\(24) & !\inst|s_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(24),
	datad => VCC,
	cin => \inst|s_counter[23]~79\,
	combout => \inst|s_counter[24]~80_combout\,
	cout => \inst|s_counter[24]~81\);

-- Location: FF_X24_Y68_N17
\inst|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[24]~80_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(24));

-- Location: LCCOMB_X24_Y68_N18
\inst|s_counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[25]~82_combout\ = (\inst|s_counter\(25) & (!\inst|s_counter[24]~81\)) # (!\inst|s_counter\(25) & ((\inst|s_counter[24]~81\) # (GND)))
-- \inst|s_counter[25]~83\ = CARRY((!\inst|s_counter[24]~81\) # (!\inst|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(25),
	datad => VCC,
	cin => \inst|s_counter[24]~81\,
	combout => \inst|s_counter[25]~82_combout\,
	cout => \inst|s_counter[25]~83\);

-- Location: FF_X24_Y68_N19
\inst|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[25]~82_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(25));

-- Location: LCCOMB_X24_Y68_N20
\inst|s_counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[26]~84_combout\ = (\inst|s_counter\(26) & (\inst|s_counter[25]~83\ $ (GND))) # (!\inst|s_counter\(26) & (!\inst|s_counter[25]~83\ & VCC))
-- \inst|s_counter[26]~85\ = CARRY((\inst|s_counter\(26) & !\inst|s_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(26),
	datad => VCC,
	cin => \inst|s_counter[25]~83\,
	combout => \inst|s_counter[26]~84_combout\,
	cout => \inst|s_counter[26]~85\);

-- Location: FF_X24_Y68_N21
\inst|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[26]~84_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(26));

-- Location: LCCOMB_X24_Y68_N22
\inst|s_counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[27]~86_combout\ = (\inst|s_counter\(27) & (!\inst|s_counter[26]~85\)) # (!\inst|s_counter\(27) & ((\inst|s_counter[26]~85\) # (GND)))
-- \inst|s_counter[27]~87\ = CARRY((!\inst|s_counter[26]~85\) # (!\inst|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(27),
	datad => VCC,
	cin => \inst|s_counter[26]~85\,
	combout => \inst|s_counter[27]~86_combout\,
	cout => \inst|s_counter[27]~87\);

-- Location: FF_X24_Y68_N23
\inst|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[27]~86_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(27));

-- Location: LCCOMB_X24_Y68_N24
\inst|s_counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[28]~88_combout\ = (\inst|s_counter\(28) & (\inst|s_counter[27]~87\ $ (GND))) # (!\inst|s_counter\(28) & (!\inst|s_counter[27]~87\ & VCC))
-- \inst|s_counter[28]~89\ = CARRY((\inst|s_counter\(28) & !\inst|s_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(28),
	datad => VCC,
	cin => \inst|s_counter[27]~87\,
	combout => \inst|s_counter[28]~88_combout\,
	cout => \inst|s_counter[28]~89\);

-- Location: FF_X24_Y68_N25
\inst|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[28]~88_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(28));

-- Location: LCCOMB_X24_Y68_N26
\inst|s_counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[29]~90_combout\ = (\inst|s_counter\(29) & (!\inst|s_counter[28]~89\)) # (!\inst|s_counter\(29) & ((\inst|s_counter[28]~89\) # (GND)))
-- \inst|s_counter[29]~91\ = CARRY((!\inst|s_counter[28]~89\) # (!\inst|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(29),
	datad => VCC,
	cin => \inst|s_counter[28]~89\,
	combout => \inst|s_counter[29]~90_combout\,
	cout => \inst|s_counter[29]~91\);

-- Location: FF_X24_Y68_N27
\inst|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[29]~90_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(29));

-- Location: LCCOMB_X24_Y68_N28
\inst|s_counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[30]~92_combout\ = (\inst|s_counter\(30) & (\inst|s_counter[29]~91\ $ (GND))) # (!\inst|s_counter\(30) & (!\inst|s_counter[29]~91\ & VCC))
-- \inst|s_counter[30]~93\ = CARRY((\inst|s_counter\(30) & !\inst|s_counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(30),
	datad => VCC,
	cin => \inst|s_counter[29]~91\,
	combout => \inst|s_counter[30]~92_combout\,
	cout => \inst|s_counter[30]~93\);

-- Location: FF_X24_Y68_N29
\inst|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[30]~92_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(30));

-- Location: LCCOMB_X24_Y68_N30
\inst|s_counter[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[31]~94_combout\ = \inst|s_counter\(31) $ (\inst|s_counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(31),
	cin => \inst|s_counter[30]~93\,
	combout => \inst|s_counter[31]~94_combout\);

-- Location: FF_X24_Y68_N31
\inst|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|s_counter[31]~94_combout\,
	sclr => \inst|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(31));

-- Location: LCCOMB_X23_Y68_N30
\inst|clkOut~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~18_combout\ = (\inst|Add1~62_combout\ & (\inst|s_counter\(31) & (\inst|Add1~60_combout\ $ (!\inst|s_counter\(30))))) # (!\inst|Add1~62_combout\ & (!\inst|s_counter\(31) & (\inst|Add1~60_combout\ $ (!\inst|s_counter\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~62_combout\,
	datab => \inst|Add1~60_combout\,
	datac => \inst|s_counter\(31),
	datad => \inst|s_counter\(30),
	combout => \inst|clkOut~18_combout\);

-- Location: LCCOMB_X23_Y68_N18
\inst|clkOut~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~16_combout\ = (\inst|Add1~52_combout\ & (\inst|s_counter\(26) & (\inst|Add1~54_combout\ $ (!\inst|s_counter\(27))))) # (!\inst|Add1~52_combout\ & (!\inst|s_counter\(26) & (\inst|Add1~54_combout\ $ (!\inst|s_counter\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~52_combout\,
	datab => \inst|Add1~54_combout\,
	datac => \inst|s_counter\(26),
	datad => \inst|s_counter\(27),
	combout => \inst|clkOut~16_combout\);

-- Location: LCCOMB_X23_Y68_N4
\inst|clkOut~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~17_combout\ = (\inst|Add1~56_combout\ & (\inst|s_counter\(28) & (\inst|s_counter\(29) $ (!\inst|Add1~58_combout\)))) # (!\inst|Add1~56_combout\ & (!\inst|s_counter\(28) & (\inst|s_counter\(29) $ (!\inst|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~56_combout\,
	datab => \inst|s_counter\(29),
	datac => \inst|Add1~58_combout\,
	datad => \inst|s_counter\(28),
	combout => \inst|clkOut~17_combout\);

-- Location: LCCOMB_X23_Y68_N16
\inst|clkOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~15_combout\ = (\inst|Add1~50_combout\ & (\inst|s_counter\(25) & (\inst|s_counter\(24) $ (!\inst|Add1~48_combout\)))) # (!\inst|Add1~50_combout\ & (!\inst|s_counter\(25) & (\inst|s_counter\(24) $ (!\inst|Add1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~50_combout\,
	datab => \inst|s_counter\(24),
	datac => \inst|Add1~48_combout\,
	datad => \inst|s_counter\(25),
	combout => \inst|clkOut~15_combout\);

-- Location: LCCOMB_X23_Y68_N20
\inst|clkOut~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~19_combout\ = (\inst|clkOut~18_combout\ & (\inst|clkOut~16_combout\ & (\inst|clkOut~17_combout\ & \inst|clkOut~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~18_combout\,
	datab => \inst|clkOut~16_combout\,
	datac => \inst|clkOut~17_combout\,
	datad => \inst|clkOut~15_combout\,
	combout => \inst|clkOut~19_combout\);

-- Location: LCCOMB_X24_Y71_N26
\inst|clkOut~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~13_combout\ = (\inst|Add1~46_combout\ & (\inst|s_counter\(23) & (\inst|Add1~44_combout\ $ (!\inst|s_counter\(22))))) # (!\inst|Add1~46_combout\ & (!\inst|s_counter\(23) & (\inst|Add1~44_combout\ $ (!\inst|s_counter\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~46_combout\,
	datab => \inst|Add1~44_combout\,
	datac => \inst|s_counter\(23),
	datad => \inst|s_counter\(22),
	combout => \inst|clkOut~13_combout\);

-- Location: LCCOMB_X24_Y71_N28
\inst|clkOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~10_combout\ = (\inst|Add1~32_combout\ & (\inst|s_counter\(16) & (\inst|Add1~34_combout\ $ (!\inst|s_counter\(17))))) # (!\inst|Add1~32_combout\ & (!\inst|s_counter\(16) & (\inst|Add1~34_combout\ $ (!\inst|s_counter\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~32_combout\,
	datab => \inst|Add1~34_combout\,
	datac => \inst|s_counter\(16),
	datad => \inst|s_counter\(17),
	combout => \inst|clkOut~10_combout\);

-- Location: LCCOMB_X24_Y71_N30
\inst|clkOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~11_combout\ = (\inst|Add1~38_combout\ & (\inst|s_counter\(19) & (\inst|Add1~36_combout\ $ (!\inst|s_counter\(18))))) # (!\inst|Add1~38_combout\ & (!\inst|s_counter\(19) & (\inst|Add1~36_combout\ $ (!\inst|s_counter\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~38_combout\,
	datab => \inst|Add1~36_combout\,
	datac => \inst|s_counter\(19),
	datad => \inst|s_counter\(18),
	combout => \inst|clkOut~11_combout\);

-- Location: LCCOMB_X24_Y71_N24
\inst|clkOut~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~12_combout\ = (\inst|Add1~42_combout\ & (\inst|s_counter\(21) & (\inst|Add1~40_combout\ $ (!\inst|s_counter\(20))))) # (!\inst|Add1~42_combout\ & (!\inst|s_counter\(21) & (\inst|Add1~40_combout\ $ (!\inst|s_counter\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~42_combout\,
	datab => \inst|Add1~40_combout\,
	datac => \inst|s_counter\(20),
	datad => \inst|s_counter\(21),
	combout => \inst|clkOut~12_combout\);

-- Location: LCCOMB_X24_Y71_N16
\inst|clkOut~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~14_combout\ = (\inst|clkOut~13_combout\ & (\inst|clkOut~10_combout\ & (\inst|clkOut~11_combout\ & \inst|clkOut~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~13_combout\,
	datab => \inst|clkOut~10_combout\,
	datac => \inst|clkOut~11_combout\,
	datad => \inst|clkOut~12_combout\,
	combout => \inst|clkOut~14_combout\);

-- Location: LCCOMB_X23_Y69_N6
\inst|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~7_combout\ = (\inst|Add1~24_combout\ & (\inst|s_counter\(12) & (\inst|Add1~26_combout\ $ (!\inst|s_counter\(13))))) # (!\inst|Add1~24_combout\ & (!\inst|s_counter\(12) & (\inst|Add1~26_combout\ $ (!\inst|s_counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~24_combout\,
	datab => \inst|Add1~26_combout\,
	datac => \inst|s_counter\(13),
	datad => \inst|s_counter\(12),
	combout => \inst|clkOut~7_combout\);

-- Location: LCCOMB_X23_Y69_N24
\inst|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~5_combout\ = (\inst|Add1~16_combout\ & (\inst|s_counter\(8) & (\inst|Add1~18_combout\ $ (!\inst|s_counter\(9))))) # (!\inst|Add1~16_combout\ & (!\inst|s_counter\(8) & (\inst|Add1~18_combout\ $ (!\inst|s_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~16_combout\,
	datab => \inst|s_counter\(8),
	datac => \inst|Add1~18_combout\,
	datad => \inst|s_counter\(9),
	combout => \inst|clkOut~5_combout\);

-- Location: LCCOMB_X23_Y69_N28
\inst|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~8_combout\ = (\inst|Add1~30_combout\ & (\inst|s_counter\(15) & (\inst|Add1~28_combout\ $ (!\inst|s_counter\(14))))) # (!\inst|Add1~30_combout\ & (!\inst|s_counter\(15) & (\inst|Add1~28_combout\ $ (!\inst|s_counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~30_combout\,
	datab => \inst|Add1~28_combout\,
	datac => \inst|s_counter\(15),
	datad => \inst|s_counter\(14),
	combout => \inst|clkOut~8_combout\);

-- Location: LCCOMB_X24_Y71_N20
\inst|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~6_combout\ = (\inst|Add1~20_combout\ & (\inst|s_counter\(10) & (\inst|Add1~22_combout\ $ (!\inst|s_counter\(11))))) # (!\inst|Add1~20_combout\ & (!\inst|s_counter\(10) & (\inst|Add1~22_combout\ $ (!\inst|s_counter\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~20_combout\,
	datab => \inst|Add1~22_combout\,
	datac => \inst|s_counter\(10),
	datad => \inst|s_counter\(11),
	combout => \inst|clkOut~6_combout\);

-- Location: LCCOMB_X24_Y71_N22
\inst|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~9_combout\ = (\inst|clkOut~7_combout\ & (\inst|clkOut~5_combout\ & (\inst|clkOut~8_combout\ & \inst|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~7_combout\,
	datab => \inst|clkOut~5_combout\,
	datac => \inst|clkOut~8_combout\,
	datad => \inst|clkOut~6_combout\,
	combout => \inst|clkOut~9_combout\);

-- Location: LCCOMB_X24_Y71_N12
\inst|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~2_combout\ = (\inst|Add1~10_combout\ & (\inst|s_counter\(5) & (\inst|Add1~8_combout\ $ (!\inst|s_counter\(4))))) # (!\inst|Add1~10_combout\ & (!\inst|s_counter\(5) & (\inst|Add1~8_combout\ $ (!\inst|s_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~10_combout\,
	datab => \inst|Add1~8_combout\,
	datac => \inst|s_counter\(4),
	datad => \inst|s_counter\(5),
	combout => \inst|clkOut~2_combout\);

-- Location: LCCOMB_X24_Y71_N18
\inst|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~0_combout\ = (\inst|Add1~2_combout\ & (\inst|s_counter\(1) & (\inst|s_counter\(0) $ (!\inst|Add1~0_combout\)))) # (!\inst|Add1~2_combout\ & (!\inst|s_counter\(1) & (\inst|s_counter\(0) $ (!\inst|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst|s_counter\(0),
	datac => \inst|Add1~0_combout\,
	datad => \inst|s_counter\(1),
	combout => \inst|clkOut~0_combout\);

-- Location: LCCOMB_X23_Y69_N16
\inst|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~1_combout\ = (\inst|s_counter\(2) & (\inst|Add1~4_combout\ & (\inst|Add1~6_combout\ $ (!\inst|s_counter\(3))))) # (!\inst|s_counter\(2) & (!\inst|Add1~4_combout\ & (\inst|Add1~6_combout\ $ (!\inst|s_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(2),
	datab => \inst|Add1~6_combout\,
	datac => \inst|Add1~4_combout\,
	datad => \inst|s_counter\(3),
	combout => \inst|clkOut~1_combout\);

-- Location: LCCOMB_X23_Y69_N22
\inst|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~3_combout\ = (\inst|Add1~14_combout\ & (\inst|s_counter\(7) & (\inst|s_counter\(6) $ (!\inst|Add1~12_combout\)))) # (!\inst|Add1~14_combout\ & (!\inst|s_counter\(7) & (\inst|s_counter\(6) $ (!\inst|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~14_combout\,
	datab => \inst|s_counter\(6),
	datac => \inst|s_counter\(7),
	datad => \inst|Add1~12_combout\,
	combout => \inst|clkOut~3_combout\);

-- Location: LCCOMB_X24_Y71_N6
\inst|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~4_combout\ = (\inst|clkOut~2_combout\ & (\inst|clkOut~0_combout\ & (\inst|clkOut~1_combout\ & \inst|clkOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~2_combout\,
	datab => \inst|clkOut~0_combout\,
	datac => \inst|clkOut~1_combout\,
	datad => \inst|clkOut~3_combout\,
	combout => \inst|clkOut~4_combout\);

-- Location: LCCOMB_X24_Y71_N10
\inst|clkOut~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~20_combout\ = (\inst|clkOut~19_combout\ & (\inst|clkOut~14_combout\ & (\inst|clkOut~9_combout\ & \inst|clkOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~19_combout\,
	datab => \inst|clkOut~14_combout\,
	datac => \inst|clkOut~9_combout\,
	datad => \inst|clkOut~4_combout\,
	combout => \inst|clkOut~20_combout\);

-- Location: LCCOMB_X24_Y71_N4
\inst|clkOut~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~21_combout\ = (!\inst|Equal0~20_combout\ & ((\inst|clkOut~20_combout\) # (\inst|clkOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~20_combout\,
	datac => \inst|clkOut~q\,
	datad => \inst|Equal0~20_combout\,
	combout => \inst|clkOut~21_combout\);

-- Location: FF_X24_Y71_N5
\inst|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \inst|clkOut~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkOut~q\);

-- Location: IOIBUF_X3_Y0_N22
\k[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(0),
	o => \k[0]~input_o\);

ww_clkOut <= \clkOut~output_o\;
END structure;


