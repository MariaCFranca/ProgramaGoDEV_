-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Fev-2021 às 22:37
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cafe`
--

CREATE TABLE `cafe` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `lotacao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cafe`
--

INSERT INTO `cafe` (`id`, `nome`, `lotacao`) VALUES
(1, '352', '30'),
(2, '365', '20'),
(3, 'Café Delicia', '20'),
(4, '362', '30'),
(5, '', ''),
(6, '326', '20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `etapa1` int(11) DEFAULT NULL,
  `intervalo1` int(11) DEFAULT NULL,
  `etapa2` int(11) DEFAULT NULL,
  `intervalo2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `sobrenome`, `etapa1`, `intervalo1`, `etapa2`, `intervalo2`) VALUES
(2, 'Maria Clara', 'França', 2, 2, 11, 2),
(5, 'Marcelino', 'França', 3, 3, 2, 3),
(7, 'Ana Rita', 'França', 8, 2, 3, 2),
(8, 'José Elias', 'França', 9, 3, 8, 3),
(9, 'Viviane', 'França', 11, 2, 9, 2),
(10, 'Joanesburgo', 'Murico', 2, 3, 2, 3),
(11, 'Luana', 'Senem', 3, 2, 3, 2),
(12, 'Beto', 'Senem', 8, 3, 8, 3),
(13, 'Catarina', 'Rocha', 9, 2, 9, 2),
(14, 'Leone', 'Senem', 11, 3, 11, 3),
(15, 'Ana Luiza', 'Barbosa', 2, 2, 2, 2),
(16, 'Lucas Felipe', 'de Souza', 3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `salas`
--

CREATE TABLE `salas` (
  `id` int(11) NOT NULL,
  `sala` varchar(30) NOT NULL,
  `lotacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `salas`
--

INSERT INTO `salas` (`id`, `sala`, `lotacao`) VALUES
(2, 'Sala 100', 20),
(3, 'Sala 350', 40),
(8, '265', 22),
(9, 'Sala Fumantes', 30),
(11, '3236', 20);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cafe`
--
ALTER TABLE `cafe`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cafe`
--
ALTER TABLE `cafe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `salas`
--
ALTER TABLE `salas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
