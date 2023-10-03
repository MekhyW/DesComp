library ieee;
use ieee.std_logic_1164.all;


entity CPU is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraInstrucoes : natural := 13;
		  larguraSinalControle : natural := 12
  );
  port   (
    Clock : in std_logic;
	 Reset : in std_logic;
	 Rd : out std_logic;
	 Wr : out std_logic;
	 ROM_Address : out std_logic_vector(larguraEnderecos - 1 downto 0);
	 Instruction_IN : in std_logic_vector(larguraInstrucoes - 1 downto 0);
	 Data_IN : in std_logic_vector(larguraDados - 1 downto 0);
	 Data_OUT : out std_logic_vector(larguraDados - 1 downto 0);
	 Data_Address : out std_logic_vector(larguraEnderecos - 1 downto 0)
  );
end entity;



architecture arquitetura of CPU is

  signal Sinais_Controle : std_logic_vector (larguraSinalControle-1 downto 0);
  signal Endereco : std_logic_vector (larguraEnderecos-1 downto 0);
  signal CLK, Reset_PC : std_logic;
  signal RegA_out : std_logic_vector (larguraDados-1 downto 0);
  signal MUX1_out : std_logic_vector (larguraDados-1 downto 0);
  signal MUX2_out : std_logic_vector (larguraEnderecos-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal RAM_out : std_logic_vector (larguraDados-1 downto 0);
  signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal RegFlagIgual_in : std_logic_vector(0 downto 0);
  signal RegFlagIgual_out : std_logic;
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




MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map(entradaA_MUX => RAM_out,
                 entradaB_MUX =>  valorImediato,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX1_out);

REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => RegA_out, ENABLE => Habilita_A, CLK => CLK, RST => '0');

PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => MUX2_out, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => Reset_PC);

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);

		  
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => RegA_out, entradaB => MUX1_out, saida => Saida_ULA, seletor => Operacao_ULA, zero => RegFlagIgual_in(0));
			 
DECODER : entity work.decoderInstru port map (opcode => valorOpcode, saida => Sinais_Controle);

MUX2: entity work.muxGenerico4x1 generic map(larguraDados => larguraEnderecos) 
			 port map(entradaA_MUX => proxPC, entradaB_MUX => enderecoImediato, entradaC_MUX => Endereco_Retorno, entradaD_MUX => "000000000",
          seletor_MUX => SelMux_PC, saida_MUX => MUX2_out);
			 
Desvio : entity work.Desvio generic map(larguraDados => larguraDados)
          port map (JMP => JMP, RET => RET, JSR => JSR, JEQ => JEQ, SAIDA => SelMux_PC, FlagIgual => RegFlagIgual_out);
					  
REGFlagIgual : entity work.FlagIgual   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => RegFlagIgual_out, ENABLE => habilitaFlag_igual, CLK => CLK, RST => '0');
			 
REGEnderecoRetorno : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => proxPC, DOUT => Endereco_Retorno, ENABLE => habilita_ret , CLK => CLK, RST => '0');




CLK <= Clock;
Reset_PC <= Reset;
Rd <= habLeituraMEM;
Wr <= habEscritaMEM;
ROM_Address <= Endereco;
instrucao <= Instruction_IN;
RAM_out <= Data_IN;
Data_OUT <= RegA_out;
Data_Address <= enderecoImediato;

end architecture;