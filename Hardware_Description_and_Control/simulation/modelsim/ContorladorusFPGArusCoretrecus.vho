-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/16/2026 12:11:08"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	GPIO_0 : INOUT std_logic_vector(31 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(9 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END top;

-- Design Ports Information
-- GPIO_0[0]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[5]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[7]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[8]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[9]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[10]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[11]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[15]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[18]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[19]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[23]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[26]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[27]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[28]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[29]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[30]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[31]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[12]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[13]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[14]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[16]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[17]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[20]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[21]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[22]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[24]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[25]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[9]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \clock_filter|clk_counter[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_filter|clk_counter[1]~25_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[2]~27_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[3]~29_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[5]~33_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[7]~37_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[9]~41_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[16]~55_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[18]~59_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[19]~61_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[21]~65_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[23]~69_combout\ : std_logic;
SIGNAL \semaforo|count~5_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[25]~clkctrl_outclk\ : std_logic;
SIGNAL \GPIO_0[1]~0\ : std_logic;
SIGNAL \GPIO_0[2]~1\ : std_logic;
SIGNAL \semaforo|count~2_combout\ : std_logic;
SIGNAL \semaforo|Add0~1_combout\ : std_logic;
SIGNAL \semaforo|count~4_combout\ : std_logic;
SIGNAL \semaforo|LessThan0~0_combout\ : std_logic;
SIGNAL \semaforo|state_reg[1]~0_combout\ : std_logic;
SIGNAL \semaforo|count[3]~0_combout\ : std_logic;
SIGNAL \semaforo|count[3]~1_combout\ : std_logic;
SIGNAL \semaforo|count~3_combout\ : std_logic;
SIGNAL \semaforo|Add0~0_combout\ : std_logic;
SIGNAL \semaforo|state_reg[0]~1_combout\ : std_logic;
SIGNAL \semaforo|Equal0~0_combout\ : std_logic;
SIGNAL \semaforo|Equal1~0_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[0]~75_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[1]~26\ : std_logic;
SIGNAL \clock_filter|clk_counter[2]~28\ : std_logic;
SIGNAL \clock_filter|clk_counter[3]~30\ : std_logic;
SIGNAL \clock_filter|clk_counter[4]~31_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[4]~32\ : std_logic;
SIGNAL \clock_filter|clk_counter[5]~34\ : std_logic;
SIGNAL \clock_filter|clk_counter[6]~35_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[6]~36\ : std_logic;
SIGNAL \clock_filter|clk_counter[7]~38\ : std_logic;
SIGNAL \clock_filter|clk_counter[8]~39_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[8]~40\ : std_logic;
SIGNAL \clock_filter|clk_counter[9]~42\ : std_logic;
SIGNAL \clock_filter|clk_counter[10]~43_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[10]~44\ : std_logic;
SIGNAL \clock_filter|clk_counter[11]~45_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[11]~46\ : std_logic;
SIGNAL \clock_filter|clk_counter[12]~47_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[12]~48\ : std_logic;
SIGNAL \clock_filter|clk_counter[13]~49_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[13]~50\ : std_logic;
SIGNAL \clock_filter|clk_counter[14]~51_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[14]~52\ : std_logic;
SIGNAL \clock_filter|clk_counter[15]~53_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[15]~54\ : std_logic;
SIGNAL \clock_filter|clk_counter[16]~56\ : std_logic;
SIGNAL \clock_filter|clk_counter[17]~57_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[17]~58\ : std_logic;
SIGNAL \clock_filter|clk_counter[18]~60\ : std_logic;
SIGNAL \clock_filter|clk_counter[19]~62\ : std_logic;
SIGNAL \clock_filter|clk_counter[20]~63_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[20]~64\ : std_logic;
SIGNAL \clock_filter|clk_counter[21]~66\ : std_logic;
SIGNAL \clock_filter|clk_counter[22]~67_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter[22]~68\ : std_logic;
SIGNAL \clock_filter|clk_counter[23]~70\ : std_logic;
SIGNAL \clock_filter|clk_counter[24]~71_combout\ : std_logic;
SIGNAL \semaforo|p_light_A_GREEN~0_combout\ : std_logic;
SIGNAL \semaforo|Equal1~1_combout\ : std_logic;
SIGNAL \semaforo|Equal1~2_combout\ : std_logic;
SIGNAL \semaforo|p_light_B_GREEN~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \clock_filter|clk_counter[24]~72\ : std_logic;
SIGNAL \clock_filter|clk_counter[25]~73_combout\ : std_logic;
SIGNAL \clock_filter|clk_counter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \semaforo|state_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \semaforo|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \semaforo|ALT_INV_state_reg\ : std_logic_vector(1 DOWNTO 1);

BEGIN

ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_filter|clk_counter[25]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_filter|clk_counter\(25));

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\semaforo|ALT_INV_state_reg\(1) <= NOT \semaforo|state_reg\(1);

