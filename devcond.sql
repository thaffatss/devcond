-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Fev-2021 às 19:18
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `devcond`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `areadisableddays`
--

CREATE TABLE `areadisableddays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_area` int(11) NOT NULL,
  `day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `allowed` int(11) NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `billets`
--

CREATE TABLE `billets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_unit` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `fileurl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `docs`
--

CREATE TABLE `docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` int(11) NOT NULL,
  `fileurl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `foundandlost`
--

CREATE TABLE `foundandlost` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LOST',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `where` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datecreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_02_16_230749_createalltables', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservation`
--

CREATE TABLE `reservation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_unit` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `reservation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unit`
--

CREATE TABLE `unit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unitpeoples`
--

CREATE TABLE `unitpeoples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_unit` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unitpets`
--

CREATE TABLE `unitpets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_unit` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `race` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unitvehicles`
--

CREATE TABLE `unitvehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_unit` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `cpf`, `password`) VALUES
(2, 'Thaffarel', 'thaffa.tss@gmail.com', '83388028249', '$2y$10$lw2nvzxODxksKRdP92PyxeOvom6vAdGKAe8fp54qvmLld2qoDWijW');

-- --------------------------------------------------------

--
-- Estrutura da tabela `walllikes`
--

CREATE TABLE `walllikes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wall` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `walls`
--

CREATE TABLE `walls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `warnings`
--

CREATE TABLE `warnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_unit` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IN_REVIEW',
  `datecreated` date NOT NULL,
  `photos` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `areadisableddays`
--
ALTER TABLE `areadisableddays`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `billets`
--
ALTER TABLE `billets`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `foundandlost`
--
ALTER TABLE `foundandlost`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unitpeoples`
--
ALTER TABLE `unitpeoples`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unitpets`
--
ALTER TABLE `unitpets`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unitvehicles`
--
ALTER TABLE `unitvehicles`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_cpf_unique` (`cpf`);

--
-- Índices para tabela `walllikes`
--
ALTER TABLE `walllikes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `walls`
--
ALTER TABLE `walls`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `areadisableddays`
--
ALTER TABLE `areadisableddays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `billets`
--
ALTER TABLE `billets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `docs`
--
ALTER TABLE `docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `foundandlost`
--
ALTER TABLE `foundandlost`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `unit`
--
ALTER TABLE `unit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `unitpeoples`
--
ALTER TABLE `unitpeoples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `unitpets`
--
ALTER TABLE `unitpets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `unitvehicles`
--
ALTER TABLE `unitvehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `walllikes`
--
ALTER TABLE `walllikes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `walls`
--
ALTER TABLE `walls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `warnings`
--
ALTER TABLE `warnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
