library ieee;
use ieee.std_logic_1164.all;


entity Aula4 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraInstrucoes : natural := 13;
		  larguraSinalControle : natural := 6;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
   PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 EntradaB_ULA: out std_logic_vector(7 downto 0);
	 Palavra_Controle: out std_logic_vector(5 downto 0)
  );
end entity;



architecture arquitetura of Aula4 is

  signal Sinais_Controle : std_logic_vector (larguraSinalControle-1 downto 0);
  signal Endereco : std_logic_vector (larguraEnderecos-1 downto 0);
  signal CLK : std_logic;
  signal RegA_out : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_out : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal RAM_out : std_logic_vector (larguraDados-1 downto 0);
  signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);
  signal Chave_Operacao_ULA : std_logic;

  signal instrucao : std_logic_vector(12 downto 0); -- saida da instrucao da rom: opcode + imediato 
  alias valorImediato:  std_logic_vector(7 downto 0) is instrucao(7 downto 0);
  alias enderecoImediato:  std_logic_vector(8 downto 0) is instrucao(8 downto 0);
  alias enderecoRAM: std_logic_vector(7 downto 0) is enderecoImediato(7 downto 0);
  alias HabilitaRAM: std_logic is enderecoImediato(8);
  alias valorOpcode:  std_logic_vector(3 downto 0) is instrucao(12 downto 9);
  alias SelMUX: std_logic is Sinais_Controle(5);
  alias Habilita_A: std_logic is Sinais_Controle(4);
  alias Operacao_ULA: std_logic_vector(1 downto 0) is Sinais_Controle(3 downto 2);
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

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map(entradaA_MUX => RAM_out,
                 entradaB_MUX =>  valorImediato,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_out);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => RegA_out, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => RegA_out, entradaB => MUX_out, saida => Saida_ULA, seletor => Operacao_ULA);

-- O port map completo da memoria ROM:
ROM1 : entity work.memoriaROM   generic map (dataWidth => larguraInstrucoes, addrWidth => larguraEnderecos)
          port map (Endereco => Endereco, Dado => instrucao);
			 
-- o port map completo da memoria RAM
RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map (addr => enderecoRAM, we => habEscritaMEM, re => habLeituraMEM, habilita  => HabilitaRAM, dado_in => RegA_out, dado_out => RAM_out, clk => CLK);

-- O port map completo do decoder			 
DECODER : entity work.decoderInstru port map (opcode => valorOpcode, saida => Sinais_Controle);


-- A ligacao dos LEDs:
LEDR (9) <= Operacao_ULA(1);
LEDR (8) <= Operacao_ULA(0);
LEDR (7 downto 0) <= RegA_out;

PC_OUT <= Endereco;
EntradaB_ULA <= MUX_out;
Palavra_Controle <= Sinais_Controle;

end architecture;