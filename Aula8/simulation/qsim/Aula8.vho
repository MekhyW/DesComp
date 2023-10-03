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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "09/27/2023 08:19:28"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula8 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Aula8;

ARCHITECTURE structure OF Aula8 IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \CPU|REGFlagIgual|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~9_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~34\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[9]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[5]~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[6]~3_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal11~1_combout\ : std_logic;
SIGNAL \DECODER_2to0|Equal7~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[1]~4_combout\ : std_logic;
SIGNAL \RAM_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \RAM_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \RAM_Data_IN[0]~2_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \RAM_Data_IN[0]~3_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal11~0_combout\ : std_logic;
SIGNAL \DECODER_8to6|Equal7~0_combout\ : std_logic;
SIGNAL \RAM0|ram~591_combout\ : std_logic;
SIGNAL \RAM0|ram~279_q\ : std_logic;
SIGNAL \RAM0|ram~592_combout\ : std_logic;
SIGNAL \RAM0|ram~295_q\ : std_logic;
SIGNAL \RAM0|ram~594_combout\ : std_logic;
SIGNAL \RAM0|ram~287_q\ : std_logic;
SIGNAL \RAM0|ram~595_combout\ : std_logic;
SIGNAL \RAM0|ram~23_q\ : std_logic;
SIGNAL \RAM0|ram~596_combout\ : std_logic;
SIGNAL \RAM0|ram~39_q\ : std_logic;
SIGNAL \RAM0|ram~598_combout\ : std_logic;
SIGNAL \RAM0|ram~31_q\ : std_logic;
SIGNAL \RAM0|ram~597_combout\ : std_logic;
SIGNAL \RAM0|ram~15_q\ : std_logic;
SIGNAL \RAM0|ram~559_combout\ : std_logic;
SIGNAL \RAM0|ram~593_combout\ : std_logic;
SIGNAL \RAM0|ram~271_q\ : std_logic;
SIGNAL \RAM0|ram~527_combout\ : std_logic;
SIGNAL \RAM_Data_IN[0]~4_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \RAM_Data_IN[0]~8_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \RAM_Data_IN[0]~9_combout\ : std_logic;
SIGNAL \RAM_Data_IN[0]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \RAM_Data_IN[0]~5_combout\ : std_logic;
SIGNAL \RAM_Data_IN[0]~6_combout\ : std_logic;
SIGNAL \RAM_Data_IN[0]~7_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~6_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[5]~5_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \RAM0|ram~282_q\ : std_logic;
SIGNAL \RAM0|ram~298_q\ : std_logic;
SIGNAL \RAM0|ram~290_q\ : std_logic;
SIGNAL \RAM0|ram~26_q\ : std_logic;
SIGNAL \RAM0|ram~42_q\ : std_logic;
SIGNAL \RAM0|ram~34_q\ : std_logic;
SIGNAL \RAM0|ram~18_q\ : std_logic;
SIGNAL \RAM0|ram~563_combout\ : std_logic;
SIGNAL \RAM0|ram~274_q\ : std_logic;
SIGNAL \RAM0|ram~531_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~8_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM0|ram~280_q\ : std_logic;
SIGNAL \RAM0|ram~296_q\ : std_logic;
SIGNAL \RAM0|ram~288_q\ : std_logic;
SIGNAL \RAM0|ram~24_q\ : std_logic;
SIGNAL \RAM0|ram~40_q\ : std_logic;
SIGNAL \RAM0|ram~32_q\ : std_logic;
SIGNAL \RAM0|ram~16_q\ : std_logic;
SIGNAL \RAM0|ram~571_combout\ : std_logic;
SIGNAL \RAM0|ram~272_q\ : std_logic;
SIGNAL \RAM0|ram~539_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM0|ram~281_q\ : std_logic;
SIGNAL \RAM0|ram~297_q\ : std_logic;
SIGNAL \RAM0|ram~289_q\ : std_logic;
SIGNAL \RAM0|ram~25_q\ : std_logic;
SIGNAL \RAM0|ram~41_q\ : std_logic;
SIGNAL \RAM0|ram~33_q\ : std_logic;
SIGNAL \RAM0|ram~17_q\ : std_logic;
SIGNAL \RAM0|ram~567_combout\ : std_logic;
SIGNAL \RAM0|ram~273_q\ : std_logic;
SIGNAL \RAM0|ram~535_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \DecoderHex0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DecoderHex0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DecoderHex0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DecoderHex0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DecoderHex0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DecoderHex0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DecoderHex0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \DecoderHex1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DecoderHex1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DecoderHex1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DecoderHex1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DecoderHex1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DecoderHex1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DecoderHex1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \DecoderHex2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DecoderHex2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DecoderHex2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DecoderHex2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DecoderHex2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DecoderHex2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DecoderHex2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \DecoderHex3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DecoderHex3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DecoderHex3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DecoderHex3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DecoderHex3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DecoderHex3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DecoderHex3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \pc_hex0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \pc_hex0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \pc_hex0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \pc_hex0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \pc_hex0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \pc_hex0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \pc_hex0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \RAM0|ram~283_q\ : std_logic;
SIGNAL \RAM0|ram~299_q\ : std_logic;
SIGNAL \RAM0|ram~291_q\ : std_logic;
SIGNAL \RAM0|ram~27_q\ : std_logic;
SIGNAL \RAM0|ram~43_q\ : std_logic;
SIGNAL \RAM0|ram~35_q\ : std_logic;
SIGNAL \RAM0|ram~19_q\ : std_logic;
SIGNAL \RAM0|ram~583_combout\ : std_logic;
SIGNAL \RAM0|ram~275_q\ : std_logic;
SIGNAL \RAM0|ram~551_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \RAM0|ram~284_q\ : std_logic;
SIGNAL \RAM0|ram~300_q\ : std_logic;
SIGNAL \RAM0|ram~292_q\ : std_logic;
SIGNAL \RAM0|ram~28_q\ : std_logic;
SIGNAL \RAM0|ram~44_q\ : std_logic;
SIGNAL \RAM0|ram~36_q\ : std_logic;
SIGNAL \RAM0|ram~20_q\ : std_logic;
SIGNAL \RAM0|ram~575_combout\ : std_logic;
SIGNAL \RAM0|ram~276_q\ : std_logic;
SIGNAL \RAM0|ram~543_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \RAM0|ram~285_q\ : std_logic;
SIGNAL \RAM0|ram~301_q\ : std_logic;
SIGNAL \RAM0|ram~293_q\ : std_logic;
SIGNAL \RAM0|ram~29_q\ : std_logic;
SIGNAL \RAM0|ram~45_q\ : std_logic;
SIGNAL \RAM0|ram~37_q\ : std_logic;
SIGNAL \RAM0|ram~21_q\ : std_logic;
SIGNAL \RAM0|ram~579_combout\ : std_logic;
SIGNAL \RAM0|ram~277_q\ : std_logic;
SIGNAL \RAM0|ram~547_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \RAM0|ram~286_q\ : std_logic;
SIGNAL \RAM0|ram~302_q\ : std_logic;
SIGNAL \RAM0|ram~294_q\ : std_logic;
SIGNAL \RAM0|ram~30_q\ : std_logic;
SIGNAL \RAM0|ram~46_q\ : std_logic;
SIGNAL \RAM0|ram~38_q\ : std_logic;
SIGNAL \RAM0|ram~22_q\ : std_logic;
SIGNAL \RAM0|ram~587_combout\ : std_logic;
SIGNAL \RAM0|ram~278_q\ : std_logic;
SIGNAL \RAM0|ram~555_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \RegLed8|DOUT~0_combout\ : std_logic;
SIGNAL \RegLed8|DOUT~q\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \RegLed9|DOUT~0_combout\ : std_logic;
SIGNAL \RegLed9|DOUT~q\ : std_logic;
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registrador_Decoder_H2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Registrador_Decoder_H0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Registrador_Decoder_H1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegLeds7to0|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registrador_Decoder_H3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_RAM_Data_IN[0]~10_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_Data_IN[0]~9_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_Data_IN[0]~8_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_Data_IN[0]~7_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_Data_IN[0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_Data_IN[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_Data_IN[0]~4_combout\ : std_logic;
SIGNAL \DECODER_8to6|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_Data_IN[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_Data_IN[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida[1]~4_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida[6]~3_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida[5]~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_saida_MUX[4]~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~0_combout\ : std_logic;
SIGNAL \CPU|REGFlagIgual|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida[9]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \DECODER_2to0|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \RegLed9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \RegLed8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Registrador_Decoder_H3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Registrador_Decoder_H2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM0|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~11_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~10_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~9_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~8_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \Registrador_Decoder_H1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Registrador_Decoder_H0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM0|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RAM_Data_IN[0]~10_combout\ <= NOT \RAM_Data_IN[0]~10_combout\;
\ALT_INV_RAM_Data_IN[0]~9_combout\ <= NOT \RAM_Data_IN[0]~9_combout\;
\ALT_INV_RAM_Data_IN[0]~8_combout\ <= NOT \RAM_Data_IN[0]~8_combout\;
\CPU|DECODER|ALT_INV_Equal11~1_combout\ <= NOT \CPU|DECODER|Equal11~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~5_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~4_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~3_combout\;
\ALT_INV_comb~9_combout\ <= NOT \comb~9_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ALT_INV_RAM_Data_IN[0]~7_combout\ <= NOT \RAM_Data_IN[0]~7_combout\;
\ALT_INV_RAM_Data_IN[0]~6_combout\ <= NOT \RAM_Data_IN[0]~6_combout\;
\ALT_INV_RAM_Data_IN[0]~5_combout\ <= NOT \RAM_Data_IN[0]~5_combout\;
\ALT_INV_RAM_Data_IN[0]~4_combout\ <= NOT \RAM_Data_IN[0]~4_combout\;
\DECODER_8to6|ALT_INV_Equal7~0_combout\ <= NOT \DECODER_8to6|Equal7~0_combout\;
\ALT_INV_RAM_Data_IN[0]~3_combout\ <= NOT \RAM_Data_IN[0]~3_combout\;
\ALT_INV_RAM_Data_IN[0]~2_combout\ <= NOT \RAM_Data_IN[0]~2_combout\;
\ALT_INV_RAM_Data_IN[0]~1_combout\ <= NOT \RAM_Data_IN[0]~1_combout\;
\ALT_INV_RAM_Data_IN[0]~0_combout\ <= NOT \RAM_Data_IN[0]~0_combout\;
\CPU|DECODER|ALT_INV_saida[1]~4_combout\ <= NOT \CPU|DECODER|saida[1]~4_combout\;
\CPU|DECODER|ALT_INV_saida[6]~3_combout\ <= NOT \CPU|DECODER|saida[6]~3_combout\;
\CPU|DECODER|ALT_INV_saida[5]~2_combout\ <= NOT \CPU|DECODER|saida[5]~2_combout\;
\CPU|DECODER|ALT_INV_saida~1_combout\ <= NOT \CPU|DECODER|saida~1_combout\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\ALT_INV_comb~7_combout\ <= NOT \comb~7_combout\;
\CPU|MUX2|ALT_INV_saida_MUX[4]~1_combout\ <= NOT \CPU|MUX2|saida_MUX[4]~1_combout\;
\CPU|PC|ALT_INV_DOUT[5]~1_combout\ <= NOT \CPU|PC|DOUT[5]~1_combout\;
\CPU|PC|ALT_INV_DOUT[5]~0_combout\ <= NOT \CPU|PC|DOUT[5]~0_combout\;
\CPU|REGFlagIgual|ALT_INV_DOUT~q\ <= NOT \CPU|REGFlagIgual|DOUT~q\;
\CPU|DECODER|ALT_INV_saida[9]~0_combout\ <= NOT \CPU|DECODER|saida[9]~0_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\CPU|DECODER|ALT_INV_Equal11~0_combout\ <= NOT \CPU|DECODER|Equal11~0_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\DECODER_2to0|ALT_INV_Equal7~0_combout\ <= NOT \DECODER_2to0|Equal7~0_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\RegLed9|ALT_INV_DOUT~q\ <= NOT \RegLed9|DOUT~q\;
\RegLed8|ALT_INV_DOUT~q\ <= NOT \RegLed8|DOUT~q\;
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\Registrador_Decoder_H3|ALT_INV_DOUT\(1) <= NOT \Registrador_Decoder_H3|DOUT\(1);
\Registrador_Decoder_H3|ALT_INV_DOUT\(2) <= NOT \Registrador_Decoder_H3|DOUT\(2);
\Registrador_Decoder_H3|ALT_INV_DOUT\(3) <= NOT \Registrador_Decoder_H3|DOUT\(3);
\Registrador_Decoder_H3|ALT_INV_DOUT\(0) <= NOT \Registrador_Decoder_H3|DOUT\(0);
\Registrador_Decoder_H2|ALT_INV_DOUT\(1) <= NOT \Registrador_Decoder_H2|DOUT\(1);
\Registrador_Decoder_H2|ALT_INV_DOUT\(2) <= NOT \Registrador_Decoder_H2|DOUT\(2);
\Registrador_Decoder_H2|ALT_INV_DOUT\(3) <= NOT \Registrador_Decoder_H2|DOUT\(3);
\Registrador_Decoder_H2|ALT_INV_DOUT\(0) <= NOT \Registrador_Decoder_H2|DOUT\(0);
\RAM0|ALT_INV_ram~38_q\ <= NOT \RAM0|ram~38_q\;
\RAM0|ALT_INV_ram~22_q\ <= NOT \RAM0|ram~22_q\;
\RAM0|ALT_INV_ram~46_q\ <= NOT \RAM0|ram~46_q\;
\RAM0|ALT_INV_ram~30_q\ <= NOT \RAM0|ram~30_q\;
\RAM0|ALT_INV_ram~35_q\ <= NOT \RAM0|ram~35_q\;
\RAM0|ALT_INV_ram~19_q\ <= NOT \RAM0|ram~19_q\;
\RAM0|ALT_INV_ram~43_q\ <= NOT \RAM0|ram~43_q\;
\RAM0|ALT_INV_ram~27_q\ <= NOT \RAM0|ram~27_q\;
\RAM0|ALT_INV_ram~37_q\ <= NOT \RAM0|ram~37_q\;
\RAM0|ALT_INV_ram~21_q\ <= NOT \RAM0|ram~21_q\;
\RAM0|ALT_INV_ram~45_q\ <= NOT \RAM0|ram~45_q\;
\RAM0|ALT_INV_ram~29_q\ <= NOT \RAM0|ram~29_q\;
\RAM0|ALT_INV_ram~36_q\ <= NOT \RAM0|ram~36_q\;
\RAM0|ALT_INV_ram~20_q\ <= NOT \RAM0|ram~20_q\;
\RAM0|ALT_INV_ram~44_q\ <= NOT \RAM0|ram~44_q\;
\RAM0|ALT_INV_ram~28_q\ <= NOT \RAM0|ram~28_q\;
\RAM0|ALT_INV_ram~32_q\ <= NOT \RAM0|ram~32_q\;
\RAM0|ALT_INV_ram~16_q\ <= NOT \RAM0|ram~16_q\;
\RAM0|ALT_INV_ram~40_q\ <= NOT \RAM0|ram~40_q\;
\RAM0|ALT_INV_ram~24_q\ <= NOT \RAM0|ram~24_q\;
\RAM0|ALT_INV_ram~33_q\ <= NOT \RAM0|ram~33_q\;
\RAM0|ALT_INV_ram~17_q\ <= NOT \RAM0|ram~17_q\;
\RAM0|ALT_INV_ram~41_q\ <= NOT \RAM0|ram~41_q\;
\RAM0|ALT_INV_ram~25_q\ <= NOT \RAM0|ram~25_q\;
\RAM0|ALT_INV_ram~34_q\ <= NOT \RAM0|ram~34_q\;
\RAM0|ALT_INV_ram~18_q\ <= NOT \RAM0|ram~18_q\;
\RAM0|ALT_INV_ram~42_q\ <= NOT \RAM0|ram~42_q\;
\RAM0|ALT_INV_ram~26_q\ <= NOT \RAM0|ram~26_q\;
\RAM0|ALT_INV_ram~31_q\ <= NOT \RAM0|ram~31_q\;
\RAM0|ALT_INV_ram~15_q\ <= NOT \RAM0|ram~15_q\;
\RAM0|ALT_INV_ram~39_q\ <= NOT \RAM0|ram~39_q\;
\RAM0|ALT_INV_ram~23_q\ <= NOT \RAM0|ram~23_q\;
\RAM0|ALT_INV_ram~294_q\ <= NOT \RAM0|ram~294_q\;
\RAM0|ALT_INV_ram~278_q\ <= NOT \RAM0|ram~278_q\;
\RAM0|ALT_INV_ram~302_q\ <= NOT \RAM0|ram~302_q\;
\RAM0|ALT_INV_ram~286_q\ <= NOT \RAM0|ram~286_q\;
\RAM0|ALT_INV_ram~291_q\ <= NOT \RAM0|ram~291_q\;
\RAM0|ALT_INV_ram~275_q\ <= NOT \RAM0|ram~275_q\;
\RAM0|ALT_INV_ram~299_q\ <= NOT \RAM0|ram~299_q\;
\RAM0|ALT_INV_ram~283_q\ <= NOT \RAM0|ram~283_q\;
\RAM0|ALT_INV_ram~293_q\ <= NOT \RAM0|ram~293_q\;
\RAM0|ALT_INV_ram~277_q\ <= NOT \RAM0|ram~277_q\;
\RAM0|ALT_INV_ram~301_q\ <= NOT \RAM0|ram~301_q\;
\RAM0|ALT_INV_ram~285_q\ <= NOT \RAM0|ram~285_q\;
\RAM0|ALT_INV_ram~292_q\ <= NOT \RAM0|ram~292_q\;
\RAM0|ALT_INV_ram~276_q\ <= NOT \RAM0|ram~276_q\;
\RAM0|ALT_INV_ram~300_q\ <= NOT \RAM0|ram~300_q\;
\RAM0|ALT_INV_ram~284_q\ <= NOT \RAM0|ram~284_q\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~11_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~11_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~10_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~10_combout\;
\RAM0|ALT_INV_ram~288_q\ <= NOT \RAM0|ram~288_q\;
\RAM0|ALT_INV_ram~272_q\ <= NOT \RAM0|ram~272_q\;
\RAM0|ALT_INV_ram~296_q\ <= NOT \RAM0|ram~296_q\;
\RAM0|ALT_INV_ram~280_q\ <= NOT \RAM0|ram~280_q\;
\RAM0|ALT_INV_ram~289_q\ <= NOT \RAM0|ram~289_q\;
\RAM0|ALT_INV_ram~273_q\ <= NOT \RAM0|ram~273_q\;
\RAM0|ALT_INV_ram~297_q\ <= NOT \RAM0|ram~297_q\;
\RAM0|ALT_INV_ram~281_q\ <= NOT \RAM0|ram~281_q\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~9_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~9_combout\;
\RAM0|ALT_INV_ram~290_q\ <= NOT \RAM0|ram~290_q\;
\RAM0|ALT_INV_ram~274_q\ <= NOT \RAM0|ram~274_q\;
\RAM0|ALT_INV_ram~298_q\ <= NOT \RAM0|ram~298_q\;
\RAM0|ALT_INV_ram~282_q\ <= NOT \RAM0|ram~282_q\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~8_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~8_combout\;
\RAM0|ALT_INV_ram~287_q\ <= NOT \RAM0|ram~287_q\;
\RAM0|ALT_INV_ram~271_q\ <= NOT \RAM0|ram~271_q\;
\RAM0|ALT_INV_ram~295_q\ <= NOT \RAM0|ram~295_q\;
\RAM0|ALT_INV_ram~279_q\ <= NOT \RAM0|ram~279_q\;
\Registrador_Decoder_H1|ALT_INV_DOUT\(1) <= NOT \Registrador_Decoder_H1|DOUT\(1);
\Registrador_Decoder_H1|ALT_INV_DOUT\(2) <= NOT \Registrador_Decoder_H1|DOUT\(2);
\Registrador_Decoder_H1|ALT_INV_DOUT\(3) <= NOT \Registrador_Decoder_H1|DOUT\(3);
\Registrador_Decoder_H1|ALT_INV_DOUT\(0) <= NOT \Registrador_Decoder_H1|DOUT\(0);
\Registrador_Decoder_H0|ALT_INV_DOUT\(1) <= NOT \Registrador_Decoder_H0|DOUT\(1);
\Registrador_Decoder_H0|ALT_INV_DOUT\(2) <= NOT \Registrador_Decoder_H0|DOUT\(2);
\Registrador_Decoder_H0|ALT_INV_DOUT\(3) <= NOT \Registrador_Decoder_H0|DOUT\(3);
\Registrador_Decoder_H0|ALT_INV_DOUT\(0) <= NOT \Registrador_Decoder_H0|DOUT\(0);
\RAM0|ALT_INV_ram~587_combout\ <= NOT \RAM0|ram~587_combout\;
\RAM0|ALT_INV_ram~583_combout\ <= NOT \RAM0|ram~583_combout\;
\RAM0|ALT_INV_ram~579_combout\ <= NOT \RAM0|ram~579_combout\;
\RAM0|ALT_INV_ram~575_combout\ <= NOT \RAM0|ram~575_combout\;
\RAM0|ALT_INV_ram~571_combout\ <= NOT \RAM0|ram~571_combout\;
\RAM0|ALT_INV_ram~567_combout\ <= NOT \RAM0|ram~567_combout\;
\RAM0|ALT_INV_ram~563_combout\ <= NOT \RAM0|ram~563_combout\;
\RAM0|ALT_INV_ram~559_combout\ <= NOT \RAM0|ram~559_combout\;
\RAM0|ALT_INV_ram~555_combout\ <= NOT \RAM0|ram~555_combout\;
\RAM0|ALT_INV_ram~551_combout\ <= NOT \RAM0|ram~551_combout\;
\RAM0|ALT_INV_ram~547_combout\ <= NOT \RAM0|ram~547_combout\;
\RAM0|ALT_INV_ram~543_combout\ <= NOT \RAM0|ram~543_combout\;
\RAM0|ALT_INV_ram~539_combout\ <= NOT \RAM0|ram~539_combout\;
\RAM0|ALT_INV_ram~535_combout\ <= NOT \RAM0|ram~535_combout\;
\RAM0|ALT_INV_ram~531_combout\ <= NOT \RAM0|ram~531_combout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\RAM0|ALT_INV_ram~527_combout\ <= NOT \RAM0|ram~527_combout\;
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHex3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_hex0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_hex0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_hex0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_hex0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_hex0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_hex0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_hex0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLeds7to0|DOUT\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLeds7to0|DOUT\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLeds7to0|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLeds7to0|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLeds7to0|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLeds7to0|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLeds7to0|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLeds7to0|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLed8|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLed9|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

\CPU|MUX2|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~3_combout\ = (\CPU|MUX2|saida_MUX[4]~1_combout\ & \CPU|incrementaPC|Add0~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX2|ALT_INV_saida_MUX[4]~1_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX2|saida_MUX[2]~3_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[2]~3_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

\CPU|MUX2|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~2_combout\ = (\CPU|incrementaPC|Add0~5_sumout\ & \CPU|MUX2|saida_MUX[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datad => \CPU|MUX2|ALT_INV_saida_MUX[4]~1_combout\,
	combout => \CPU|MUX2|saida_MUX[3]~2_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[3]~2_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100111100000001010011110000000101001111000000010100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~12_combout\ & \ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000100100000000000010010000000000001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~17_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101010110010010010101011001001001010101100100100101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~18_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010010101000101001001010100010100100101010001010010010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~10_combout\);

\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	combout => \ROM|memROM~20_combout\);

\CPU|REGFlagIgual|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGFlagIgual|DOUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGFlagIgual|DOUT~q\);

\CPU|PC|DOUT[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[5]~0_combout\ = (!\ROM|memROM~17_combout\ & (\ROM|memROM~18_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~19_combout\))) # (\ROM|memROM~17_combout\ & (!\ROM|memROM~18_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000100100000000000010010000000000001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	combout => \CPU|PC|DOUT[5]~0_combout\);

\CPU|PC|DOUT[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[5]~1_combout\ = ( \CPU|REGFlagIgual|DOUT~q\ & ( \CPU|PC|DOUT[5]~0_combout\ & ( (!\ROM|memROM~16_combout\) # ((!\ROM|memROM~17_combout\) # ((\ROM|memROM~19_combout\) # (\ROM|memROM~18_combout\))) ) ) ) # ( !\CPU|REGFlagIgual|DOUT~q\ & ( 
-- \CPU|PC|DOUT[5]~0_combout\ & ( (!\ROM|memROM~16_combout\) # ((!\ROM|memROM~17_combout\) # ((\ROM|memROM~19_combout\) # (\ROM|memROM~18_combout\))) ) ) ) # ( \CPU|REGFlagIgual|DOUT~q\ & ( !\CPU|PC|DOUT[5]~0_combout\ & ( (\ROM|memROM~16_combout\ & 
-- (!\ROM|memROM~17_combout\ & (\ROM|memROM~18_combout\ & \ROM|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011101111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	datae => \CPU|REGFlagIgual|ALT_INV_DOUT~q\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~0_combout\,
	combout => \CPU|PC|DOUT[5]~1_combout\);

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011111100010000001111110001000000111111000100000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~34\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\,
	cout => \CPU|incrementaPC|Add0~34\);

\CPU|MUX2|saida_MUX[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~9_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|DECODER|saida[9]~0_combout\ & ((!\CPU|PC|DOUT[5]~1_combout\) # (\ROM|memROM~2_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~33_sumout\ & ( (\ROM|memROM~2_combout\ & 
-- (!\CPU|DECODER|saida[9]~0_combout\ & \CPU|PC|DOUT[5]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100110001001100010000000100000001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[9]~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX2|saida_MUX[5]~9_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[5]~9_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~34\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

\CPU|MUX2|saida_MUX[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~8_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ & ( (!\CPU|DECODER|saida[9]~0_combout\ & ((!\CPU|PC|DOUT[5]~1_combout\) # (\ROM|memROM~20_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~29_sumout\ & ( (\ROM|memROM~20_combout\ & 
-- (!\CPU|DECODER|saida[9]~0_combout\ & \CPU|PC|DOUT[5]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100110001001100010000000100000001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[9]~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX2|saida_MUX[6]~8_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[6]~8_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

\CPU|MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~7_combout\ = (\CPU|MUX2|saida_MUX[4]~1_combout\ & \CPU|incrementaPC|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX2|ALT_INV_saida_MUX[4]~1_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX2|saida_MUX[7]~7_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[7]~7_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = (\ROM|memROM~8_combout\ & \ROM|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~19_combout\);

\CPU|DECODER|saida[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[9]~0_combout\ = (\ROM|memROM~16_combout\ & (\ROM|memROM~17_combout\ & (!\ROM|memROM~18_combout\ & !\ROM|memROM~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	combout => \CPU|DECODER|saida[9]~0_combout\);

\CPU|MUX2|saida_MUX[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~4_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|DECODER|saida[9]~0_combout\ & ((!\CPU|PC|DOUT[5]~1_combout\) # (\ROM|memROM~13_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~13_sumout\ & ( (\ROM|memROM~13_combout\ & 
-- (!\CPU|DECODER|saida[9]~0_combout\ & \CPU|PC|DOUT[5]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100110001001100010000000100000001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[9]~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX2|saida_MUX[1]~4_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[1]~4_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000010000100100000001000010010000000100001001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~16_combout\);

\CPU|MUX2|saida_MUX[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~1_combout\ = ( \CPU|REGFlagIgual|DOUT~q\ & ( !\CPU|PC|DOUT[5]~0_combout\ & ( (!\ROM|memROM~16_combout\) # ((!\ROM|memROM~17_combout\ & ((!\ROM|memROM~18_combout\) # (!\ROM|memROM~19_combout\))) # (\ROM|memROM~17_combout\ & 
-- ((\ROM|memROM~19_combout\) # (\ROM|memROM~18_combout\)))) ) ) ) # ( !\CPU|REGFlagIgual|DOUT~q\ & ( !\CPU|PC|DOUT[5]~0_combout\ & ( (!\ROM|memROM~16_combout\) # ((!\ROM|memROM~17_combout\) # ((\ROM|memROM~19_combout\) # (\ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111111111111011111111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	datae => \CPU|REGFlagIgual|ALT_INV_DOUT~q\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~0_combout\,
	combout => \CPU|MUX2|saida_MUX[4]~1_combout\);

\CPU|MUX2|saida_MUX[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~6_combout\ = (\CPU|MUX2|saida_MUX[4]~1_combout\ & \CPU|incrementaPC|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX2|ALT_INV_saida_MUX[4]~1_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX2|saida_MUX[4]~6_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[4]~6_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(3) & (((!\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101011001100001110101100110000111010110011000011101011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~12_combout\ & \ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~15_combout\);

\CPU|MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~0_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|DECODER|saida[9]~0_combout\ & ((!\CPU|PC|DOUT[5]~1_combout\) # (\ROM|memROM~15_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~1_sumout\ & ( (\ROM|memROM~15_combout\ & 
-- (!\CPU|DECODER|saida[9]~0_combout\ & \CPU|PC|DOUT[5]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000111100000101000000000000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[9]~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX2|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[0]~0_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000011000100100000001100010010000000110001001000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~11_combout\);

\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\);

\CPU|MUX2|saida_MUX[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~5_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|DECODER|saida[9]~0_combout\ & ((!\CPU|PC|DOUT[5]~1_combout\) # ((\ROM|memROM~1_combout\ & !\ROM|memROM~11_combout\)))) ) ) # ( !\CPU|incrementaPC|Add0~17_sumout\ & ( 
-- (\ROM|memROM~1_combout\ & (!\ROM|memROM~11_combout\ & (!\CPU|DECODER|saida[9]~0_combout\ & \CPU|PC|DOUT[5]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000011110000010000001111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[9]~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX2|saida_MUX[8]~5_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[8]~5_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~1_combout\);

\CPU|DECODER|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~1_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~1_combout\ & (\ROM|memROM~6_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~5_combout\))) ) ) ) # ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~9_combout\ & 
-- ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~5_combout\))) ) ) ) # ( \ROM|memROM~8_combout\ & ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & 
-- !\ROM|memROM~5_combout\))) ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DECODER|saida~1_combout\);

\CPU|DECODER|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[5]~2_combout\ = (!\ROM|memROM~1_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101010111010101110101011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODER|saida[5]~2_combout\);

\CPU|DECODER|saida[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[6]~3_combout\ = (\CPU|DECODER|saida~1_combout\ & !\CPU|DECODER|saida[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[5]~2_combout\,
	combout => \CPU|DECODER|saida[6]~3_combout\);

\CPU|DECODER|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal11~1_combout\ = (\ROM|memROM~16_combout\ & (!\ROM|memROM~17_combout\ & (!\ROM|memROM~18_combout\ & !\ROM|memROM~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	combout => \CPU|DECODER|Equal11~1_combout\);

\DECODER_2to0|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_2to0|Equal7~0_combout\ = (\ROM|memROM~1_combout\ & ((\ROM|memROM~4_combout\) # (\ROM|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	combout => \DECODER_2to0|Equal7~0_combout\);

\CPU|DECODER|saida[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[1]~4_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~1_combout\) # ((!\ROM|memROM~7_combout\ & ((!\ROM|memROM~6_combout\) # (\ROM|memROM~5_combout\)))) ) ) ) # ( !\ROM|memROM~8_combout\ & ( 
-- \ROM|memROM~9_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ $ (!\ROM|memROM~5_combout\)))) ) ) ) # ( \ROM|memROM~8_combout\ & ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~7_combout\ & 
-- (!\ROM|memROM~6_combout\ $ (!\ROM|memROM~5_combout\)))) ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ $ (!\ROM|memROM~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000000100000100000000010000010000001110101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DECODER|saida[1]~4_combout\);

\RAM_Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_Data_IN[0]~0_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~12_combout\ & (\ROM|memROM~10_combout\ & !\ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM_Data_IN[0]~0_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\RAM_Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_Data_IN[0]~1_combout\ = ( !\SW[0]~input_o\ & ( (!\ROM|memROM~2_combout\ & (!\DECODER_2to0|Equal7~0_combout\ & (\CPU|DECODER|saida[1]~4_combout\ & \RAM_Data_IN[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \DECODER_2to0|ALT_INV_Equal7~0_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[1]~4_combout\,
	datad => \ALT_INV_RAM_Data_IN[0]~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	combout => \RAM_Data_IN[0]~1_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\RAM_Data_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_Data_IN[0]~2_combout\ = ( \RAM_Data_IN[0]~0_combout\ & ( !\SW[8]~input_o\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~15_combout\ & \CPU|DECODER|saida[1]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \CPU|DECODER|ALT_INV_saida[1]~4_combout\,
	datae => \ALT_INV_RAM_Data_IN[0]~0_combout\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \RAM_Data_IN[0]~2_combout\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\RAM_Data_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_Data_IN[0]~3_combout\ = ( \RAM_Data_IN[0]~0_combout\ & ( !\SW[9]~input_o\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~15_combout\ & \CPU|DECODER|saida[1]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \CPU|DECODER|ALT_INV_saida[1]~4_combout\,
	datae => \ALT_INV_RAM_Data_IN[0]~0_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \RAM_Data_IN[0]~3_combout\);

\CPU|DECODER|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal11~0_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~5_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DECODER|Equal11~0_combout\);

\DECODER_8to6|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_8to6|Equal7~0_combout\ = (\ROM|memROM~1_combout\ & ((!\ROM|memROM~11_combout\) # (\ROM|memROM~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010101000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	combout => \DECODER_8to6|Equal7~0_combout\);

\RAM0|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~591_combout\ = ( !\DECODER_8to6|Equal7~0_combout\ & ( (\ROM|memROM~2_combout\ & (\CPU|DECODER|Equal11~0_combout\ & (!\ROM|memROM~13_combout\ & \ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \DECODER_8to6|ALT_INV_Equal7~0_combout\,
	combout => \RAM0|ram~591_combout\);

\RAM0|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~279_q\);

\RAM0|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~592_combout\ = ( !\DECODER_8to6|Equal7~0_combout\ & ( (\ROM|memROM~2_combout\ & (\CPU|DECODER|Equal11~0_combout\ & (\ROM|memROM~13_combout\ & \ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \DECODER_8to6|ALT_INV_Equal7~0_combout\,
	combout => \RAM0|ram~592_combout\);

\RAM0|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~295_q\);

\RAM0|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~594_combout\ = ( !\DECODER_8to6|Equal7~0_combout\ & ( (\ROM|memROM~2_combout\ & (\CPU|DECODER|Equal11~0_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \DECODER_8to6|ALT_INV_Equal7~0_combout\,
	combout => \RAM0|ram~594_combout\);

\RAM0|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~287_q\);

\RAM0|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~595_combout\ = ( !\DECODER_8to6|Equal7~0_combout\ & ( (!\ROM|memROM~2_combout\ & (\CPU|DECODER|Equal11~0_combout\ & (!\ROM|memROM~13_combout\ & \ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \DECODER_8to6|ALT_INV_Equal7~0_combout\,
	combout => \RAM0|ram~595_combout\);

\RAM0|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~23_q\);

\RAM0|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~596_combout\ = ( !\DECODER_8to6|Equal7~0_combout\ & ( (!\ROM|memROM~2_combout\ & (\CPU|DECODER|Equal11~0_combout\ & (\ROM|memROM~13_combout\ & \ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \DECODER_8to6|ALT_INV_Equal7~0_combout\,
	combout => \RAM0|ram~596_combout\);

\RAM0|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~39_q\);

\RAM0|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~598_combout\ = ( !\DECODER_8to6|Equal7~0_combout\ & ( (!\ROM|memROM~2_combout\ & (\CPU|DECODER|Equal11~0_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \DECODER_8to6|ALT_INV_Equal7~0_combout\,
	combout => \RAM0|ram~598_combout\);

\RAM0|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~31_q\);

\RAM0|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~597_combout\ = ( !\DECODER_8to6|Equal7~0_combout\ & ( (!\ROM|memROM~2_combout\ & (\CPU|DECODER|Equal11~0_combout\ & (!\ROM|memROM~13_combout\ & !\ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \DECODER_8to6|ALT_INV_Equal7~0_combout\,
	combout => \RAM0|ram~597_combout\);

\RAM0|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~15_q\);

\RAM0|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~559_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~15_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~23_q\)))) ) ) # ( \ROM|memROM~13_combout\ & ( 
-- ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~31_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~39_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~23_q\,
	datab => \RAM0|ALT_INV_ram~39_q\,
	datac => \RAM0|ALT_INV_ram~31_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	datag => \RAM0|ALT_INV_ram~15_q\,
	combout => \RAM0|ram~559_combout\);

\RAM0|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~593_combout\ = ( !\DECODER_8to6|Equal7~0_combout\ & ( (\ROM|memROM~2_combout\ & (\CPU|DECODER|Equal11~0_combout\ & (!\ROM|memROM~13_combout\ & !\ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \DECODER_8to6|ALT_INV_Equal7~0_combout\,
	combout => \RAM0|ram~593_combout\);

\RAM0|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~271_q\);

\RAM0|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~527_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~559_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~559_combout\ & ((\RAM0|ram~271_q\))) # (\RAM0|ram~559_combout\ & (\RAM0|ram~279_q\))))) ) ) # ( 
-- \ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~559_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~559_combout\ & ((\RAM0|ram~287_q\))) # (\RAM0|ram~559_combout\ & (\RAM0|ram~295_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~279_q\,
	datab => \RAM0|ALT_INV_ram~295_q\,
	datac => \RAM0|ALT_INV_ram~287_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \RAM0|ALT_INV_ram~559_combout\,
	datag => \RAM0|ALT_INV_ram~271_q\,
	combout => \RAM0|ram~527_combout\);

\RAM_Data_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_Data_IN[0]~4_combout\ = (\CPU|DECODER|saida[1]~4_combout\ & !\DECODER_8to6|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida[1]~4_combout\,
	datab => \DECODER_8to6|ALT_INV_Equal7~0_combout\,
	combout => \RAM_Data_IN[0]~4_combout\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~12_combout\ & \ROM|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	combout => \comb~2_combout\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\RAM_Data_IN[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_Data_IN[0]~8_combout\ = ( \KEY[2]~input_o\ & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~12_combout\ & !\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ALT_INV_KEY[2]~input_o\,
	combout => \RAM_Data_IN[0]~8_combout\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\RAM_Data_IN[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_Data_IN[0]~9_combout\ = ( \RAM_Data_IN[0]~8_combout\ & ( \KEY[3]~input_o\ & ( (\ROM|memROM~13_combout\ & (\CPU|DECODER|saida[1]~4_combout\ & \RAM_Data_IN[0]~0_combout\)) ) ) ) # ( !\RAM_Data_IN[0]~8_combout\ & ( \KEY[3]~input_o\ & ( (\comb~2_combout\ 
-- & (\ROM|memROM~13_combout\ & (\CPU|DECODER|saida[1]~4_combout\ & \RAM_Data_IN[0]~0_combout\))) ) ) ) # ( \RAM_Data_IN[0]~8_combout\ & ( !\KEY[3]~input_o\ & ( (\ROM|memROM~13_combout\ & (\CPU|DECODER|saida[1]~4_combout\ & \RAM_Data_IN[0]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000010000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[1]~4_combout\,
	datad => \ALT_INV_RAM_Data_IN[0]~0_combout\,
	datae => \ALT_INV_RAM_Data_IN[0]~8_combout\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \RAM_Data_IN[0]~9_combout\);

\RAM_Data_IN[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_Data_IN[0]~10_combout\ = ( \RAM_Data_IN[0]~4_combout\ & ( !\RAM_Data_IN[0]~9_combout\ & ( (!\RAM_Data_IN[0]~1_combout\ & (!\RAM_Data_IN[0]~2_combout\ & (!\RAM_Data_IN[0]~3_combout\ & \RAM0|ram~527_combout\))) ) ) ) # ( !\RAM_Data_IN[0]~4_combout\ & ( 
-- !\RAM_Data_IN[0]~9_combout\ & ( (!\RAM_Data_IN[0]~1_combout\ & (!\RAM_Data_IN[0]~2_combout\ & !\RAM_Data_IN[0]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM_Data_IN[0]~1_combout\,
	datab => \ALT_INV_RAM_Data_IN[0]~2_combout\,
	datac => \ALT_INV_RAM_Data_IN[0]~3_combout\,
	datad => \RAM0|ALT_INV_ram~527_combout\,
	datae => \ALT_INV_RAM_Data_IN[0]~4_combout\,
	dataf => \ALT_INV_RAM_Data_IN[0]~9_combout\,
	combout => \RAM_Data_IN[0]~10_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( !\CPU|DECODER|Equal11~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|DECODER|Equal11~1_combout\ $ (((!\CPU|DECODER|saida[6]~3_combout\ & ((\RAM_Data_IN[0]~10_combout\))) # (\CPU|DECODER|saida[6]~3_combout\ & (\ROM|memROM~15_combout\)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( 
-- \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|DECODER|Equal11~1_combout\ $ (((!\CPU|DECODER|saida[6]~3_combout\ & ((\RAM_Data_IN[0]~10_combout\))) # (\CPU|DECODER|saida[6]~3_combout\ & (\ROM|memROM~15_combout\)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( 
-- \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	datad => \ALT_INV_RAM_Data_IN[0]~10_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\RAM_Data_IN[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_Data_IN[0]~5_combout\ = ( \RAM_Data_IN[0]~0_combout\ & ( \KEY[2]~input_o\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~15_combout\ & \CPU|DECODER|saida[1]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \CPU|DECODER|ALT_INV_saida[1]~4_combout\,
	datae => \ALT_INV_RAM_Data_IN[0]~0_combout\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \RAM_Data_IN[0]~5_combout\);

\RAM_Data_IN[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_Data_IN[0]~6_combout\ = ( \KEY[3]~input_o\ & ( (\comb~2_combout\ & (\ROM|memROM~13_combout\ & (\CPU|DECODER|saida[1]~4_combout\ & \RAM_Data_IN[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[1]~4_combout\,
	datad => \ALT_INV_RAM_Data_IN[0]~0_combout\,
	datae => \ALT_INV_KEY[3]~input_o\,
	combout => \RAM_Data_IN[0]~6_combout\);

\RAM_Data_IN[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_Data_IN[0]~7_combout\ = ( !\RAM_Data_IN[0]~5_combout\ & ( !\RAM_Data_IN[0]~6_combout\ & ( (!\RAM_Data_IN[0]~2_combout\ & (!\RAM_Data_IN[0]~3_combout\ & ((!\RAM_Data_IN[0]~4_combout\) # (\RAM0|ram~527_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM_Data_IN[0]~2_combout\,
	datab => \ALT_INV_RAM_Data_IN[0]~3_combout\,
	datac => \RAM0|ALT_INV_ram~527_combout\,
	datad => \ALT_INV_RAM_Data_IN[0]~4_combout\,
	datae => \ALT_INV_RAM_Data_IN[0]~5_combout\,
	dataf => \ALT_INV_RAM_Data_IN[0]~6_combout\,
	combout => \RAM_Data_IN[0]~7_combout\);

\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = (!\CPU|DECODER|saida[6]~3_combout\ & (((!\RAM_Data_IN[0]~1_combout\ & \RAM_Data_IN[0]~7_combout\)))) # (\CPU|DECODER|saida[6]~3_combout\ & (\ROM|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000100011101000100010001110100010001000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[6]~3_combout\,
	datac => \ALT_INV_RAM_Data_IN[0]~1_combout\,
	datad => \ALT_INV_RAM_Data_IN[0]~7_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

\CPU|DECODER|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~6_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~19_combout\ & ( (!\CPU|PC|DOUT\(3)) # ((!\CPU|PC|DOUT\(2)) # ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0)))) ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~19_combout\ ) ) # ( 
-- \ROM|memROM~1_combout\ & ( !\ROM|memROM~19_combout\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101011011111111111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \CPU|DECODER|saida~6_combout\);

\CPU|DECODER|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[5]~5_combout\ = ( \CPU|DECODER|saida~1_combout\ & ( (((\ROM|memROM~19_combout\) # (\ROM|memROM~18_combout\)) # (\ROM|memROM~17_combout\)) # (\ROM|memROM~16_combout\) ) ) # ( !\CPU|DECODER|saida~1_combout\ & ( (!\ROM|memROM~17_combout\ & 
-- (!\ROM|memROM~18_combout\ & ((\ROM|memROM~19_combout\) # (\ROM|memROM~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000011111111111111101000000110000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	datae => \CPU|DECODER|ALT_INV_saida~1_combout\,
	combout => \CPU|DECODER|saida[5]~5_combout\);

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|DECODER|saida~6_combout\,
	ena => \CPU|DECODER|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	combout => \comb~0_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\ROM|memROM~2_combout\ & (!\DECODER_2to0|Equal7~0_combout\ & (\CPU|DECODER|Equal11~0_combout\ & \comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \DECODER_2to0|ALT_INV_Equal7~0_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datad => \ALT_INV_comb~0_combout\,
	combout => \comb~1_combout\);

\Registrador_Decoder_H0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H0|DOUT\(0));

\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (!\ROM|memROM~2_combout\ & (!\DECODER_2to0|Equal7~0_combout\ & (\CPU|DECODER|saida[1]~4_combout\ & \RAM_Data_IN[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \DECODER_2to0|ALT_INV_Equal7~0_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[1]~4_combout\,
	datad => \ALT_INV_RAM_Data_IN[0]~0_combout\,
	combout => \comb~9_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\RAM0|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~282_q\);

\RAM0|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~298_q\);

\RAM0|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~290_q\);

\RAM0|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~26_q\);

\RAM0|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~42_q\);

\RAM0|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~34_q\);

\RAM0|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~18_q\);

\RAM0|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~563_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~18_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~26_q\)))) ) ) # ( \ROM|memROM~13_combout\ & ( 
-- ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~34_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~42_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~26_q\,
	datab => \RAM0|ALT_INV_ram~42_q\,
	datac => \RAM0|ALT_INV_ram~34_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	datag => \RAM0|ALT_INV_ram~18_q\,
	combout => \RAM0|ram~563_combout\);

\RAM0|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~274_q\);

\RAM0|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~531_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~563_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~563_combout\ & ((\RAM0|ram~274_q\))) # (\RAM0|ram~563_combout\ & (\RAM0|ram~282_q\))))) ) ) # ( 
-- \ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~563_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~563_combout\ & ((\RAM0|ram~290_q\))) # (\RAM0|ram~563_combout\ & (\RAM0|ram~298_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~282_q\,
	datab => \RAM0|ALT_INV_ram~298_q\,
	datac => \RAM0|ALT_INV_ram~290_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \RAM0|ALT_INV_ram~563_combout\,
	datag => \RAM0|ALT_INV_ram~274_q\,
	combout => \RAM0|ram~531_combout\);

\CPU|MUX1|saida_MUX[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~8_combout\ = (!\comb~9_combout\ & ((\RAM0|ram~531_combout\))) # (\comb~9_combout\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \RAM0|ALT_INV_ram~531_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~8_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( !\CPU|DECODER|Equal11~1_combout\ $ (\CPU|MUX1|saida_MUX[1]~3_combout\) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( !\CPU|DECODER|Equal11~1_combout\ $ (\CPU|MUX1|saida_MUX[1]~3_combout\) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~3_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~3_combout\,
	sload => \CPU|DECODER|saida~6_combout\,
	ena => \CPU|DECODER|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\RAM0|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~280_q\);

\RAM0|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~296_q\);

\RAM0|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~288_q\);

\RAM0|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~24_q\);

\RAM0|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~40_q\);

\RAM0|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~32_q\);

\RAM0|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~16_q\);

\RAM0|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~571_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~16_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~24_q\)))) ) ) # ( \ROM|memROM~13_combout\ & ( 
-- ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~32_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~40_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~24_q\,
	datab => \RAM0|ALT_INV_ram~40_q\,
	datac => \RAM0|ALT_INV_ram~32_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	datag => \RAM0|ALT_INV_ram~16_q\,
	combout => \RAM0|ram~571_combout\);

\RAM0|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~272_q\);

\RAM0|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~539_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~571_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~571_combout\ & ((\RAM0|ram~272_q\))) # (\RAM0|ram~571_combout\ & (\RAM0|ram~280_q\))))) ) ) # ( 
-- \ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~571_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~571_combout\ & ((\RAM0|ram~288_q\))) # (\RAM0|ram~571_combout\ & (\RAM0|ram~296_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~280_q\,
	datab => \RAM0|ALT_INV_ram~296_q\,
	datac => \RAM0|ALT_INV_ram~288_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \RAM0|ALT_INV_ram~571_combout\,
	datag => \RAM0|ALT_INV_ram~272_q\,
	combout => \RAM0|ram~539_combout\);

\CPU|MUX1|saida_MUX[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~3_combout\ = ( \RAM0|ram~539_combout\ & ( (!\CPU|DECODER|saida[6]~3_combout\ & (((!\comb~9_combout\) # (\SW[1]~input_o\)))) # (\CPU|DECODER|saida[6]~3_combout\ & (\ROM|memROM~13_combout\ & (!\comb~9_combout\))) ) ) # ( 
-- !\RAM0|ram~539_combout\ & ( (!\CPU|DECODER|saida[6]~3_combout\ & (((\comb~9_combout\ & \SW[1]~input_o\)))) # (\CPU|DECODER|saida[6]~3_combout\ & (\ROM|memROM~13_combout\ & (!\comb~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010000000111001101000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[6]~3_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \RAM0|ALT_INV_ram~539_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~3_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|DECODER|Equal11~1_combout\ $ (((\CPU|MUX1|saida_MUX[2]~9_combout\ & ((!\CPU|DECODER|saida~1_combout\) # (\CPU|DECODER|saida[5]~2_combout\))))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|DECODER|Equal11~1_combout\ $ (((\CPU|MUX1|saida_MUX[2]~9_combout\ & ((!\CPU|DECODER|saida~1_combout\) # (\CPU|DECODER|saida[5]~2_combout\))))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[5]~2_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~9_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~2_combout\ = (!\CPU|DECODER|saida[6]~3_combout\ & ((!\comb~9_combout\ & ((\RAM0|ram~535_combout\))) # (\comb~9_combout\ & (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \RAM0|ALT_INV_ram~535_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~2_combout\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|DECODER|saida~6_combout\,
	ena => \CPU|DECODER|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\RAM0|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~281_q\);

\RAM0|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~297_q\);

\RAM0|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~289_q\);

\RAM0|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~25_q\);

\RAM0|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~41_q\);

\RAM0|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~33_q\);

\RAM0|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~17_q\);

\RAM0|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~567_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~17_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~25_q\)))) ) ) # ( \ROM|memROM~13_combout\ & ( 
-- ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~33_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~41_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~25_q\,
	datab => \RAM0|ALT_INV_ram~41_q\,
	datac => \RAM0|ALT_INV_ram~33_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	datag => \RAM0|ALT_INV_ram~17_q\,
	combout => \RAM0|ram~567_combout\);

\RAM0|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~273_q\);

\RAM0|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~535_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~567_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~567_combout\ & ((\RAM0|ram~273_q\))) # (\RAM0|ram~567_combout\ & (\RAM0|ram~281_q\))))) ) ) # ( 
-- \ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~567_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~567_combout\ & ((\RAM0|ram~289_q\))) # (\RAM0|ram~567_combout\ & (\RAM0|ram~297_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~281_q\,
	datab => \RAM0|ALT_INV_ram~297_q\,
	datac => \RAM0|ALT_INV_ram~289_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \RAM0|ALT_INV_ram~567_combout\,
	datag => \RAM0|ALT_INV_ram~273_q\,
	combout => \RAM0|ram~535_combout\);

\CPU|MUX1|saida_MUX[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~9_combout\ = (!\comb~9_combout\ & ((\RAM0|ram~535_combout\))) # (\comb~9_combout\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \RAM0|ALT_INV_ram~535_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~9_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|DECODER|Equal11~1_combout\ $ (((\CPU|MUX1|saida_MUX[3]~8_combout\ & ((!\CPU|DECODER|saida~1_combout\) # (\CPU|DECODER|saida[5]~2_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|DECODER|Equal11~1_combout\ $ (((\CPU|MUX1|saida_MUX[3]~8_combout\ & ((!\CPU|DECODER|saida~1_combout\) # (\CPU|DECODER|saida[5]~2_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[5]~2_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~8_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|MUX1|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~1_combout\ = (!\CPU|DECODER|saida[6]~3_combout\ & ((!\comb~9_combout\ & ((\RAM0|ram~531_combout\))) # (\comb~9_combout\ & (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \RAM0|ALT_INV_ram~531_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~1_combout\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~1_combout\,
	sload => \CPU|DECODER|saida~6_combout\,
	ena => \CPU|DECODER|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

\Registrador_Decoder_H0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H0|DOUT\(3));

\Registrador_Decoder_H0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H0|DOUT\(2));

\Registrador_Decoder_H0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H0|DOUT\(1));

\DecoderHex0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex0|rascSaida7seg[0]~0_combout\ = (!\Registrador_Decoder_H0|DOUT\(3) & (!\Registrador_Decoder_H0|DOUT\(1) & (!\Registrador_Decoder_H0|DOUT\(0) $ (!\Registrador_Decoder_H0|DOUT\(2))))) # (\Registrador_Decoder_H0|DOUT\(3) & 
-- (\Registrador_Decoder_H0|DOUT\(0) & (!\Registrador_Decoder_H0|DOUT\(2) $ (!\Registrador_Decoder_H0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H0|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H0|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H0|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H0|ALT_INV_DOUT\(1),
	combout => \DecoderHex0|rascSaida7seg[0]~0_combout\);

\DecoderHex0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex0|rascSaida7seg[1]~1_combout\ = (!\Registrador_Decoder_H0|DOUT\(3) & (\Registrador_Decoder_H0|DOUT\(2) & (!\Registrador_Decoder_H0|DOUT\(0) $ (!\Registrador_Decoder_H0|DOUT\(1))))) # (\Registrador_Decoder_H0|DOUT\(3) & 
-- ((!\Registrador_Decoder_H0|DOUT\(0) & (\Registrador_Decoder_H0|DOUT\(2))) # (\Registrador_Decoder_H0|DOUT\(0) & ((\Registrador_Decoder_H0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H0|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H0|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H0|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H0|ALT_INV_DOUT\(1),
	combout => \DecoderHex0|rascSaida7seg[1]~1_combout\);

\DecoderHex0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex0|rascSaida7seg[2]~2_combout\ = (!\Registrador_Decoder_H0|DOUT\(3) & (!\Registrador_Decoder_H0|DOUT\(0) & (!\Registrador_Decoder_H0|DOUT\(2) & \Registrador_Decoder_H0|DOUT\(1)))) # (\Registrador_Decoder_H0|DOUT\(3) & 
-- (\Registrador_Decoder_H0|DOUT\(2) & ((!\Registrador_Decoder_H0|DOUT\(0)) # (\Registrador_Decoder_H0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H0|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H0|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H0|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H0|ALT_INV_DOUT\(1),
	combout => \DecoderHex0|rascSaida7seg[2]~2_combout\);

\DecoderHex0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex0|rascSaida7seg[3]~3_combout\ = (!\Registrador_Decoder_H0|DOUT\(1) & (!\Registrador_Decoder_H0|DOUT\(3) & (!\Registrador_Decoder_H0|DOUT\(0) $ (!\Registrador_Decoder_H0|DOUT\(2))))) # (\Registrador_Decoder_H0|DOUT\(1) & 
-- ((!\Registrador_Decoder_H0|DOUT\(0) & (!\Registrador_Decoder_H0|DOUT\(2) & \Registrador_Decoder_H0|DOUT\(3))) # (\Registrador_Decoder_H0|DOUT\(0) & (\Registrador_Decoder_H0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H0|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H0|ALT_INV_DOUT\(1),
	datac => \Registrador_Decoder_H0|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H0|ALT_INV_DOUT\(3),
	combout => \DecoderHex0|rascSaida7seg[3]~3_combout\);

\DecoderHex0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex0|rascSaida7seg[4]~4_combout\ = (!\Registrador_Decoder_H0|DOUT\(1) & ((!\Registrador_Decoder_H0|DOUT\(2) & ((\Registrador_Decoder_H0|DOUT\(0)))) # (\Registrador_Decoder_H0|DOUT\(2) & (!\Registrador_Decoder_H0|DOUT\(3))))) # 
-- (\Registrador_Decoder_H0|DOUT\(1) & (!\Registrador_Decoder_H0|DOUT\(3) & ((\Registrador_Decoder_H0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H0|ALT_INV_DOUT\(3),
	datab => \Registrador_Decoder_H0|ALT_INV_DOUT\(2),
	datac => \Registrador_Decoder_H0|ALT_INV_DOUT\(1),
	datad => \Registrador_Decoder_H0|ALT_INV_DOUT\(0),
	combout => \DecoderHex0|rascSaida7seg[4]~4_combout\);

\DecoderHex0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex0|rascSaida7seg[5]~5_combout\ = (!\Registrador_Decoder_H0|DOUT\(0) & (!\Registrador_Decoder_H0|DOUT\(2) & (\Registrador_Decoder_H0|DOUT\(1) & !\Registrador_Decoder_H0|DOUT\(3)))) # (\Registrador_Decoder_H0|DOUT\(0) & 
-- (!\Registrador_Decoder_H0|DOUT\(3) $ (((\Registrador_Decoder_H0|DOUT\(2) & !\Registrador_Decoder_H0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H0|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H0|ALT_INV_DOUT\(2),
	datac => \Registrador_Decoder_H0|ALT_INV_DOUT\(1),
	datad => \Registrador_Decoder_H0|ALT_INV_DOUT\(3),
	combout => \DecoderHex0|rascSaida7seg[5]~5_combout\);

\DecoderHex0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex0|rascSaida7seg[6]~6_combout\ = (!\Registrador_Decoder_H0|DOUT\(0) & (!\Registrador_Decoder_H0|DOUT\(1) & (!\Registrador_Decoder_H0|DOUT\(3) $ (\Registrador_Decoder_H0|DOUT\(2))))) # (\Registrador_Decoder_H0|DOUT\(0) & 
-- (!\Registrador_Decoder_H0|DOUT\(3) & (!\Registrador_Decoder_H0|DOUT\(2) $ (\Registrador_Decoder_H0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H0|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H0|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H0|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H0|ALT_INV_DOUT\(1),
	combout => \DecoderHex0|rascSaida7seg[6]~6_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( !\ROM|memROM~13_combout\ & ( (!\CPU|PC|DOUT\(8) & (\CPU|DECODER|Equal11~0_combout\ & (\comb~0_combout\ & \comb~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ALT_INV_comb~2_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	combout => \comb~3_combout\);

\Registrador_Decoder_H1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H1|DOUT\(0));

\Registrador_Decoder_H1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H1|DOUT\(3));

\Registrador_Decoder_H1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H1|DOUT\(2));

\Registrador_Decoder_H1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H1|DOUT\(1));

\DecoderHex1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex1|rascSaida7seg[0]~0_combout\ = (!\Registrador_Decoder_H1|DOUT\(3) & (!\Registrador_Decoder_H1|DOUT\(1) & (!\Registrador_Decoder_H1|DOUT\(0) $ (!\Registrador_Decoder_H1|DOUT\(2))))) # (\Registrador_Decoder_H1|DOUT\(3) & 
-- (\Registrador_Decoder_H1|DOUT\(0) & (!\Registrador_Decoder_H1|DOUT\(2) $ (!\Registrador_Decoder_H1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H1|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H1|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H1|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H1|ALT_INV_DOUT\(1),
	combout => \DecoderHex1|rascSaida7seg[0]~0_combout\);

\DecoderHex1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex1|rascSaida7seg[1]~1_combout\ = (!\Registrador_Decoder_H1|DOUT\(3) & (\Registrador_Decoder_H1|DOUT\(2) & (!\Registrador_Decoder_H1|DOUT\(0) $ (!\Registrador_Decoder_H1|DOUT\(1))))) # (\Registrador_Decoder_H1|DOUT\(3) & 
-- ((!\Registrador_Decoder_H1|DOUT\(0) & (\Registrador_Decoder_H1|DOUT\(2))) # (\Registrador_Decoder_H1|DOUT\(0) & ((\Registrador_Decoder_H1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H1|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H1|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H1|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H1|ALT_INV_DOUT\(1),
	combout => \DecoderHex1|rascSaida7seg[1]~1_combout\);

\DecoderHex1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex1|rascSaida7seg[2]~2_combout\ = (!\Registrador_Decoder_H1|DOUT\(3) & (!\Registrador_Decoder_H1|DOUT\(0) & (!\Registrador_Decoder_H1|DOUT\(2) & \Registrador_Decoder_H1|DOUT\(1)))) # (\Registrador_Decoder_H1|DOUT\(3) & 
-- (\Registrador_Decoder_H1|DOUT\(2) & ((!\Registrador_Decoder_H1|DOUT\(0)) # (\Registrador_Decoder_H1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H1|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H1|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H1|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H1|ALT_INV_DOUT\(1),
	combout => \DecoderHex1|rascSaida7seg[2]~2_combout\);

\DecoderHex1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex1|rascSaida7seg[3]~3_combout\ = (!\Registrador_Decoder_H1|DOUT\(1) & (!\Registrador_Decoder_H1|DOUT\(3) & (!\Registrador_Decoder_H1|DOUT\(0) $ (!\Registrador_Decoder_H1|DOUT\(2))))) # (\Registrador_Decoder_H1|DOUT\(1) & 
-- ((!\Registrador_Decoder_H1|DOUT\(0) & (!\Registrador_Decoder_H1|DOUT\(2) & \Registrador_Decoder_H1|DOUT\(3))) # (\Registrador_Decoder_H1|DOUT\(0) & (\Registrador_Decoder_H1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H1|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H1|ALT_INV_DOUT\(1),
	datac => \Registrador_Decoder_H1|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H1|ALT_INV_DOUT\(3),
	combout => \DecoderHex1|rascSaida7seg[3]~3_combout\);

\DecoderHex1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex1|rascSaida7seg[4]~4_combout\ = (!\Registrador_Decoder_H1|DOUT\(1) & ((!\Registrador_Decoder_H1|DOUT\(2) & ((\Registrador_Decoder_H1|DOUT\(0)))) # (\Registrador_Decoder_H1|DOUT\(2) & (!\Registrador_Decoder_H1|DOUT\(3))))) # 
-- (\Registrador_Decoder_H1|DOUT\(1) & (!\Registrador_Decoder_H1|DOUT\(3) & ((\Registrador_Decoder_H1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H1|ALT_INV_DOUT\(3),
	datab => \Registrador_Decoder_H1|ALT_INV_DOUT\(2),
	datac => \Registrador_Decoder_H1|ALT_INV_DOUT\(1),
	datad => \Registrador_Decoder_H1|ALT_INV_DOUT\(0),
	combout => \DecoderHex1|rascSaida7seg[4]~4_combout\);

\DecoderHex1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex1|rascSaida7seg[5]~5_combout\ = (!\Registrador_Decoder_H1|DOUT\(0) & (!\Registrador_Decoder_H1|DOUT\(2) & (\Registrador_Decoder_H1|DOUT\(1) & !\Registrador_Decoder_H1|DOUT\(3)))) # (\Registrador_Decoder_H1|DOUT\(0) & 
-- (!\Registrador_Decoder_H1|DOUT\(3) $ (((\Registrador_Decoder_H1|DOUT\(2) & !\Registrador_Decoder_H1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H1|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H1|ALT_INV_DOUT\(2),
	datac => \Registrador_Decoder_H1|ALT_INV_DOUT\(1),
	datad => \Registrador_Decoder_H1|ALT_INV_DOUT\(3),
	combout => \DecoderHex1|rascSaida7seg[5]~5_combout\);

\DecoderHex1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex1|rascSaida7seg[6]~6_combout\ = (!\Registrador_Decoder_H1|DOUT\(0) & (!\Registrador_Decoder_H1|DOUT\(1) & (!\Registrador_Decoder_H1|DOUT\(3) $ (\Registrador_Decoder_H1|DOUT\(2))))) # (\Registrador_Decoder_H1|DOUT\(0) & 
-- (!\Registrador_Decoder_H1|DOUT\(3) & (!\Registrador_Decoder_H1|DOUT\(2) $ (\Registrador_Decoder_H1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H1|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H1|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H1|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H1|ALT_INV_DOUT\(1),
	combout => \DecoderHex1|rascSaida7seg[6]~6_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\ROM|memROM~12_combout\ & \ROM|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~14_combout\);

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~2_combout\ & (\CPU|DECODER|Equal11~0_combout\ & \comb~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datad => \ALT_INV_comb~0_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \comb~4_combout\);

\Registrador_Decoder_H2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H2|DOUT\(0));

\Registrador_Decoder_H2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H2|DOUT\(3));

\Registrador_Decoder_H2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H2|DOUT\(2));

\Registrador_Decoder_H2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H2|DOUT\(1));

\DecoderHex2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex2|rascSaida7seg[0]~0_combout\ = (!\Registrador_Decoder_H2|DOUT\(3) & (!\Registrador_Decoder_H2|DOUT\(1) & (!\Registrador_Decoder_H2|DOUT\(0) $ (!\Registrador_Decoder_H2|DOUT\(2))))) # (\Registrador_Decoder_H2|DOUT\(3) & 
-- (\Registrador_Decoder_H2|DOUT\(0) & (!\Registrador_Decoder_H2|DOUT\(2) $ (!\Registrador_Decoder_H2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H2|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H2|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H2|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H2|ALT_INV_DOUT\(1),
	combout => \DecoderHex2|rascSaida7seg[0]~0_combout\);

\DecoderHex2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex2|rascSaida7seg[1]~1_combout\ = (!\Registrador_Decoder_H2|DOUT\(3) & (\Registrador_Decoder_H2|DOUT\(2) & (!\Registrador_Decoder_H2|DOUT\(0) $ (!\Registrador_Decoder_H2|DOUT\(1))))) # (\Registrador_Decoder_H2|DOUT\(3) & 
-- ((!\Registrador_Decoder_H2|DOUT\(0) & (\Registrador_Decoder_H2|DOUT\(2))) # (\Registrador_Decoder_H2|DOUT\(0) & ((\Registrador_Decoder_H2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H2|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H2|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H2|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H2|ALT_INV_DOUT\(1),
	combout => \DecoderHex2|rascSaida7seg[1]~1_combout\);

\DecoderHex2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex2|rascSaida7seg[2]~2_combout\ = (!\Registrador_Decoder_H2|DOUT\(3) & (!\Registrador_Decoder_H2|DOUT\(0) & (!\Registrador_Decoder_H2|DOUT\(2) & \Registrador_Decoder_H2|DOUT\(1)))) # (\Registrador_Decoder_H2|DOUT\(3) & 
-- (\Registrador_Decoder_H2|DOUT\(2) & ((!\Registrador_Decoder_H2|DOUT\(0)) # (\Registrador_Decoder_H2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H2|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H2|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H2|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H2|ALT_INV_DOUT\(1),
	combout => \DecoderHex2|rascSaida7seg[2]~2_combout\);

\DecoderHex2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex2|rascSaida7seg[3]~3_combout\ = (!\Registrador_Decoder_H2|DOUT\(1) & (!\Registrador_Decoder_H2|DOUT\(3) & (!\Registrador_Decoder_H2|DOUT\(0) $ (!\Registrador_Decoder_H2|DOUT\(2))))) # (\Registrador_Decoder_H2|DOUT\(1) & 
-- ((!\Registrador_Decoder_H2|DOUT\(0) & (!\Registrador_Decoder_H2|DOUT\(2) & \Registrador_Decoder_H2|DOUT\(3))) # (\Registrador_Decoder_H2|DOUT\(0) & (\Registrador_Decoder_H2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H2|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H2|ALT_INV_DOUT\(1),
	datac => \Registrador_Decoder_H2|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H2|ALT_INV_DOUT\(3),
	combout => \DecoderHex2|rascSaida7seg[3]~3_combout\);

\DecoderHex2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex2|rascSaida7seg[4]~4_combout\ = (!\Registrador_Decoder_H2|DOUT\(1) & ((!\Registrador_Decoder_H2|DOUT\(2) & ((\Registrador_Decoder_H2|DOUT\(0)))) # (\Registrador_Decoder_H2|DOUT\(2) & (!\Registrador_Decoder_H2|DOUT\(3))))) # 
-- (\Registrador_Decoder_H2|DOUT\(1) & (!\Registrador_Decoder_H2|DOUT\(3) & ((\Registrador_Decoder_H2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H2|ALT_INV_DOUT\(3),
	datab => \Registrador_Decoder_H2|ALT_INV_DOUT\(2),
	datac => \Registrador_Decoder_H2|ALT_INV_DOUT\(1),
	datad => \Registrador_Decoder_H2|ALT_INV_DOUT\(0),
	combout => \DecoderHex2|rascSaida7seg[4]~4_combout\);

\DecoderHex2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex2|rascSaida7seg[5]~5_combout\ = (!\Registrador_Decoder_H2|DOUT\(0) & (!\Registrador_Decoder_H2|DOUT\(2) & (\Registrador_Decoder_H2|DOUT\(1) & !\Registrador_Decoder_H2|DOUT\(3)))) # (\Registrador_Decoder_H2|DOUT\(0) & 
-- (!\Registrador_Decoder_H2|DOUT\(3) $ (((\Registrador_Decoder_H2|DOUT\(2) & !\Registrador_Decoder_H2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H2|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H2|ALT_INV_DOUT\(2),
	datac => \Registrador_Decoder_H2|ALT_INV_DOUT\(1),
	datad => \Registrador_Decoder_H2|ALT_INV_DOUT\(3),
	combout => \DecoderHex2|rascSaida7seg[5]~5_combout\);

\DecoderHex2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex2|rascSaida7seg[6]~6_combout\ = (!\Registrador_Decoder_H2|DOUT\(0) & (!\Registrador_Decoder_H2|DOUT\(1) & (!\Registrador_Decoder_H2|DOUT\(3) $ (\Registrador_Decoder_H2|DOUT\(2))))) # (\Registrador_Decoder_H2|DOUT\(0) & 
-- (!\Registrador_Decoder_H2|DOUT\(3) & (!\Registrador_Decoder_H2|DOUT\(2) $ (\Registrador_Decoder_H2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H2|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H2|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H2|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H2|ALT_INV_DOUT\(1),
	combout => \DecoderHex2|rascSaida7seg[6]~6_combout\);

\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \ROM|memROM~14_combout\ & ( (!\CPU|PC|DOUT\(8) & (\CPU|DECODER|Equal11~0_combout\ & (\comb~0_combout\ & \comb~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ALT_INV_comb~2_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	combout => \comb~5_combout\);

\Registrador_Decoder_H3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H3|DOUT\(0));

\Registrador_Decoder_H3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H3|DOUT\(3));

\Registrador_Decoder_H3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H3|DOUT\(2));

\Registrador_Decoder_H3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_Decoder_H3|DOUT\(1));

\DecoderHex3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex3|rascSaida7seg[0]~0_combout\ = (!\Registrador_Decoder_H3|DOUT\(3) & (!\Registrador_Decoder_H3|DOUT\(1) & (!\Registrador_Decoder_H3|DOUT\(0) $ (!\Registrador_Decoder_H3|DOUT\(2))))) # (\Registrador_Decoder_H3|DOUT\(3) & 
-- (\Registrador_Decoder_H3|DOUT\(0) & (!\Registrador_Decoder_H3|DOUT\(2) $ (!\Registrador_Decoder_H3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H3|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H3|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H3|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H3|ALT_INV_DOUT\(1),
	combout => \DecoderHex3|rascSaida7seg[0]~0_combout\);

\DecoderHex3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex3|rascSaida7seg[1]~1_combout\ = (!\Registrador_Decoder_H3|DOUT\(3) & (\Registrador_Decoder_H3|DOUT\(2) & (!\Registrador_Decoder_H3|DOUT\(0) $ (!\Registrador_Decoder_H3|DOUT\(1))))) # (\Registrador_Decoder_H3|DOUT\(3) & 
-- ((!\Registrador_Decoder_H3|DOUT\(0) & (\Registrador_Decoder_H3|DOUT\(2))) # (\Registrador_Decoder_H3|DOUT\(0) & ((\Registrador_Decoder_H3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H3|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H3|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H3|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H3|ALT_INV_DOUT\(1),
	combout => \DecoderHex3|rascSaida7seg[1]~1_combout\);

\DecoderHex3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex3|rascSaida7seg[2]~2_combout\ = (!\Registrador_Decoder_H3|DOUT\(3) & (!\Registrador_Decoder_H3|DOUT\(0) & (!\Registrador_Decoder_H3|DOUT\(2) & \Registrador_Decoder_H3|DOUT\(1)))) # (\Registrador_Decoder_H3|DOUT\(3) & 
-- (\Registrador_Decoder_H3|DOUT\(2) & ((!\Registrador_Decoder_H3|DOUT\(0)) # (\Registrador_Decoder_H3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H3|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H3|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H3|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H3|ALT_INV_DOUT\(1),
	combout => \DecoderHex3|rascSaida7seg[2]~2_combout\);

\DecoderHex3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex3|rascSaida7seg[3]~3_combout\ = (!\Registrador_Decoder_H3|DOUT\(1) & (!\Registrador_Decoder_H3|DOUT\(3) & (!\Registrador_Decoder_H3|DOUT\(0) $ (!\Registrador_Decoder_H3|DOUT\(2))))) # (\Registrador_Decoder_H3|DOUT\(1) & 
-- ((!\Registrador_Decoder_H3|DOUT\(0) & (!\Registrador_Decoder_H3|DOUT\(2) & \Registrador_Decoder_H3|DOUT\(3))) # (\Registrador_Decoder_H3|DOUT\(0) & (\Registrador_Decoder_H3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H3|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H3|ALT_INV_DOUT\(1),
	datac => \Registrador_Decoder_H3|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H3|ALT_INV_DOUT\(3),
	combout => \DecoderHex3|rascSaida7seg[3]~3_combout\);

\DecoderHex3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex3|rascSaida7seg[4]~4_combout\ = (!\Registrador_Decoder_H3|DOUT\(1) & ((!\Registrador_Decoder_H3|DOUT\(2) & ((\Registrador_Decoder_H3|DOUT\(0)))) # (\Registrador_Decoder_H3|DOUT\(2) & (!\Registrador_Decoder_H3|DOUT\(3))))) # 
-- (\Registrador_Decoder_H3|DOUT\(1) & (!\Registrador_Decoder_H3|DOUT\(3) & ((\Registrador_Decoder_H3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H3|ALT_INV_DOUT\(3),
	datab => \Registrador_Decoder_H3|ALT_INV_DOUT\(2),
	datac => \Registrador_Decoder_H3|ALT_INV_DOUT\(1),
	datad => \Registrador_Decoder_H3|ALT_INV_DOUT\(0),
	combout => \DecoderHex3|rascSaida7seg[4]~4_combout\);

\DecoderHex3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex3|rascSaida7seg[5]~5_combout\ = (!\Registrador_Decoder_H3|DOUT\(0) & (!\Registrador_Decoder_H3|DOUT\(2) & (\Registrador_Decoder_H3|DOUT\(1) & !\Registrador_Decoder_H3|DOUT\(3)))) # (\Registrador_Decoder_H3|DOUT\(0) & 
-- (!\Registrador_Decoder_H3|DOUT\(3) $ (((\Registrador_Decoder_H3|DOUT\(2) & !\Registrador_Decoder_H3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H3|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H3|ALT_INV_DOUT\(2),
	datac => \Registrador_Decoder_H3|ALT_INV_DOUT\(1),
	datad => \Registrador_Decoder_H3|ALT_INV_DOUT\(3),
	combout => \DecoderHex3|rascSaida7seg[5]~5_combout\);

\DecoderHex3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHex3|rascSaida7seg[6]~6_combout\ = (!\Registrador_Decoder_H3|DOUT\(0) & (!\Registrador_Decoder_H3|DOUT\(1) & (!\Registrador_Decoder_H3|DOUT\(3) $ (\Registrador_Decoder_H3|DOUT\(2))))) # (\Registrador_Decoder_H3|DOUT\(0) & 
-- (!\Registrador_Decoder_H3|DOUT\(3) & (!\Registrador_Decoder_H3|DOUT\(2) $ (\Registrador_Decoder_H3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Decoder_H3|ALT_INV_DOUT\(0),
	datab => \Registrador_Decoder_H3|ALT_INV_DOUT\(3),
	datac => \Registrador_Decoder_H3|ALT_INV_DOUT\(2),
	datad => \Registrador_Decoder_H3|ALT_INV_DOUT\(1),
	combout => \DecoderHex3|rascSaida7seg[6]~6_combout\);

\pc_hex0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_hex0|rascSaida7seg[0]~0_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \pc_hex0|rascSaida7seg[0]~0_combout\);

\pc_hex0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_hex0|rascSaida7seg[1]~1_combout\ = (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \pc_hex0|rascSaida7seg[1]~1_combout\);

\pc_hex0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_hex0|rascSaida7seg[2]~2_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \pc_hex0|rascSaida7seg[2]~2_combout\);

\pc_hex0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_hex0|rascSaida7seg[3]~3_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \pc_hex0|rascSaida7seg[3]~3_combout\);

\pc_hex0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_hex0|rascSaida7seg[4]~4_combout\ = (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \pc_hex0|rascSaida7seg[4]~4_combout\);

\pc_hex0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_hex0|rascSaida7seg[5]~5_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \pc_hex0|rascSaida7seg[5]~5_combout\);

\pc_hex0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_hex0|rascSaida7seg[6]~6_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \pc_hex0|rascSaida7seg[6]~6_combout\);

\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\DECODER_2to0|Equal7~0_combout\ & (\CPU|DECODER|Equal11~0_combout\ & \comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_2to0|ALT_INV_Equal7~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	combout => \comb~6_combout\);

\RegLeds7to0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLeds7to0|DOUT\(0));

\RegLeds7to0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLeds7to0|DOUT\(1));

\RegLeds7to0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLeds7to0|DOUT\(2));

\RegLeds7to0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLeds7to0|DOUT\(3));

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\RAM0|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~283_q\);

\RAM0|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~299_q\);

\RAM0|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~291_q\);

\RAM0|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~27_q\);

\RAM0|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~43_q\);

\RAM0|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~35_q\);

\RAM0|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~19_q\);

\RAM0|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~583_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~19_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~27_q\)))) ) ) # ( \ROM|memROM~13_combout\ & ( 
-- ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~35_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~43_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~27_q\,
	datab => \RAM0|ALT_INV_ram~43_q\,
	datac => \RAM0|ALT_INV_ram~35_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	datag => \RAM0|ALT_INV_ram~19_q\,
	combout => \RAM0|ram~583_combout\);

\RAM0|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~275_q\);

\RAM0|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~551_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~583_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~583_combout\ & ((\RAM0|ram~275_q\))) # (\RAM0|ram~583_combout\ & (\RAM0|ram~283_q\))))) ) ) # ( 
-- \ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~583_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~583_combout\ & ((\RAM0|ram~291_q\))) # (\RAM0|ram~583_combout\ & (\RAM0|ram~299_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~283_q\,
	datab => \RAM0|ALT_INV_ram~299_q\,
	datac => \RAM0|ALT_INV_ram~291_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \RAM0|ALT_INV_ram~583_combout\,
	datag => \RAM0|ALT_INV_ram~275_q\,
	combout => \RAM0|ram~551_combout\);

\CPU|MUX1|saida_MUX[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~10_combout\ = (!\comb~9_combout\ & ((\RAM0|ram~551_combout\))) # (\comb~9_combout\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \RAM0|ALT_INV_ram~551_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~10_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\CPU|DECODER|Equal11~1_combout\ $ (((\CPU|MUX1|saida_MUX[4]~10_combout\ & ((!\CPU|DECODER|saida~1_combout\) # (\CPU|DECODER|saida[5]~2_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\CPU|DECODER|Equal11~1_combout\ $ (((\CPU|MUX1|saida_MUX[4]~10_combout\ & ((!\CPU|DECODER|saida~1_combout\) # (\CPU|DECODER|saida[5]~2_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[5]~2_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~10_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|MUX1|saida_MUX[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~6_combout\ = (!\CPU|DECODER|saida[6]~3_combout\ & ((!\comb~9_combout\ & ((\RAM0|ram~551_combout\))) # (\comb~9_combout\ & (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \RAM0|ALT_INV_ram~551_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~6_combout\);

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~6_combout\,
	sload => \CPU|DECODER|saida~6_combout\,
	ena => \CPU|DECODER|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

\RegLeds7to0|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLeds7to0|DOUT\(4));

\RAM0|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~284_q\);

\RAM0|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~300_q\);

\RAM0|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~292_q\);

\RAM0|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~28_q\);

\RAM0|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~44_q\);

\RAM0|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~36_q\);

\RAM0|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~20_q\);

\RAM0|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~575_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~20_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~28_q\)))) ) ) # ( \ROM|memROM~13_combout\ & ( 
-- ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~36_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~44_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~28_q\,
	datab => \RAM0|ALT_INV_ram~44_q\,
	datac => \RAM0|ALT_INV_ram~36_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	datag => \RAM0|ALT_INV_ram~20_q\,
	combout => \RAM0|ram~575_combout\);

\RAM0|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~276_q\);

\RAM0|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~543_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~575_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~575_combout\ & ((\RAM0|ram~276_q\))) # (\RAM0|ram~575_combout\ & (\RAM0|ram~284_q\))))) ) ) # ( 
-- \ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~575_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~575_combout\ & ((\RAM0|ram~292_q\))) # (\RAM0|ram~575_combout\ & (\RAM0|ram~300_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~284_q\,
	datab => \RAM0|ALT_INV_ram~300_q\,
	datac => \RAM0|ALT_INV_ram~292_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \RAM0|ALT_INV_ram~575_combout\,
	datag => \RAM0|ALT_INV_ram~276_q\,
	combout => \RAM0|ram~543_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\CPU|MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~4_combout\ = ( \SW[5]~input_o\ & ( (!\CPU|DECODER|saida[6]~3_combout\ & (((\RAM0|ram~543_combout\) # (\comb~9_combout\)))) # (\CPU|DECODER|saida[6]~3_combout\ & (\ROM|memROM~2_combout\)) ) ) # ( !\SW[5]~input_o\ & ( 
-- (!\CPU|DECODER|saida[6]~3_combout\ & (((!\comb~9_combout\ & \RAM0|ram~543_combout\)))) # (\CPU|DECODER|saida[6]~3_combout\ & (\ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100010001110100010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[6]~3_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \RAM0|ALT_INV_ram~543_combout\,
	datae => \ALT_INV_SW[5]~input_o\,
	combout => \CPU|MUX1|saida_MUX[5]~4_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|DECODER|Equal11~1_combout\ $ (\CPU|MUX1|saida_MUX[5]~4_combout\) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|DECODER|Equal11~1_combout\ $ (\CPU|MUX1|saida_MUX[5]~4_combout\) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~4_combout\,
	sload => \CPU|DECODER|saida~6_combout\,
	ena => \CPU|DECODER|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

\RegLeds7to0|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLeds7to0|DOUT\(5));

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\RAM0|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~285_q\);

\RAM0|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~301_q\);

\RAM0|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~293_q\);

\RAM0|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~29_q\);

\RAM0|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~45_q\);

\RAM0|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~37_q\);

\RAM0|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~21_q\);

\RAM0|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~579_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~21_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~29_q\)))) ) ) # ( \ROM|memROM~13_combout\ & ( 
-- ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~37_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~45_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~29_q\,
	datab => \RAM0|ALT_INV_ram~45_q\,
	datac => \RAM0|ALT_INV_ram~37_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	datag => \RAM0|ALT_INV_ram~21_q\,
	combout => \RAM0|ram~579_combout\);

\RAM0|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~277_q\);

\RAM0|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~547_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~579_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~579_combout\ & ((\RAM0|ram~277_q\))) # (\RAM0|ram~579_combout\ & (\RAM0|ram~285_q\))))) ) ) # ( 
-- \ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~579_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~579_combout\ & ((\RAM0|ram~293_q\))) # (\RAM0|ram~579_combout\ & (\RAM0|ram~301_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~285_q\,
	datab => \RAM0|ALT_INV_ram~301_q\,
	datac => \RAM0|ALT_INV_ram~293_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \RAM0|ALT_INV_ram~579_combout\,
	datag => \RAM0|ALT_INV_ram~277_q\,
	combout => \RAM0|ram~547_combout\);

\CPU|MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~5_combout\ = ( \RAM0|ram~547_combout\ & ( (!\CPU|DECODER|saida[6]~3_combout\ & (((!\comb~9_combout\) # (\SW[6]~input_o\)))) # (\CPU|DECODER|saida[6]~3_combout\ & (((\comb~9_combout\)) # (\ROM|memROM~20_combout\))) ) ) # ( 
-- !\RAM0|ram~547_combout\ & ( (!\CPU|DECODER|saida[6]~3_combout\ & (((\comb~9_combout\ & \SW[6]~input_o\)))) # (\CPU|DECODER|saida[6]~3_combout\ & (((\comb~9_combout\)) # (\ROM|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100011111110100111101111100010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[6]~3_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	datae => \RAM0|ALT_INV_ram~547_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~5_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|DECODER|Equal11~1_combout\ $ (\CPU|MUX1|saida_MUX[6]~5_combout\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|DECODER|Equal11~1_combout\ $ (\CPU|MUX1|saida_MUX[6]~5_combout\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~5_combout\,
	sload => \CPU|DECODER|saida~6_combout\,
	ena => \CPU|DECODER|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

\RegLeds7to0|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLeds7to0|DOUT\(6));

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\RAM0|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~286_q\);

\RAM0|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~302_q\);

\RAM0|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~294_q\);

\RAM0|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~30_q\);

\RAM0|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~46_q\);

\RAM0|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~38_q\);

\RAM0|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~22_q\);

\RAM0|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~587_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~22_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~30_q\)))) ) ) # ( \ROM|memROM~13_combout\ & ( 
-- ((!\ROM|memROM~15_combout\ & (((\RAM0|ram~38_q\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~15_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM0|ram~46_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~30_q\,
	datab => \RAM0|ALT_INV_ram~46_q\,
	datac => \RAM0|ALT_INV_ram~38_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	datag => \RAM0|ALT_INV_ram~22_q\,
	combout => \RAM0|ram~587_combout\);

\RAM0|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~278_q\);

\RAM0|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~555_combout\ = ( !\ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~587_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~587_combout\ & ((\RAM0|ram~278_q\))) # (\RAM0|ram~587_combout\ & (\RAM0|ram~286_q\))))) ) ) # ( 
-- \ROM|memROM~13_combout\ & ( ((!\ROM|memROM~2_combout\ & (((\RAM0|ram~587_combout\)))) # (\ROM|memROM~2_combout\ & ((!\RAM0|ram~587_combout\ & ((\RAM0|ram~294_q\))) # (\RAM0|ram~587_combout\ & (\RAM0|ram~302_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~286_q\,
	datab => \RAM0|ALT_INV_ram~302_q\,
	datac => \RAM0|ALT_INV_ram~294_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \RAM0|ALT_INV_ram~587_combout\,
	datag => \RAM0|ALT_INV_ram~278_q\,
	combout => \RAM0|ram~555_combout\);

\CPU|MUX1|saida_MUX[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~11_combout\ = (!\comb~9_combout\ & ((\RAM0|ram~555_combout\))) # (\comb~9_combout\ & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \RAM0|ALT_INV_ram~555_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~11_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( !\CPU|DECODER|Equal11~1_combout\ $ (((\CPU|MUX1|saida_MUX[7]~11_combout\ & ((!\CPU|DECODER|saida~1_combout\) # (\CPU|DECODER|saida[5]~2_combout\))))) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[5]~2_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~11_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~7_combout\ = (!\CPU|DECODER|saida[6]~3_combout\ & ((!\comb~9_combout\ & ((\RAM0|ram~555_combout\))) # (\comb~9_combout\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \RAM0|ALT_INV_ram~555_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~7_combout\);

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|DECODER|saida~6_combout\,
	ena => \CPU|DECODER|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

\RegLeds7to0|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLeds7to0|DOUT\(7));

\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (!\CPU|PC|DOUT\(8) & (\CPU|DECODER|Equal11~0_combout\ & (\comb~0_combout\ & !\ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	combout => \comb~7_combout\);

\RegLed8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegLed8|DOUT~0_combout\ = ( \comb~7_combout\ & ( (!\ROM|memROM~12_combout\ & (\RegLed8|DOUT~q\)) # (\ROM|memROM~12_combout\ & ((!\ROM|memROM~3_combout\ & (\RegLed8|DOUT~q\)) # (\ROM|memROM~3_combout\ & ((\CPU|REGA|DOUT\(0)))))) ) ) # ( !\comb~7_combout\ 
-- & ( \RegLed8|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101001101010101010101010101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegLed8|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ALT_INV_comb~7_combout\,
	combout => \RegLed8|DOUT~0_combout\);

\RegLed8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RegLed8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLed8|DOUT~q\);

\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (!\CPU|PC|DOUT\(8) & (\CPU|DECODER|Equal11~0_combout\ & (\comb~0_combout\ & \ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	combout => \comb~8_combout\);

\RegLed9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegLed9|DOUT~0_combout\ = (!\ROM|memROM~15_combout\ & ((!\comb~8_combout\ & (\RegLed9|DOUT~q\)) # (\comb~8_combout\ & ((\CPU|REGA|DOUT\(0)))))) # (\ROM|memROM~15_combout\ & (\RegLed9|DOUT~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110101010101010011010101010101001101010101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegLed9|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ALT_INV_comb~8_combout\,
	combout => \RegLed9|DOUT~0_combout\);

\RegLed9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RegLed9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLed9|DOUT~q\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


