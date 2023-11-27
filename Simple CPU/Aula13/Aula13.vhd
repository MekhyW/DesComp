library ieee;
use ieee.std_logic_1164.all;

entity Aula13 is
  generic (
        simulacao : boolean := TRUE; -- para gravar na placa, altere de TRUE para FALSE
		  larguraDados : natural := 32;
		  larguraEnderecos : natural := 32;
		  larguraInstrucoes : natural := 32
  );
  port (
    CLOCK_50 : in std_logic;
	 operacaoULA : in std_logic;
	 escritaReg3 : in std_logic;
    resultado: out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;


architecture arquitetura of Aula13 is

signal CLK : std_logic;
signal control_out : std_logic_vector(1 downto 0);
signal instrucao : std_logic_vector(larguraInstrucoes-1 downto 0);
alias opcode : std_logic_vector(5 downto 0) is instrucao(31 downto 26);
alias Rs : std_logic_vector(4 downto 0) is instrucao(25 downto 21);
alias Rd : std_logic_vector(4 downto 0) is instrucao(20 downto 16);
alias Rt : std_logic_vector(4 downto 0) is instrucao(15 downto 11);
alias shamt : std_logic_vector(4 downto 0) is instrucao(10 downto 6);
alias funct : std_logic_vector(5 downto 0) is instrucao(5 downto 0);
signal ROM_Address_ENDERECO : std_logic_vector (larguraEnderecos-1 downto 0);
signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);
signal entradaA_ULA : std_logic_vector (larguraDados-1 downto 0);
signal entradaB_ULA : std_logic_vector (larguraDados-1 downto 0);
signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);

begin


ROM : entity work.ROMMIPS   generic map (dataWidth => larguraInstrucoes, addrWidth => larguraEnderecos)
          port map (Endereco => ROM_Address_ENDERECO, Dado => instrucao);
			 
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => ROM_Address_ENDERECO, ENABLE => '1', CLK => CLK, RST => '0');
			 
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => ROM_Address_ENDERECO, saida => proxPC);
		  
registradores : entity work.bancoReg  generic map (larguraDados => larguraEnderecos, larguraEndBancoRegs => 5)
			 port map (clk => CLK, enderecoA => Rs, enderecoB => Rt, enderecoC => Rd, dadoEscritaC => Saida_ULA, escreveC => escritaReg3,
			 saidaA => entradaA_ULA, saidaB => entradaB_ULA);
			 
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => entradaA_ULA, entradaB => entradaB_ULA, saida => Saida_ULA, seletor => operacaoULA);
			 
CLK <= CLOCK_50;
resultado <= Saida_ULA;


end architecture;