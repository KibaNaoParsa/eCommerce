-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 23-Ago-2017 às 11:29
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
('637t6m9800a35v6or34mduf4c0rn9lcs', '::1', 1503497493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530333439373439333b),
('6qq5lhk7u6vt5ai3ur2vqf9kds228qb6', '::1', 1503498346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530333439383334363b636c69656e74657c4f3a383a22737464436c617373223a31393a7b733a323a226964223b733a323a223130223b733a343a226e6f6d65223b733a353a22456c796173223b733a393a22736f6272656e6f6d65223b733a383a224e6f677565697261223b733a323a227267223b733a31303a224d473131313131313131223b733a333a22637066223b733a31343a223131312e3131312e3131312d3131223b733a31353a22646174615f6e617363696d656e746f223b733a31393a22313939392d30392d30322030303a30303a3030223b733a343a227365786f223b733a313a224d223b733a333a22727561223b733a31313a22527561204e6f7275656761223b733a363a226e756d65726f223b733a313a2238223b733a363a2262616972726f223b733a31333a224a617264696d20416e64657265223b733a363a22636964616465223b733a383a2256617267696e6861223b733a363a2265737461646f223b733a323a224d47223b733a333a22636570223b733a393a2233373030362d333430223b733a383a2274656c65666f6e65223b733a31333a2228333529333333352e32333338223b733a373a2263656c756c6172223b733a31343a222833352939393734342e31313234223b733a353a22656d61696c223b733a31383a22656c7961736e6f6740676d61696c2e636f6d223b733a353a2273656e6861223b733a333a22313233223b733a363a22737461747573223b733a313a2231223b733a31333a226361646173747261646f5f656d223b733a31393a22323031372d30382d32332031313a31323a3030223b7d6c6f6761646f7c623a313b),
('8mi2f4bqu61gio9cbe4d0c5sn0i6occn', '127.0.0.1', 1502895090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323839353039303b),
('9vf7agefq20736526ro1k20g814al44q', '::1', 1502966124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936363132343b636c69656e74657c4e3b6c6f6761646f7c623a303b),
('c16amrkb0rj8q7nhbn12jl5l7r1vo6ku', '::1', 1502966472, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936363437323b636c69656e74657c4e3b6c6f6761646f7c623a303b),
('gkretru6438vqc9eqr5h15sda079jpg8', '::1', 1502968244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936383234343b636c69656e74657c4e3b6c6f6761646f7c623a303b),
('i9ited8mp0gb3a4buqip69fepoig37rc', '::1', 1502965625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530323936353632353b),
('o1ahgks2vgcv5hnl7cfa32jr94nhngie', '::1', 1503498009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530333439383030393b636c69656e74657c4f3a383a22737464436c617373223a31393a7b733a323a226964223b733a323a223130223b733a343a226e6f6d65223b733a353a22456c796173223b733a393a22736f6272656e6f6d65223b733a383a224e6f677565697261223b733a323a227267223b733a31303a224d473131313131313131223b733a333a22637066223b733a31343a223131312e3131312e3131312d3131223b733a31353a22646174615f6e617363696d656e746f223b733a31393a22313939392d30392d30322030303a30303a3030223b733a343a227365786f223b733a313a224d223b733a333a22727561223b733a31313a22527561204e6f7275656761223b733a363a226e756d65726f223b733a313a2238223b733a363a2262616972726f223b733a31333a224a617264696d20416e64657265223b733a363a22636964616465223b733a383a2256617267696e6861223b733a363a2265737461646f223b733a323a224d47223b733a333a22636570223b733a393a2233373030362d333430223b733a383a2274656c65666f6e65223b733a31333a2228333529333333352e32333338223b733a373a2263656c756c6172223b733a31343a222833352939393734342e31313234223b733a353a22656d61696c223b733a31383a22656c7961736e6f6740676d61696c2e636f6d223b733a353a2273656e6861223b733a333a22313233223b733a363a22737461747573223b733a313a2231223b733a31333a226361646173747261646f5f656d223b733a31393a22323031372d30382d32332031313a31323a3030223b7d6c6f6761646f7c623a313b),
('phd049q30unfh0q8gdbiufjrf9kjtfd5', '::1', 1503498452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530333439383334363b636c69656e74657c4f3a383a22737464436c617373223a31393a7b733a323a226964223b733a323a223130223b733a343a226e6f6d65223b733a353a22456c796173223b733a393a22736f6272656e6f6d65223b733a383a224e6f677565697261223b733a323a227267223b733a31303a224d473131313131313131223b733a333a22637066223b733a31343a223131312e3131312e3131312d3131223b733a31353a22646174615f6e617363696d656e746f223b733a31393a22313939392d30392d30322030303a30303a3030223b733a343a227365786f223b733a313a224d223b733a333a22727561223b733a31313a22527561204e6f7275656761223b733a363a226e756d65726f223b733a313a2238223b733a363a2262616972726f223b733a31333a224a617264696d20416e64657265223b733a363a22636964616465223b733a383a2256617267696e6861223b733a363a2265737461646f223b733a323a224d47223b733a333a22636570223b733a393a2233373030362d333430223b733a383a2274656c65666f6e65223b733a31333a2228333529333333352e32333338223b733a373a2263656c756c6172223b733a31343a222833352939393734342e31313234223b733a353a22656d61696c223b733a31383a22656c7961736e6f6740676d61696c2e636f6d223b733a353a2273656e6861223b733a333a22313233223b733a363a22737461747573223b733a313a2231223b733a31333a226361646173747261646f5f656d223b733a31393a22323031372d30382d32332031313a31323a3030223b7d6c6f6761646f7c623a313b),
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
(10, 'Elyas', 'Nogueira', 'MG11111111', '111.111.111-11', '1999-09-02 00:00:00', 'M', 'Rua Noruega', '8', 'Jardim Andere', 'Varginha', 'MG', '37006-340', '(35)3335.2338', '(35)99744.1124', 'elyasnog@gmail.com', '123', 1, '2017-08-23 14:12:00');

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
(1, '14252', 'Chocolate Amargo', '62g', '42.00', 42, 63, 13, 62, '2017-08-10 10:18:17', 1),
(2, '4272', 'Hamburgão do Greib', '53g', '23.00', 54, 25, 12, 53, '2017-08-10 10:20:51', 1),
(3, '2613', 'Pastel de Queijo', '62g', '51.00', 51, 62, 12, 62, '2017-08-10 10:20:51', 1),
(4, '352512', 'Chocolate ao Leite', '72g', '26.00', 47, 22, 23, 72, '2017-08-16 14:13:05', 1);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
