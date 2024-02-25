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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/19/2023 19:40:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          NOTGate
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY NOTGate_vhd_vec_tst IS
END NOTGate_vhd_vec_tst;
ARCHITECTURE NOTGate_arch OF NOTGate_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inPort : STD_LOGIC;
SIGNAL outPort : STD_LOGIC;
COMPONENT NOTGate
	PORT (
	inPort : IN STD_LOGIC;
	outPort : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : NOTGate
	PORT MAP (
-- list connections between master ports and signals
	inPort => inPort,
	outPort => outPort
	);

-- inPort
t_prcs_inPort: PROCESS
BEGIN
	inPort <= '0';
	WAIT FOR 100000 ps;
	inPort <= '1';
	WAIT FOR 130000 ps;
	inPort <= '0';
	WAIT FOR 140000 ps;
	inPort <= '1';
	WAIT FOR 100000 ps;
	inPort <= '0';
	WAIT FOR 110000 ps;
	inPort <= '1';
	WAIT FOR 140000 ps;
	inPort <= '0';
	WAIT FOR 100000 ps;
	inPort <= '1';
	WAIT FOR 100000 ps;
	inPort <= '0';
WAIT;
END PROCESS t_prcs_inPort;
END NOTGate_arch;
