-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 10-Ago-2017 às 08:41
-- Versão do servidor: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.21-1~ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `titulo`, `descricao`) VALUES
(1, 'Chocolates', 'Chocolate'),
(2, 'Massas', 'Macarrão, Pão, etc...');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(145) NOT NULL,
  `sobrenome` varchar(245) NOT NULL,
  `rg` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `data_nascimento` datetime NOT NULL,
  `sexo` char(1) NOT NULL,
  `rua` varchar(145) NOT NULL,
  `numero` varchar(15) NOT NULL,
  `bairro` varchar(145) NOT NULL,
  `cidade` varchar(145) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `email` varchar(145) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(45) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `largura_caixa_mm` int(10) UNSIGNED NOT NULL,
  `altura_caixa_mm` int(10) UNSIGNED NOT NULL,
  `comprimento_caixa_mm` int(10) UNSIGNED NOT NULL,
  `peso_gramas` int(10) UNSIGNED NOT NULL,
  `data_adicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ativo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `codigo`, `titulo`, `descricao`, `preco`, `largura_caixa_mm`, `altura_caixa_mm`, `comprimento_caixa_mm`, `peso_gramas`, `data_adicionado`, `ativo`) VALUES
(1, '1', 'Chocolate Meio Amargo', 'Chocolate Meio Amargo 200g', '1.20', 1, 1, 1, 1, '2017-08-09 15:14:42', 1),
(2, '2', 'Espaguete Santa Amália', 'Espaguete Santa Amália 1kg', '3.40', 1, 1, 1, 1, '2017-08-09 15:16:10', 1),
(3, '3', 'Pai Nosso Santa Amália', 'Pai Nosso Santa Amália 1kg', '5.10', 1, 1, 1, 1, '2017-08-09 15:16:10', 1),
(4, '4', 'Hamburgão do Greib', 'Hamburgão do Greib 100g', '2.50', 1, 1, 1, 1, '2017-08-09 15:17:32', 1),
(5, '5', 'Chocolate Orgânico', 'Chocolate Orgânico 85g', '1.20', 1, 1, 1, 1, '2017-08-09 15:17:32', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_categoria`
--

CREATE TABLE `produtos_categoria` (
  `produto` int(10) UNSIGNED NOT NULL,
  `categoria` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos_categoria`
--

INSERT INTO `produtos_categoria` (`produto`, `categoria`) VALUES
(1, 1),
(5, 1),
(2, 2),
(3, 2),
(4, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CPF_Unico` (`cpf`),
  ADD UNIQUE KEY `Email_Unico` (`email`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_unico` (`codigo`);

--
-- Indexes for table `produtos_categoria`
--
ALTER TABLE `produtos_categoria`
  ADD UNIQUE KEY `unique_produto_categoria` (`produto`,`categoria`),
  ADD KEY `FK_produtos_categorias_categoria` (`categoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `produtos_categoria`
--
ALTER TABLE `produtos_categoria`
  ADD CONSTRAINT `FK_produtos_categorias_categoria` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_produtos_categorias_produto` FOREIGN KEY (`produto`) REFERENCES `produtos` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
