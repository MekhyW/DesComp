library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Aula8 is
  generic   (
    larguraDados : natural := 8;
    larguraEnderecos : natural := 9;
	 larguraInstrucoes : natural := 13;
	 larguraRAM : natural := 6;
	 larguraSinalControle : natural := 12;
	 simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );

  port   (
	 CLOCK_50 : in std_logic;
	 KEY: in std_logic_vector(3 downto 0);
	 FPGA_RESET_N : in std_logic;
	 SW   : IN std_logic_vector(9 downto 0);
	 HEX0 : OUT std_logic_vector(6 downto 0);
	 HEX1 : OUT std_logic_vector(6 downto 0);
	 HEX2 : OUT std_logic_vector(6 downto 0);
	 HEX3 : OUT std_logic_vector(6 downto 0);
	 HEX4 : OUT std_logic_vector(6 downto 0);
	 HEX5 : OUT std_logic_vector(6 downto 0);
    LEDR :  out  std_logic_vector(9 downto 0)
  );
end entity;


architecture arch_name of Aula8 is

 signal CLK : std_logic;
 signal Rd : std_logic;
 signal Wr : std_logic;
 signal DADO_Instruction_IN : std_logic_vector (larguraInstrucoes-1 downto 0);
 signal ROM_Address_ENDERECO : std_logic_vector (larguraEnderecos-1 downto 0);
 signal RAM_Data_IN : std_logic_vector (larguraDados-1 downto 0);
 signal Data_OUT_RAM : std_logic_vector (larguraDados-1 downto 0);
 signal Data_Address : std_logic_vector (larguraEnderecos-1 downto 0);
 alias EnderecoDados_RAM : std_logic_vector(5 downto 0) is Data_Address(5 downto 0);
 alias Data_Address_Decodificador_8to6 : std_logic_vector(2 downto 0) is Data_Address (8 downto 6);
 alias Data_Address_Decodificador_2to0 : std_logic_vector(2 downto 0) is Data_Address (2 downto 0);
 signal OUT_DECODER_8to6 : std_logic_vector (7 downto 0);
 signal OUT_DECODER_2to0 : std_logic_vector (7 downto 0);
 alias bloco0_habilitaRAM : std_logic is OUT_DECODER_8to6(0);
 alias bloco1_habilitaRAM : std_logic is OUT_DECODER_8to6(1);
 alias bloco2_habilitaRAM : std_logic is OUT_DECODER_8to6(2);
 alias bloco3_habilitaRAM : std_logic is OUT_DECODER_8to6(3);
 alias bloco4_habilitaRAM : std_logic is OUT_DECODER_8to6(4);
 alias bloco5_habilitaRAM : std_logic is OUT_DECODER_8to6(5);
 alias bloco6_habilitaRAM : std_logic is OUT_DECODER_8to6(6);
 alias bloco7_habilitaRAM : std_logic is OUT_DECODER_8to6(7);
 alias decoder_2to0_Addr0 : std_logic is OUT_DECODER_2to0(0);
 alias decoder_2to0_Addr1 : std_logic is OUT_DECODER_2to0(1);
 alias decoder_2to0_Addr2 : std_logic is OUT_DECODER_2to0(2);
 alias decoder_2to0_Addr3 : std_logic is OUT_DECODER_2to0(3);
 alias decoder_2to0_Addr4 : std_logic is OUT_DECODER_2to0(4);
 alias decoder_2to0_Addr5 : std_logic is OUT_DECODER_2to0(5);
 alias leds7to0 : std_logic_vector (7 downto 0) is LEDR(7 downto 0);
 alias led8 : std_logic is LEDR (8);
 alias led9 : std_logic is LEDR (9);
 alias DATA_OUT_RAM_D0 : std_logic is Data_OUT_RAM(0);
 signal DECODER_HEX0 : std_logic_vector(6 downto 0);
 signal reset : std_logic;
 alias Data_Address_A5 : std_logic is Data_Address(5);
 alias Data_OUT_RAM_D0toD3 : std_logic_vector(3 downto 0) is Data_OUT_RAM(3 downto 0);
 signal Valor_Reg_DecoderH0 : std_logic_vector(3 downto 0);
 signal Valor_Reg_DecoderH1 : std_logic_vector(3 downto 0);
 signal Valor_Reg_DecoderH2 : std_logic_vector(3 downto 0);
 signal Valor_Reg_DecoderH3 : std_logic_vector(3 downto 0);
 signal Valor_Reg_DecoderH4 : std_logic_vector(3 downto 0);
 signal Valor_Reg_DecoderH5 : std_logic_vector(3 downto 0);
 signal Valor_Reg_DecoderH6 : std_logic_vector(3 downto 0);
 signal DisplayH0 : std_logic_vector(6 downto 0);
 signal DisplayH1 : std_logic_vector(6 downto 0);
 signal DisplayH2 : std_logic_vector(6 downto 0);
 signal DisplayH3 : std_logic_vector(6 downto 0);
 signal DisplayH4 : std_logic_vector(6 downto 0);
 signal DisplayH5 : std_logic_vector(6 downto 0);
 alias SW7to0 : std_logic_vector(7 downto 0) is SW(7 DOWNTO 0);
 alias SW8 : std_logic is SW(8);
 alias SW9 : std_logic is SW(9);
 signal KEY0 : std_logic;
 signal KEY1 : std_logic;
 signal KEY2 : std_logic;
 signal KEY3 : std_logic;
 signal buffer_3_state_data_in : std_logic_vector(larguraDados - 1 downto 0);
 alias buffer_3_state_data_in_bit_0 : std_logic is buffer_3_state_data_in(0);
 alias RAM_Data_IN_bit_0 : std_logic is RAM_Data_IN(0);
 signal debounceKey0 : std_logic;
 signal debounceKey1 : std_logic;

