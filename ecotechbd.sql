-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Nov-2023 às 16:00
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ecotechbd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `nome` text NOT NULL,
  `email` text NOT NULL,
  `telefone` text NOT NULL,
  `estado` text NOT NULL,
  `cidade` text NOT NULL,
  `bairro` text NOT NULL,
  `complemento` text NOT NULL,
  `cep` text NOT NULL,
  `id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`nome`, `email`, `telefone`, `estado`, `cidade`, `bairro`, `complemento`, `cep`, `id`) VALUES
('5tf555f5t4r', '5t5rf55rf', '(55) 55555-5555', '5f5rf55', '5tf5f5tf5tf5', 'f5rf55f', 'f5f5t5f5f5', '55.555-555', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `material` text DEFAULT NULL,
  `peso` text DEFAULT NULL,
  `valor` text DEFAULT NULL,
  `desconto` text DEFAULT NULL,
  `precoFinal` text DEFAULT NULL,
  `cpfCliente` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`id`, `material`, `peso`, `valor`, `desconto`, `precoFinal`, `cpfCliente`) VALUES
(14, 'Cobre', '2.5', '5.32', '0', '13.3', '   .   .   -  '),
(15, 'Papelão', '7', '1.50', '2.50', '8.0', '585.858.555-55'),
(16, 'Cobre', '3', '5.32', '1.70', '14.260000000000002', '   .   .   -  ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `nome` text NOT NULL,
  `email` text NOT NULL,
  `telefone` text NOT NULL,
  `estado` text NOT NULL,
  `cidade` text NOT NULL,
  `bairro` text NOT NULL,
  `complemento` text NOT NULL,
  `cep` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `nome` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` text DEFAULT NULL,
  `cpf` text DEFAULT NULL,
  `rg` text DEFAULT NULL,
  `dataNasc` text DEFAULT NULL,
  `estadoCivil` text DEFAULT NULL,
  `genero` text DEFAULT NULL,
  `nacionalidade` text DEFAULT NULL,
  `estado` text DEFAULT NULL,
  `cidade` text DEFAULT NULL,
  `bairro` text DEFAULT NULL,
  `complemento` text DEFAULT NULL,
  `cep` text DEFAULT NULL,
  `id` int(6) NOT NULL,
  `status` text NOT NULL DEFAULT 'Ativo',
  `senha` varchar(255) NOT NULL DEFAULT 'senha123'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`nome`, `email`, `telefone`, `cpf`, `rg`, `dataNasc`, `estadoCivil`, `genero`, `nacionalidade`, `estado`, `cidade`, `bairro`, `complemento`, `cep`, `id`, `status`, `senha`) VALUES
('Mariestela Araújo Marques', 'estela10@gmail.com', '(21) 99999-9999', '123.456.789-00', '12.345.678-90', '04/07/1974', 'Solteiro', 'Feminino', 'Brasileira', 'Rio de Janeiro ', 'Duque de Caxias', 'Campos Eliseos ', 'Av. Actura', '25225-216', 11, 'Inativo', 'senha123'),
('Roberto Carlos Silva', 'robertino@gmail.com', '(22) 22222-2222', '666.666.666-66', '12.345.678-90', '18/09/1978', 'Solteiro', 'Masculino', 'Brasileiro', 'Rio de Janeiro', 'Duque de Caxias ', 'Campos Eliseos', 'Av. Governador', '25225-216', 12, 'Inativo', 'senha123'),
('Anna Julia', 'annajulia@gmail.com', '(21) 90313-2848', '929.031.828-19', '12.334.235-45', '06/02/2006', 'Casado', 'Masculino', 'Brasileira', 'Rio de Janeiro', 'Duque de Caxias', 'Vila urussaí', 'Vila urussaí', '25162-729', 13, 'Ativo', 'senha123'),
('Ana claudia', 'anaclaudia@gmail.com', '(21) 99022-7827', '760.118.978-45', '33.669.885-56', '02/05/2005', 'Casado', 'Feminino', 'Brasileiro', 'Rio de janeiro', 'Rio de janeiro', 'Campos eliseos', 'Av são paulo', '22555-555', 18, 'Ativo', 'senha123'),
('gy76g6tf', 'gtr56ft6tf6tf', '(55) 55555-5555', '555.555.555-55', '  .   .   -  ', '  /  /    ', 'Solteiro', 'Masculino', '', '', '', '', '', '     -   ', 19, 'Ativo', 'senha123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `material`
--

CREATE TABLE `material` (
  `id` int(6) NOT NULL,
  `nome` text NOT NULL,
  `tipo` text NOT NULL,
  `peso` text NOT NULL,
  `preco` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `material`
--

INSERT INTO `material` (`id`, `nome`, `tipo`, `peso`, `preco`) VALUES
(1, 'Cobre', 'Mel', '6Kg', '5.32'),
(2, 'Plástico', 'PP', '1Kg', '3.50'),
(5, 'Aluminio', 'Puro', '1Kg', '10'),
(9, 'Papelão', 'Caixa ', '1kg', '1.50'),
(12, 'Papel', 'Papel', '1Kg', '19'),
(13, 'Isopor', 'Isopor', '1Kg', '33');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `material`
--
ALTER TABLE `material`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
