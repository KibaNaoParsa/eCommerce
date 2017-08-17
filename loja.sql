-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 17-Ago-2017 às 08:34
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
(1, 'massa', 'macarrão'),
(2, 'chocolate', 'chocolate amargo'),
(3, 'salgado', 'salgadooo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0ggjktjdrpn96ucdehder3ri3s0vei66', '::1', 1502967860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936373836303b636c69656e74657c4e3b6c6f6761646f7c623a303b),
('4tdkv1ok6m0b67qh5utrdeps4ke891ch', '127.0.0.1', 1502895090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323839353039303b),
('8mi2f4bqu61gio9cbe4d0c5sn0i6occn', '127.0.0.1', 1502895090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323839353039303b),
('9vf7agefq20736526ro1k20g814al44q', '::1', 1502966124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936363132343b636c69656e74657c4e3b6c6f6761646f7c623a303b),
('c16amrkb0rj8q7nhbn12jl5l7r1vo6ku', '::1', 1502966472, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936363437323b636c69656e74657c4e3b6c6f6761646f7c623a303b),
('gkretru6438vqc9eqr5h15sda079jpg8', '::1', 1502968244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936383234343b636c69656e74657c4e3b6c6f6761646f7c623a303b),
('i9ited8mp0gb3a4buqip69fepoig37rc', '::1', 1502965625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936353632353b),
('r4l9uinavv7r62r922n80ahp3s6fvfcg', '::1', 1502968562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936383536323b636c69656e74657c4e3b6c6f6761646f7c623a303b),
('rv9if6kgkndbck64a9004hv0eu855guc', '::1', 1502968725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936383536323b636c69656e74657c4e3b6c6f6761646f7c623a303b),
('tgldtg342lbmqf2qf4vbltedujvvkjrn', '::1', 1502964890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936343839303b);

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

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `sobrenome`, `rg`, `cpf`, `data_nascimento`, `sexo`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `telefone`, `celular`, `email`, `senha`, `status`, `cadastrado_em`) VALUES
(1, 'Elyas', 'Correa Nogueira', 'MG21006635', '117.290.346-83', '1969-12-31 00:00:00', 'M', 'Rua Noruega', '8', 'Jardim Andere', 'Varginha', 'Minas Gerais', '37006340', '35997441124', '35997441124', 'elyasnog2@hotmail.com', '123456', 0, '2017-08-17 10:17:07'),
(8, 'Paulo', 'Guina', 'MG11111111', '111.111.111-11', '1970-09-08 00:00:00', 'M', 'Rua Noruega', '8', 'Jardim Andere', 'Varginha', 'MG', '37006-340', '(35)3321.1111', '(35)98784.5156', 'elyasnog@gmail.com', 'elyaselyas123', 0, '2017-08-17 11:18:43');

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
(1, '14252', 'chocolate amargo', 'amargoo', '42.00', 42, 63, 13, 62, '2017-08-10 10:18:17', 1),
(2, '4272', 'Hamburgão do Greib', 'Hamburgão do Greib 50g', '23.00', 54, 25, 12, 53, '2017-08-10 10:20:51', 1),
(3, '2613', 'pastel', 'pastel de queijo', '51.00', 51, 62, 12, 62, '2017-08-10 10:20:51', 1),
(4, '352512', 'Chocolate ao Leite', 'chocolate não amargo', '26.00', 47, 22, 23, 72, '2017-08-16 14:13:05', 1);

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
(2, 1),
(1, 2),
(4, 2),
(3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