-- Location: LCFF_X64_Y19_N21
\clock_filter|clk_counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(23));

-- Location: LCFF_X64_Y19_N17
\clock_filter|clk_counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(21));

-- Location: LCFF_X64_Y19_N13
\clock_filter|clk_counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(19));

-- Location: LCFF_X64_Y19_N11
\clock_filter|clk_counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(18));

-- Location: LCFF_X64_Y19_N7
\clock_filter|clk_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(16));

-- Location: LCFF_X64_Y20_N25
\clock_filter|clk_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(9));

-- Location: LCFF_X64_Y20_N21
\clock_filter|clk_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(7));

-- Location: LCFF_X64_Y20_N17
\clock_filter|clk_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(5));

-- Location: LCFF_X64_Y20_N13
\clock_filter|clk_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(3));

-- Location: LCFF_X64_Y20_N11
\clock_filter|clk_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(2));

-- Location: LCFF_X64_Y20_N9
\clock_filter|clk_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(1));

-- Location: LCCOMB_X64_Y20_N8
\clock_filter|clk_counter[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[1]~25_combout\ = (\clock_filter|clk_counter\(1) & (\clock_filter|clk_counter\(0) $ (VCC))) # (!\clock_filter|clk_counter\(1) & (\clock_filter|clk_counter\(0) & VCC))
-- \clock_filter|clk_counter[1]~26\ = CARRY((\clock_filter|clk_counter\(1) & \clock_filter|clk_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(1),
	datab => \clock_filter|clk_counter\(0),
	datad => VCC,
	combout => \clock_filter|clk_counter[1]~25_combout\,
	cout => \clock_filter|clk_counter[1]~26\);

-- Location: LCCOMB_X64_Y20_N10
\clock_filter|clk_counter[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[2]~27_combout\ = (\clock_filter|clk_counter\(2) & (!\clock_filter|clk_counter[1]~26\)) # (!\clock_filter|clk_counter\(2) & ((\clock_filter|clk_counter[1]~26\) # (GND)))
-- \clock_filter|clk_counter[2]~28\ = CARRY((!\clock_filter|clk_counter[1]~26\) # (!\clock_filter|clk_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(2),
	datad => VCC,
	cin => \clock_filter|clk_counter[1]~26\,
	combout => \clock_filter|clk_counter[2]~27_combout\,
	cout => \clock_filter|clk_counter[2]~28\);

-- Location: LCCOMB_X64_Y20_N12
\clock_filter|clk_counter[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[3]~29_combout\ = (\clock_filter|clk_counter\(3) & (\clock_filter|clk_counter[2]~28\ $ (GND))) # (!\clock_filter|clk_counter\(3) & (!\clock_filter|clk_counter[2]~28\ & VCC))
-- \clock_filter|clk_counter[3]~30\ = CARRY((\clock_filter|clk_counter\(3) & !\clock_filter|clk_counter[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(3),
	datad => VCC,
	cin => \clock_filter|clk_counter[2]~28\,
	combout => \clock_filter|clk_counter[3]~29_combout\,
	cout => \clock_filter|clk_counter[3]~30\);

-- Location: LCCOMB_X64_Y20_N16
\clock_filter|clk_counter[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[5]~33_combout\ = (\clock_filter|clk_counter\(5) & (\clock_filter|clk_counter[4]~32\ $ (GND))) # (!\clock_filter|clk_counter\(5) & (!\clock_filter|clk_counter[4]~32\ & VCC))
-- \clock_filter|clk_counter[5]~34\ = CARRY((\clock_filter|clk_counter\(5) & !\clock_filter|clk_counter[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(5),
	datad => VCC,
	cin => \clock_filter|clk_counter[4]~32\,
	combout => \clock_filter|clk_counter[5]~33_combout\,
	cout => \clock_filter|clk_counter[5]~34\);

-- Location: LCCOMB_X64_Y20_N20
\clock_filter|clk_counter[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[7]~37_combout\ = (\clock_filter|clk_counter\(7) & (\clock_filter|clk_counter[6]~36\ $ (GND))) # (!\clock_filter|clk_counter\(7) & (!\clock_filter|clk_counter[6]~36\ & VCC))
-- \clock_filter|clk_counter[7]~38\ = CARRY((\clock_filter|clk_counter\(7) & !\clock_filter|clk_counter[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(7),
	datad => VCC,
	cin => \clock_filter|clk_counter[6]~36\,
	combout => \clock_filter|clk_counter[7]~37_combout\,
	cout => \clock_filter|clk_counter[7]~38\);

-- Location: LCCOMB_X64_Y20_N24
\clock_filter|clk_counter[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[9]~41_combout\ = (\clock_filter|clk_counter\(9) & (\clock_filter|clk_counter[8]~40\ $ (GND))) # (!\clock_filter|clk_counter\(9) & (!\clock_filter|clk_counter[8]~40\ & VCC))
-- \clock_filter|clk_counter[9]~42\ = CARRY((\clock_filter|clk_counter\(9) & !\clock_filter|clk_counter[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(9),
	datad => VCC,
	cin => \clock_filter|clk_counter[8]~40\,
	combout => \clock_filter|clk_counter[9]~41_combout\,
	cout => \clock_filter|clk_counter[9]~42\);

-- Location: LCCOMB_X64_Y19_N6
\clock_filter|clk_counter[16]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[16]~55_combout\ = (\clock_filter|clk_counter\(16) & (!\clock_filter|clk_counter[15]~54\)) # (!\clock_filter|clk_counter\(16) & ((\clock_filter|clk_counter[15]~54\) # (GND)))
-- \clock_filter|clk_counter[16]~56\ = CARRY((!\clock_filter|clk_counter[15]~54\) # (!\clock_filter|clk_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(16),
	datad => VCC,
	cin => \clock_filter|clk_counter[15]~54\,
	combout => \clock_filter|clk_counter[16]~55_combout\,
	cout => \clock_filter|clk_counter[16]~56\);

-- Location: LCCOMB_X64_Y19_N10
\clock_filter|clk_counter[18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[18]~59_combout\ = (\clock_filter|clk_counter\(18) & (!\clock_filter|clk_counter[17]~58\)) # (!\clock_filter|clk_counter\(18) & ((\clock_filter|clk_counter[17]~58\) # (GND)))
-- \clock_filter|clk_counter[18]~60\ = CARRY((!\clock_filter|clk_counter[17]~58\) # (!\clock_filter|clk_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(18),
	datad => VCC,
	cin => \clock_filter|clk_counter[17]~58\,
	combout => \clock_filter|clk_counter[18]~59_combout\,
	cout => \clock_filter|clk_counter[18]~60\);

-- Location: LCCOMB_X64_Y19_N12
\clock_filter|clk_counter[19]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[19]~61_combout\ = (\clock_filter|clk_counter\(19) & (\clock_filter|clk_counter[18]~60\ $ (GND))) # (!\clock_filter|clk_counter\(19) & (!\clock_filter|clk_counter[18]~60\ & VCC))
-- \clock_filter|clk_counter[19]~62\ = CARRY((\clock_filter|clk_counter\(19) & !\clock_filter|clk_counter[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(19),
	datad => VCC,
	cin => \clock_filter|clk_counter[18]~60\,
	combout => \clock_filter|clk_counter[19]~61_combout\,
	cout => \clock_filter|clk_counter[19]~62\);

-- Location: LCCOMB_X64_Y19_N16
\clock_filter|clk_counter[21]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[21]~65_combout\ = (\clock_filter|clk_counter\(21) & (\clock_filter|clk_counter[20]~64\ $ (GND))) # (!\clock_filter|clk_counter\(21) & (!\clock_filter|clk_counter[20]~64\ & VCC))
-- \clock_filter|clk_counter[21]~66\ = CARRY((\clock_filter|clk_counter\(21) & !\clock_filter|clk_counter[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(21),
	datad => VCC,
	cin => \clock_filter|clk_counter[20]~64\,
	combout => \clock_filter|clk_counter[21]~65_combout\,
	cout => \clock_filter|clk_counter[21]~66\);

-- Location: LCCOMB_X64_Y19_N20
\clock_filter|clk_counter[23]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[23]~69_combout\ = (\clock_filter|clk_counter\(23) & (\clock_filter|clk_counter[22]~68\ $ (GND))) # (!\clock_filter|clk_counter\(23) & (!\clock_filter|clk_counter[22]~68\ & VCC))
-- \clock_filter|clk_counter[23]~70\ = CARRY((\clock_filter|clk_counter\(23) & !\clock_filter|clk_counter[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(23),
	datad => VCC,
	cin => \clock_filter|clk_counter[22]~68\,
	combout => \clock_filter|clk_counter[23]~69_combout\,
	cout => \clock_filter|clk_counter[23]~70\);

-- Location: LCFF_X64_Y26_N21
\semaforo|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_filter|clk_counter[25]~clkctrl_outclk\,
	datain => \semaforo|count~5_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \semaforo|count\(2));

-- Location: LCCOMB_X64_Y26_N20
\semaforo|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|count~5_combout\ = (\semaforo|LessThan0~0_combout\ & ((\semaforo|count[3]~1_combout\) # (\semaforo|Add0~0_combout\ $ (\semaforo|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo|LessThan0~0_combout\,
	datab => \semaforo|Add0~0_combout\,
	datac => \semaforo|count\(2),
	datad => \semaforo|count[3]~1_combout\,
	combout => \semaforo|count~5_combout\);

-- Location: CLKCTRL_G6
\clock_filter|clk_counter[25]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_filter|clk_counter[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_filter|clk_counter[25]~clkctrl_outclk\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(1),
	combout => \GPIO_0[1]~0\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(2),
	combout => \GPIO_0[2]~1\);

-- Location: LCCOMB_X64_Y26_N28
\semaforo|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|count~2_combout\ = (\semaforo|LessThan0~0_combout\ & (!\semaforo|count[3]~1_combout\ & (\semaforo|count\(0) $ (\semaforo|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo|LessThan0~0_combout\,
	datab => \semaforo|count\(0),
	datac => \semaforo|count\(1),
	datad => \semaforo|count[3]~1_combout\,
	combout => \semaforo|count~2_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCFF_X64_Y26_N29
\semaforo|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_filter|clk_counter[25]~clkctrl_outclk\,
	datain => \semaforo|count~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \semaforo|count\(1));

-- Location: LCCOMB_X64_Y26_N4
\semaforo|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|Add0~1_combout\ = \semaforo|count\(3) $ (((\semaforo|count\(2) & (\semaforo|count\(1) & \semaforo|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo|count\(2),
	datab => \semaforo|count\(1),
	datac => \semaforo|count\(0),
	datad => \semaforo|count\(3),
	combout => \semaforo|Add0~1_combout\);

-- Location: LCCOMB_X64_Y26_N22
\semaforo|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|count~4_combout\ = (\semaforo|LessThan0~0_combout\ & ((\semaforo|Add0~1_combout\) # (\semaforo|count[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo|LessThan0~0_combout\,
	datac => \semaforo|Add0~1_combout\,
	datad => \semaforo|count[3]~1_combout\,
	combout => \semaforo|count~4_combout\);

-- Location: LCFF_X64_Y26_N23
\semaforo|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_filter|clk_counter[25]~clkctrl_outclk\,
	datain => \semaforo|count~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \semaforo|count\(3));

-- Location: LCCOMB_X64_Y26_N10
\semaforo|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|LessThan0~0_combout\ = (\semaforo|count\(2) & (!\semaforo|count\(3) & (!\semaforo|state_reg\(0)))) # (!\semaforo|count\(2) & (((!\semaforo|count\(3) & !\semaforo|Add0~0_combout\)) # (!\semaforo|state_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo|count\(2),
	datab => \semaforo|count\(3),
	datac => \semaforo|state_reg\(0),
	datad => \semaforo|Add0~0_combout\,
	combout => \semaforo|LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y26_N12
\semaforo|state_reg[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|state_reg[1]~0_combout\ = \semaforo|state_reg\(1) $ (((\semaforo|state_reg\(0) & !\semaforo|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo|state_reg\(0),
	datac => \semaforo|state_reg\(1),
	datad => \semaforo|LessThan0~0_combout\,
	combout => \semaforo|state_reg[1]~0_combout\);

-- Location: LCFF_X64_Y26_N13
\semaforo|state_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_filter|clk_counter[25]~clkctrl_outclk\,
	datain => \semaforo|state_reg[1]~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \semaforo|state_reg\(1));

-- Location: LCCOMB_X64_Y26_N8
\semaforo|count[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|count[3]~0_combout\ = (!\semaforo|state_reg\(0) & ((\semaforo|state_reg\(1) & (\GPIO_0[2]~1\)) # (!\semaforo|state_reg\(1) & ((\GPIO_0[1]~0\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[2]~1\,
	datab => \semaforo|state_reg\(0),
	datac => \GPIO_0[1]~0\,
	datad => \semaforo|state_reg\(1),
	combout => \semaforo|count[3]~0_combout\);

-- Location: LCCOMB_X64_Y26_N26
\semaforo|count[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|count[3]~1_combout\ = (\semaforo|count[3]~0_combout\ & (((!\semaforo|count\(2) & !\semaforo|Add0~0_combout\)) # (!\semaforo|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo|count\(2),
	datab => \semaforo|count\(3),
	datac => \semaforo|count[3]~0_combout\,
	datad => \semaforo|Add0~0_combout\,
	combout => \semaforo|count[3]~1_combout\);

-- Location: LCCOMB_X64_Y26_N14
\semaforo|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|count~3_combout\ = (\semaforo|LessThan0~0_combout\ & (!\semaforo|count\(0) & !\semaforo|count[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo|LessThan0~0_combout\,
	datac => \semaforo|count\(0),
	datad => \semaforo|count[3]~1_combout\,
	combout => \semaforo|count~3_combout\);

-- Location: LCFF_X64_Y26_N15
\semaforo|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_filter|clk_counter[25]~clkctrl_outclk\,
	datain => \semaforo|count~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \semaforo|count\(0));

-- Location: LCCOMB_X64_Y26_N0
\semaforo|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|Add0~0_combout\ = (\semaforo|count\(0) & \semaforo|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \semaforo|count\(0),
	datad => \semaforo|count\(1),
	combout => \semaforo|Add0~0_combout\);

-- Location: LCCOMB_X64_Y26_N30
\semaforo|state_reg[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|state_reg[0]~1_combout\ = (\semaforo|count\(2) & (((!\semaforo|state_reg\(0) & \semaforo|count\(3))))) # (!\semaforo|count\(2) & (!\semaforo|Add0~0_combout\ & (\semaforo|state_reg\(0) & !\semaforo|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo|count\(2),
	datab => \semaforo|Add0~0_combout\,
	datac => \semaforo|state_reg\(0),
	datad => \semaforo|count\(3),
	combout => \semaforo|state_reg[0]~1_combout\);

-- Location: LCFF_X64_Y26_N31
\semaforo|state_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_filter|clk_counter[25]~clkctrl_outclk\,
	datain => \semaforo|state_reg[0]~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \semaforo|state_reg\(0));

-- Location: LCCOMB_X64_Y28_N0
\semaforo|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|Equal0~0_combout\ = (!\semaforo|state_reg\(0) & !\semaforo|state_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \semaforo|state_reg\(0),
	datad => \semaforo|state_reg\(1),
	combout => \semaforo|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y28_N14
\semaforo|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|Equal1~0_combout\ = (\semaforo|state_reg\(0) & !\semaforo|state_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \semaforo|state_reg\(0),
	datad => \semaforo|state_reg\(1),
	combout => \semaforo|Equal1~0_combout\);

-- Location: LCCOMB_X64_Y20_N4
\clock_filter|clk_counter[0]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[0]~75_combout\ = !\clock_filter|clk_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_filter|clk_counter\(0),
	combout => \clock_filter|clk_counter[0]~75_combout\);

-- Location: LCFF_X64_Y20_N5
\clock_filter|clk_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(0));

-- Location: LCCOMB_X64_Y20_N14
\clock_filter|clk_counter[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[4]~31_combout\ = (\clock_filter|clk_counter\(4) & (!\clock_filter|clk_counter[3]~30\)) # (!\clock_filter|clk_counter\(4) & ((\clock_filter|clk_counter[3]~30\) # (GND)))
-- \clock_filter|clk_counter[4]~32\ = CARRY((!\clock_filter|clk_counter[3]~30\) # (!\clock_filter|clk_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(4),
	datad => VCC,
	cin => \clock_filter|clk_counter[3]~30\,
	combout => \clock_filter|clk_counter[4]~31_combout\,
	cout => \clock_filter|clk_counter[4]~32\);

-- Location: LCFF_X64_Y20_N15
\clock_filter|clk_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(4));

-- Location: LCCOMB_X64_Y20_N18
\clock_filter|clk_counter[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[6]~35_combout\ = (\clock_filter|clk_counter\(6) & (!\clock_filter|clk_counter[5]~34\)) # (!\clock_filter|clk_counter\(6) & ((\clock_filter|clk_counter[5]~34\) # (GND)))
-- \clock_filter|clk_counter[6]~36\ = CARRY((!\clock_filter|clk_counter[5]~34\) # (!\clock_filter|clk_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(6),
	datad => VCC,
	cin => \clock_filter|clk_counter[5]~34\,
	combout => \clock_filter|clk_counter[6]~35_combout\,
	cout => \clock_filter|clk_counter[6]~36\);

-- Location: LCFF_X64_Y20_N19
\clock_filter|clk_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(6));

-- Location: LCCOMB_X64_Y20_N22
\clock_filter|clk_counter[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[8]~39_combout\ = (\clock_filter|clk_counter\(8) & (!\clock_filter|clk_counter[7]~38\)) # (!\clock_filter|clk_counter\(8) & ((\clock_filter|clk_counter[7]~38\) # (GND)))
-- \clock_filter|clk_counter[8]~40\ = CARRY((!\clock_filter|clk_counter[7]~38\) # (!\clock_filter|clk_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(8),
	datad => VCC,
	cin => \clock_filter|clk_counter[7]~38\,
	combout => \clock_filter|clk_counter[8]~39_combout\,
	cout => \clock_filter|clk_counter[8]~40\);

-- Location: LCFF_X64_Y20_N23
\clock_filter|clk_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(8));

-- Location: LCCOMB_X64_Y20_N26
\clock_filter|clk_counter[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[10]~43_combout\ = (\clock_filter|clk_counter\(10) & (!\clock_filter|clk_counter[9]~42\)) # (!\clock_filter|clk_counter\(10) & ((\clock_filter|clk_counter[9]~42\) # (GND)))
-- \clock_filter|clk_counter[10]~44\ = CARRY((!\clock_filter|clk_counter[9]~42\) # (!\clock_filter|clk_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(10),
	datad => VCC,
	cin => \clock_filter|clk_counter[9]~42\,
	combout => \clock_filter|clk_counter[10]~43_combout\,
	cout => \clock_filter|clk_counter[10]~44\);

-- Location: LCFF_X64_Y20_N27
\clock_filter|clk_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(10));

-- Location: LCCOMB_X64_Y20_N28
\clock_filter|clk_counter[11]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[11]~45_combout\ = (\clock_filter|clk_counter\(11) & (\clock_filter|clk_counter[10]~44\ $ (GND))) # (!\clock_filter|clk_counter\(11) & (!\clock_filter|clk_counter[10]~44\ & VCC))
-- \clock_filter|clk_counter[11]~46\ = CARRY((\clock_filter|clk_counter\(11) & !\clock_filter|clk_counter[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(11),
	datad => VCC,
	cin => \clock_filter|clk_counter[10]~44\,
	combout => \clock_filter|clk_counter[11]~45_combout\,
	cout => \clock_filter|clk_counter[11]~46\);

-- Location: LCFF_X64_Y20_N29
\clock_filter|clk_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(11));

-- Location: LCCOMB_X64_Y20_N30
\clock_filter|clk_counter[12]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[12]~47_combout\ = (\clock_filter|clk_counter\(12) & (!\clock_filter|clk_counter[11]~46\)) # (!\clock_filter|clk_counter\(12) & ((\clock_filter|clk_counter[11]~46\) # (GND)))
-- \clock_filter|clk_counter[12]~48\ = CARRY((!\clock_filter|clk_counter[11]~46\) # (!\clock_filter|clk_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(12),
	datad => VCC,
	cin => \clock_filter|clk_counter[11]~46\,
	combout => \clock_filter|clk_counter[12]~47_combout\,
	cout => \clock_filter|clk_counter[12]~48\);

-- Location: LCFF_X64_Y20_N31
\clock_filter|clk_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(12));

-- Location: LCCOMB_X64_Y19_N0
\clock_filter|clk_counter[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[13]~49_combout\ = (\clock_filter|clk_counter\(13) & (\clock_filter|clk_counter[12]~48\ $ (GND))) # (!\clock_filter|clk_counter\(13) & (!\clock_filter|clk_counter[12]~48\ & VCC))
-- \clock_filter|clk_counter[13]~50\ = CARRY((\clock_filter|clk_counter\(13) & !\clock_filter|clk_counter[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(13),
	datad => VCC,
	cin => \clock_filter|clk_counter[12]~48\,
	combout => \clock_filter|clk_counter[13]~49_combout\,
	cout => \clock_filter|clk_counter[13]~50\);

-- Location: LCFF_X64_Y19_N1
\clock_filter|clk_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(13));

-- Location: LCCOMB_X64_Y19_N2
\clock_filter|clk_counter[14]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[14]~51_combout\ = (\clock_filter|clk_counter\(14) & (!\clock_filter|clk_counter[13]~50\)) # (!\clock_filter|clk_counter\(14) & ((\clock_filter|clk_counter[13]~50\) # (GND)))
-- \clock_filter|clk_counter[14]~52\ = CARRY((!\clock_filter|clk_counter[13]~50\) # (!\clock_filter|clk_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(14),
	datad => VCC,
	cin => \clock_filter|clk_counter[13]~50\,
	combout => \clock_filter|clk_counter[14]~51_combout\,
	cout => \clock_filter|clk_counter[14]~52\);

-- Location: LCFF_X64_Y19_N3
\clock_filter|clk_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(14));

-- Location: LCCOMB_X64_Y19_N4
\clock_filter|clk_counter[15]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[15]~53_combout\ = (\clock_filter|clk_counter\(15) & (\clock_filter|clk_counter[14]~52\ $ (GND))) # (!\clock_filter|clk_counter\(15) & (!\clock_filter|clk_counter[14]~52\ & VCC))
-- \clock_filter|clk_counter[15]~54\ = CARRY((\clock_filter|clk_counter\(15) & !\clock_filter|clk_counter[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(15),
	datad => VCC,
	cin => \clock_filter|clk_counter[14]~52\,
	combout => \clock_filter|clk_counter[15]~53_combout\,
	cout => \clock_filter|clk_counter[15]~54\);

-- Location: LCFF_X64_Y19_N5
\clock_filter|clk_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(15));

-- Location: LCCOMB_X64_Y19_N8
\clock_filter|clk_counter[17]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[17]~57_combout\ = (\clock_filter|clk_counter\(17) & (\clock_filter|clk_counter[16]~56\ $ (GND))) # (!\clock_filter|clk_counter\(17) & (!\clock_filter|clk_counter[16]~56\ & VCC))
-- \clock_filter|clk_counter[17]~58\ = CARRY((\clock_filter|clk_counter\(17) & !\clock_filter|clk_counter[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(17),
	datad => VCC,
	cin => \clock_filter|clk_counter[16]~56\,
	combout => \clock_filter|clk_counter[17]~57_combout\,
	cout => \clock_filter|clk_counter[17]~58\);

-- Location: LCFF_X64_Y19_N9
\clock_filter|clk_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(17));

-- Location: LCCOMB_X64_Y19_N14
\clock_filter|clk_counter[20]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[20]~63_combout\ = (\clock_filter|clk_counter\(20) & (!\clock_filter|clk_counter[19]~62\)) # (!\clock_filter|clk_counter\(20) & ((\clock_filter|clk_counter[19]~62\) # (GND)))
-- \clock_filter|clk_counter[20]~64\ = CARRY((!\clock_filter|clk_counter[19]~62\) # (!\clock_filter|clk_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(20),
	datad => VCC,
	cin => \clock_filter|clk_counter[19]~62\,
	combout => \clock_filter|clk_counter[20]~63_combout\,
	cout => \clock_filter|clk_counter[20]~64\);

-- Location: LCFF_X64_Y19_N15
\clock_filter|clk_counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(20));

-- Location: LCCOMB_X64_Y19_N18
\clock_filter|clk_counter[22]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[22]~67_combout\ = (\clock_filter|clk_counter\(22) & (!\clock_filter|clk_counter[21]~66\)) # (!\clock_filter|clk_counter\(22) & ((\clock_filter|clk_counter[21]~66\) # (GND)))
-- \clock_filter|clk_counter[22]~68\ = CARRY((!\clock_filter|clk_counter[21]~66\) # (!\clock_filter|clk_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(22),
	datad => VCC,
	cin => \clock_filter|clk_counter[21]~66\,
	combout => \clock_filter|clk_counter[22]~67_combout\,
	cout => \clock_filter|clk_counter[22]~68\);

-- Location: LCFF_X64_Y19_N19
\clock_filter|clk_counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(22));

-- Location: LCCOMB_X64_Y19_N22
\clock_filter|clk_counter[24]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[24]~71_combout\ = (\clock_filter|clk_counter\(24) & (!\clock_filter|clk_counter[23]~70\)) # (!\clock_filter|clk_counter\(24) & ((\clock_filter|clk_counter[23]~70\) # (GND)))
-- \clock_filter|clk_counter[24]~72\ = CARRY((!\clock_filter|clk_counter[23]~70\) # (!\clock_filter|clk_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_filter|clk_counter\(24),
	datad => VCC,
	cin => \clock_filter|clk_counter[23]~70\,
	combout => \clock_filter|clk_counter[24]~71_combout\,
	cout => \clock_filter|clk_counter[24]~72\);

-- Location: LCFF_X64_Y19_N23
\clock_filter|clk_counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(24));

-- Location: LCCOMB_X64_Y26_N24
\semaforo|p_light_A_GREEN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|p_light_A_GREEN~0_combout\ = (\semaforo|state_reg\(1) & ((\clock_filter|clk_counter\(24)) # (!\semaforo|state_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo|state_reg\(0),
	datac => \semaforo|state_reg\(1),
	datad => \clock_filter|clk_counter\(24),
	combout => \semaforo|p_light_A_GREEN~0_combout\);

-- Location: LCCOMB_X64_Y26_N6
\semaforo|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|Equal1~1_combout\ = (\semaforo|state_reg\(1) & !\semaforo|state_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \semaforo|state_reg\(1),
	datac => \semaforo|state_reg\(0),
	combout => \semaforo|Equal1~1_combout\);

-- Location: LCCOMB_X64_Y26_N16
\semaforo|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|Equal1~2_combout\ = (\semaforo|state_reg\(1) & \semaforo|state_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \semaforo|state_reg\(1),
	datac => \semaforo|state_reg\(0),
	combout => \semaforo|Equal1~2_combout\);

-- Location: LCCOMB_X64_Y26_N18
\semaforo|p_light_B_GREEN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \semaforo|p_light_B_GREEN~0_combout\ = (!\semaforo|state_reg\(1) & ((\clock_filter|clk_counter\(24)) # (!\semaforo|state_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo|state_reg\(0),
	datac => \semaforo|state_reg\(1),
	datad => \clock_filter|clk_counter\(24),
	combout => \semaforo|p_light_B_GREEN~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y19_N24
\clock_filter|clk_counter[25]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_filter|clk_counter[25]~73_combout\ = \clock_filter|clk_counter\(25) $ (!\clock_filter|clk_counter[24]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_filter|clk_counter\(25),
	cin => \clock_filter|clk_counter[24]~72\,
	combout => \clock_filter|clk_counter[25]~73_combout\);

-- Location: LCFF_X64_Y19_N25
\clock_filter|clk_counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_filter|clk_counter[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_filter|clk_counter\(25));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(0));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(3));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(4));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(5));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(6));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(7));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(8));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(9));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(10));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(11));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(15));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(18));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(19));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(23));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(26));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(27));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(28));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(29));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(30));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(31));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \semaforo|Equal0~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(12));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \semaforo|Equal1~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(13));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \semaforo|state_reg\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(14));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \semaforo|p_light_A_GREEN~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(16));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \semaforo|ALT_INV_state_reg\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(17));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \semaforo|Equal1~1_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(20));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \semaforo|Equal1~2_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(21));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \semaforo|ALT_INV_state_reg\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(22));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \semaforo|p_light_B_GREEN~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(24));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \semaforo|state_reg\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(25));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \clock_filter|clk_counter\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \clock_filter|clk_counter\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_0[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_0[2]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(8));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(9));
END structure;