begin



-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= CLOCK_50;
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


CPU : entity work.CPU 
			 port map (Clock => CLK, Reset => reset, Rd => Rd, Wr => Wr, ROM_Address => ROM_Address_ENDERECO,
			 Instruction_IN => DADO_Instruction_IN, Data_IN => RAM_Data_IN, Data_OUT => Data_OUT_RAM, Data_Address => Data_Address);

ROM : entity work.memoriaROM generic map (dataWidth => larguraInstrucoes, addrWidth => larguraEnderecos)
          port map (Endereco => ROM_Address_ENDERECO, Dado => DADO_Instruction_IN);
			 
RAM0 : entity work.memoriaRAM generic map (dataWidth => larguraDados, addrWidth => larguraRAM)
          port map (addr => EnderecoDados_RAM, we => Wr, re => Rd, habilita  => bloco0_habilitaRAM, dado_in => Data_OUT_RAM, dado_out => RAM_Data_IN, clk => CLK);

DECODER_8to6 :  entity work.decoder3x8 
			 port map(entrada => Data_Address_Decodificador_8to6, saida => OUT_DECODER_8to6);

DECODER_2to0 :  entity work.decoder3x8 
			 port map(entrada => Data_Address_Decodificador_2to0, saida => OUT_DECODER_2to0);

RegLeds7to0 : entity work.registradorGenerico generic map (larguraDados => larguraDados)
          port map (DIN => Data_OUT_RAM, DOUT => leds7to0, ENABLE => (Wr and decoder_2to0_Addr0 and bloco4_habilitaRAM), CLK => CLK, RST => '0');

RegLed8 : entity work.registradorFlipflop
          port map (DIN => DATA_OUT_RAM_D0, DOUT => led8, ENABLE => (Wr and decoder_2to0_Addr1 and bloco4_habilitaRAM), CLK => CLK, RST => '0');

RegLed9 : entity work.registradorFlipflop
          port map (DIN => DATA_OUT_RAM_D0, DOUT => led9, ENABLE => (Wr and decoder_2to0_Addr2 and bloco4_habilitaRAM), CLK => CLK, RST => '0');	 
 
pc_hex0 :  entity work.conversorHex7Seg
        port map(dadoHex => ROM_Address_ENDERECO(3 downto 0), apaga =>  '0', negativo => '0', overFlow =>  '0', saida7seg => DECODER_HEX0);

DecoderHex0 : entity work.conversorHex7Seg
        port map(dadoHex =>Valor_Reg_DecoderH0, apaga =>  '0', negativo => '0', overFlow =>  '0', saida7seg => DisplayH0);

DecoderHex1 : entity work.conversorHex7Seg
        port map(dadoHex =>Valor_Reg_DecoderH1, apaga =>  '0', negativo => '0', overFlow =>  '0', saida7seg => DisplayH1);

DecoderHex2 : entity work.conversorHex7Seg
        port map(dadoHex =>Valor_Reg_DecoderH2, apaga =>  '0', negativo => '0', overFlow =>  '0', saida7seg => DisplayH2);

DecoderHex3 : entity work.conversorHex7Seg
        port map(dadoHex =>Valor_Reg_DecoderH3, apaga =>  '0', negativo => '0', overFlow =>  '0', saida7seg => DisplayH3);

DecoderHex4 : entity work.conversorHex7Seg
        port map(dadoHex =>Valor_Reg_DecoderH4, apaga =>  '0', negativo => '0', overFlow =>  '0', saida7seg => DisplayH4);

DecoderHex5 : entity work.conversorHex7Seg
        port map(dadoHex =>Valor_Reg_DecoderH5, apaga =>  '0', negativo => '0', overFlow =>  '0', saida7seg => DisplayH5);
	
Registrador_Decoder_H0 : entity work.registradorGenerico generic map (larguraDados => 4)
        port map (DIN => Data_OUT_RAM_D0toD3, DOUT => Valor_Reg_DecoderH0, ENABLE => (Wr and bloco4_habilitaRAM and Data_Address_A5 and decoder_2to0_Addr0), CLK => CLK, RST => '0');
                                
