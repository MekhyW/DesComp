library ieee;
use ieee.std_logic_1164.all;


entity Aula5 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraInstrucoes : natural := 13;
		  larguraSinalControle : natural := 12;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
	 Palavra_Controle: out std_logic_vector(11 downto 0)
  );
end entity;



architecture arquitetura of Aula5 is

  signal Sinais_Controle : std_logic_vector (larguraSinalControle-1 downto 0);
  signal Endereco : std_logic_vector (larguraEnderecos-1 downto 0);
  signal CLK : std_logic;
  signal RegA_out : std_logic_vector (larguraDados-1 downto 0);
  signal MUX1_out : std_logic_vector (larguraDados-1 downto 0);
  signal MUX2_out : std_logic_vector (larguraEnderecos-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal RAM_out : std_logic_vector (larguraDados-1 downto 0);
  signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal RegFlagIgual_in : std_logic_vector(0 downto 0);
  signal RegFlagIgual_out : std_logic_vector(0 downto 0);
  signal SelMux_PC : std_logic_vector(1 downto 0);
  signal Endereco_Retorno : std_logic_vector(8 downto 0);

  signal instrucao : std_logic_vector(12 downto 0);
  alias valorOpcode:  std_logic_vector(3 downto 0) is instrucao(12 downto 9);
  alias enderecoImediato:  std_logic_vector(8 downto 0) is instrucao(8 downto 0);
  alias enderecoRAM: std_logic_vector(7 downto 0) is enderecoImediato(7 downto 0);
  alias valorImediato:  std_logic_vector(7 downto 0) is instrucao(7 downto 0);
  alias HabilitaRAM: std_logic is enderecoImediato(8);
  alias habilita_ret: std_logic is Sinais_Controle(11);
  alias JMP: std_logic is Sinais_Controle(10);
  alias RET: std_logic is Sinais_Controle(9);
  alias JSR: std_logic is Sinais_Controle(8);
  alias JEQ: std_logic is Sinais_Controle(7);
  alias SelMUX: std_logic is Sinais_Controle(6);
  alias Habilita_A: std_logic is Sinais_Controle(5);
  alias Operacao_ULA: std_logic_vector(1 downto 0) is Sinais_Controle(4 downto 3);
  alias habilitaFlag_igual: std_logic is Sinais_Controle(2);
  alias habLeituraMEM: std_logic is Sinais_Controle(1);
  alias habEscritaMEM: std_logic is Sinais_Controle(0);

begin



-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map(entradaA_MUX => RAM_out,
                 entradaB_MUX =>  valorImediato,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX1_out);

REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => RegA_out, ENABLE => Habilita_A, CLK => CLK, RST => '0');

PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => MUX2_out, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);

		  
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => RegA_out, entradaB => MUX1_out, saida => Saida_ULA, seletor => Operacao_ULA, zero => RegFlagIgual_in(0));

ROM1 : entity work.memoriaROM   generic map (dataWidth => larguraInstrucoes, addrWidth => larguraEnderecos)
          port map (Endereco => Endereco, Dado => instrucao);
			 
RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map (addr => enderecoRAM, we => habEscritaMEM, re => habLeituraMEM, habilita  => HabilitaRAM, 
			 dado_in => RegA_out, dado_out => RAM_out, clk => CLK);
			 
DECODER : entity work.decoderInstru port map (opcode => valorOpcode, saida => Sinais_Controle);

MUX2: entity work.muxGenerico4x1 generic map(larguraDados => larguraEnderecos) 
			 port map(entradaA_MUX => proxPC, entradaB_MUX => enderecoImediato, entradaC_MUX => Endereco_Retorno, entradaD_MUX => "000000000",
          seletor_MUX => SelMux_PC, saida_MUX => MUX2_out);
					  
REGFlagIgual : entity work.registradorGenerico   generic map (larguraDados => 1)
          port map (DIN => RegFlagIgual_in, DOUT => RegFlagIgual_out, ENABLE => habilitaFlag_igual, CLK => CLK, RST => '0');
			 
REGEnderecoRetorno : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => proxPC, DOUT => Endereco_Retorno, ENABLE => habilita_ret , CLK => CLK, RST => '0');




SelMux_PC <= "10" when (RET = '1') else
				 "01" when (JMP = '1' or JSR = '1' or (JEQ = '1' and RegFlagIgual_out(0) = '1')) else 
				 "00";
PC_OUT <= Endereco;
Palavra_Controle <= Sinais_Controle;

end architecture;