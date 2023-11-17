-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/11/2023 às 16:48
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

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
-- Estrutura para tabela `cliente`
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
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`nome`, `email`, `telefone`, `estado`, `cidade`, `bairro`, `complemento`, `cep`, `id`) VALUES
('1111111111111', '11111111111111111111111', '(11) 11111-1111', '1111111111111111', '111111111111111111111', '11111111111111111', '1111111111111111111', '11.111-111', 1),
('david', 'david@teste.com', '(12) 12222-2221', '21321321321321', 'rj', 'campos eliseso', '21321321321', '21.321-321', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
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

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`nome`, `email`, `telefone`, `estado`, `cidade`, `bairro`, `complemento`, `cep`, `id`) VALUES
('1111111111111111', '1111111111111111111111', '(11) 11111-1111', '11111111111111111', '11111111111111111111', '111111111111', '11111111111111111111', '11.111-111', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `nome` text DEFAULT NULL,
  `email` text DEFAULT NULL,
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
  `id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`nome`, `email`, `telefone`, `cpf`, `rg`, `dataNasc`, `estadoCivil`, `genero`, `nacionalidade`, `estado`, `cidade`, `bairro`, `complemento`, `cep`, `id`) VALUES
('fffffffff', 'ffffffff', '(22) 22222-2222', '111.111.111-11', '11.111.111-11', '11/11/1111', 'Casado', 'Feminino', '11111', '1111111111111', '11111111111', '1111111111111', '111111111111', '11111-111', 1),
('Gioavnni', 'giv@giv.com', '(21) 99829-3898', '981.029.109-20', '11.111.111-11', '11/11/1111', 'Outro', 'Masculino', 'Brasileira', 'Rj', 'Rj', 'Campos Eliseos', 'Dentro de casa', '11111-111', 2),
('12111111111111', '111111111111111', '(11) 11111-1111', NULL, NULL, NULL, NULL, NULL, NULL, '1111111111111', '1111111111111111111111', '11111111111111111', '11111111111111', '11.111-111', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `material`
--

CREATE TABLE `material` (
  `id` int(6) NOT NULL,
  `nome` text NOT NULL,
  `tipo` text NOT NULL,
  `peso` text NOT NULL,
  `preco` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `material`
--

INSERT INTO `material` (`id`, `nome`, `tipo`, `peso`, `preco`) VALUES
(1, 'Cobre', 'Mel', '1kg', '5');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `material`
--
ALTER TABLE `material`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