Registrador_Decoder_H1 : entity work.registradorGenerico generic map (larguraDados => 4)
        port map (DIN => Data_OUT_RAM_D0toD3, DOUT => Valor_Reg_DecoderH1, ENABLE => (Wr and bloco4_habilitaRAM and Data_Address_A5 and decoder_2to0_Addr1), CLK => CLK, RST => '0');

Registrador_Decoder_H2 : entity work.registradorGenerico generic map (larguraDados => 4)
          port map (DIN => Data_OUT_RAM_D0toD3, DOUT => Valor_Reg_DecoderH2, ENABLE => (Wr and bloco4_habilitaRAM and Data_Address_A5 and decoder_2to0_Addr2), CLK => CLK, RST => '0');
					  
Registrador_Decoder_H3 : entity work.registradorGenerico generic map (larguraDados => 4)
          port map (DIN => Data_OUT_RAM_D0toD3, DOUT => Valor_Reg_DecoderH3, ENABLE => (Wr and bloco4_habilitaRAM and Data_Address_A5 and decoder_2to0_Addr3), CLK => CLK, RST => '0');
				  
Registrador_Decoder_H4 : entity work.registradorGenerico generic map (larguraDados => 4)
          port map (DIN => Data_OUT_RAM_D0toD3, DOUT => Valor_Reg_DecoderH4, ENABLE => (Wr and bloco4_habilitaRAM and Data_Address_A5 and decoder_2to0_Addr4), CLK => CLK, RST => '0');
					  
Registrador_Decoder_H5 : entity work.registradorGenerico generic map (larguraDados => 4)
          port map (DIN => Data_OUT_RAM_D0toD3, DOUT => Valor_Reg_DecoderH5, ENABLE => (Wr and bloco4_habilitaRAM and Data_Address_A5 and decoder_2to0_Addr5), CLK => CLK, RST => '0');
			  
BufferSw7to0 : work.buffer_3_state_8portas
		port map(entrada => SW7to0, habilita => Rd and (not Data_Address_A5) and decoder_2to0_Addr0 and bloco5_habilitaRAM, saida => buffer_3_state_data_in);
	
BufferSw8 : work.buffer_3_state_1porta
		port map(entrada => SW8, habilita => Rd and (not Data_Address_A5) and decoder_2to0_Addr1 and bloco5_habilitaRAM, saida => buffer_3_state_data_in_bit_0);

BufferSw9 : work.buffer_3_state_1porta
		port map(entrada => SW9, habilita => Rd and (not Data_Address_A5) and decoder_2to0_Addr2 and bloco5_habilitaRAM, saida => buffer_3_state_data_in_bit_0);

BufferKey0 : work.buffer_3_state_1porta
                port map(entrada => KEY0, habilita => Rd and Data_Address_A5 and decoder_2to0_Addr0 and bloco5_habilitaRAM, saida => RAM_Data_IN_bit_0);
        
BufferKey1 : work.buffer_3_state_1porta
                port map(entrada => KEY1, habilita => Rd and Data_Address_A5 and decoder_2to0_Addr1 and bloco5_habilitaRAM, saida => RAM_Data_IN_bit_0);

BufferKey2 : work.buffer_3_state_1porta
		port map(entrada => KEY2, habilita => Rd and Data_Address_A5 and decoder_2to0_Addr2 and bloco5_habilitaRAM, saida => RAM_Data_IN_bit_0);
	
BufferKey3 : work.buffer_3_state_1porta
		port map(entrada => KEY3, habilita => Rd and Data_Address_A5 and decoder_2to0_Addr3 and bloco5_habilitaRAM, saida => RAM_Data_IN_bit_0);

detectorSubKey0: work.edgeDetector(bordaSubida)
                port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => debounceKey0);
                        
detectorSubKey1: work.edgeDetector(bordaSubida)
                port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => debounceKey1);
                          
debounce0 : entity work.registradorFlipflop
                port map (DIN => '1', DOUT => KEY0, ENABLE => '1' , CLK => debounceKey0, RST => (Data_Address(8) and Data_Address(7) and Data_Address(6) 
                        and Data_Address(5) and Data_Address(4) and Data_Address(3) and Data_Address(2) and Data_Address(1) and Data_Address(0) and Wr));
                                                              
debounce1 : entity work.registradorFlipflop
                  port map (DIN => '1', DOUT => KEY1, ENABLE => '1' , CLK => debounceKey1, RST => (Data_Address(8) and Data_Address(7) and Data_Address(6) 
                        and Data_Address(5) and Data_Address(4) and Data_Address(3) and Data_Address(2) and Data_Address(1) and Data_Address(0) and Wr));
					  

HEX0 <= DisplayH0;
HEX1 <= DisplayH1;
HEX2 <= DisplayH2;
HEX3 <= DisplayH3;
HEX4 <= DisplayH4;
HEX5 <= DECODER_HEX0;
reset <= NOT FPGA_RESET_N;
KEY2 <= NOT KEY(2);
KEY3 <= NOT KEY(3);
RAM_Data_IN <= buffer_3_state_data_in;
	
end architecture;