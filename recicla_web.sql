-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Abr-2018 às 18:47
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recicla_web`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairro`
--

CREATE TABLE `bairro` (
  `cd_bairro` int(11) NOT NULL,
  `cd_cidade` int(11) NOT NULL,
  `nome_bairro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bairro`
--

INSERT INTO `bairro` (`cd_bairro`, `cd_cidade`, `nome_bairro`) VALUES
(1, 1, '1'),
(101, 100, 'Cidade Universitária'),
(102, 100, 'Barra Funda'),
(103, 100, 'Bom Retiro'),
(104, 100, 'Taboão da Serra'),
(105, 100, 'Ermelino Matarazzo'),
(106, 100, 'Liberdade'),
(107, 100, 'Vila Leopoldina'),
(108, 200, 'Jaraguá'),
(109, 100, 'Tremembé'),
(110, 100, 'Cidade Dutra'),
(111, 100, 'Guarulhos'),
(112, 100, 'Pinheiros'),
(113, 100, 'Carandiru'),
(114, 100, 'Moema'),
(115, 100, 'Jardim Paulista'),
(116, 100, 'Consolação'),
(117, 100, 'Vila Maria'),
(118, 100, 'Vila Madalena'),
(119, 100, 'Vila Santa Catarina'),
(120, 100, 'Osasco'),
(121, 100, 'Cid. A.E. Carvalho'),
(122, 100, 'São Mateus'),
(123, 100, 'Vila Prudente'),
(124, 100, 'Caieiras'),
(125, 100, 'Santo Amaro'),
(126, 100, 'Casa Verde'),
(127, 100, 'Pirituba'),
(201, 200, 'Parque Erasmo Assunção'),
(202, 200, 'Jardim Santo Antônio'),
(203, 200, 'Centreville'),
(204, 200, 'Jardim Ipanema'),
(205, 200, 'Bairro Jardim'),
(206, 200, 'Paraíso'),
(207, 200, 'Jardim Santo Alberto'),
(208, 200, 'Jardim Bom Pastor'),
(209, 200, 'Vila Linda'),
(210, 200, 'Vila Sacadura Cabral'),
(211, 200, 'Parque João Ramalho'),
(212, 200, 'Bairro Pinheirinho'),
(213, 200, 'Vila Guiomar'),
(214, 200, 'Camilópolis'),
(215, 200, 'Vila Lucinda'),
(216, 200, 'Vila João Ramalho'),
(217, 200, 'Vila de Paranapiacaba'),
(218, 200, 'Utinga'),
(219, 200, 'Jardim Santo André'),
(301, 300, 'Jardim Zaira'),
(302, 300, 'Mauá'),
(303, 300, 'Jardim Itapeva'),
(304, 300, 'Feital');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `cd_cidade` int(11) NOT NULL,
  `nome_cidade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`cd_cidade`, `nome_cidade`) VALUES
(1, '1'),
(100, 'São Paulo / SP'),
(200, 'Santo André / SP'),
(300, 'Mauá / SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `cd_empresa` int(11) NOT NULL,
  `cd_bairro` int(11) NOT NULL,
  `nome_empresa` varchar(90) NOT NULL,
  `endereco_empresa` varchar(90) NOT NULL,
  `horario_funcionamento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`cd_empresa`, `cd_bairro`, `nome_empresa`, `endereco_empresa`, `horario_funcionamento`) VALUES
(1, 1, '1', '1', '1'),
(1001, 101, 'CEDIR - USP', 'Av. Professor Luciano Gualberto, 71, tv. 3 – Cidade Universitária', 'Segunda a sexta-feira, das 8h às 18h - os interessados devem agendar a entrega do seu lixo eletrônico pelos telefones 3091-6454, 3091-6455 e 3091-6456'),
(1002, 102, 'Coopermiti', 'Rua Dr. Sérgio Meira, 268 - Barra Funda', 'Segunda a sexta-feira, das 8h às 17h sábado, das 8h às 12h.'),
(1003, 103, 'Coopere Centro', 'Avenida do Estado, 300 - Bom Retiro', 'Segunda-feira a sábado, das 7h30 às 19h'),
(1004, 104, 'Cooper Zagati', 'Rua Porfírio Herdeiro, 414 - Taboão da Serra', 'Segunda-feira a sábado, das 8h às 17h'),
(1005, 103, 'Reviravolta Coorpel', 'Rua 25 de Janeiro, 274 - Bom Retiro', 'Segunda a sexta-feira, das 8h às 17h'),
(1006, 105, 'Cooperativa de Reciclagem Nova Esperança', 'Rua Japichauá, 311 - Ermelino Matarazzo', 'Segunda a sexta-feira, das 8h às 17h; sábado, das 8h às 12h'),
(1007, 106, 'Cooperglicério', 'Rua Teixeira Leite, 140 - Liberdade', 'Segunda a sexta-feira, das 8h às 17h'),
(1008, 107, 'Cooperação ', 'Rua Froben, 101 - Vila Leopoldina', 'Segunda a sexta-feira, das 8h às 17h'),
(1009, 108, 'Cooperativa Recicla Pirituba', 'Rua Dr. Rafael Araújo de Ribeiro, 861 - Jaraguá', 'Segunda a sexta-feira, das 8h às 17h; sábado, das 8h às 16h'),
(1010, 109, 'Cooperativa Cantareira Viva', 'Rua Alagoa da Roça, 95 - Tremembé', 'Segunda a sábado, das 8h às 18h (de preferência, quinta e sábado)'),
(1011, 110, 'Coopercaps', 'Av. João Paulo da Silva, 48 - Cidade Dutra', 'Segunda a sábado, das 8h às 18h'),
(1012, 106, 'Recifran', 'R. Junqueira Freire, 176 - Liberdade', 'Segunda a sexta-feira, das 8h às 17h'),
(1013, 111, 'Coopreciclável', 'R. Estrela D\'Oeste, 119 - Guarulhos', 'Segunda a sexta-feira, das 8h às 16h'),
(1014, 112, 'Coopamare', 'Rua Galeno de Almeida, 659 - Pinheiros', 'Entre em contato com a cooperativa'),
(1015, 113, 'Meta Projeto Acessa São Paulo', 'Av. Cruzeiro do Sul, 2630,1ºandar - Carandiru', 'Segunda a sexta-feira, das 8h às 18h30'),
(1016, 114, 'ABRE - Associação Brasileira de Redistribuição de Excedentes', 'Av. Lavandisca, 168 - Moema', 'Segunda a sexta-feira, das 9h às 13h, e das 14h às 17h'),
(1017, 115, 'CRC – Oxigênio', 'Rua Espéria, 30 - Jd. Paulista', 'Segunda a sexta-feira, das 8h às 17h'),
(1018, 111, 'Umicore', 'Rua Barão do Rio Branco, 368 - Guarulhos', 'Segunda a sexta-feira, das 8h às 17h'),
(1019, 116, 'Silcon Ambiental', 'Rua Bela Cintra, 986 – 3ºandar – conj. 32 Consolação', 'Segunda a sexta-feira, das 8h às 18h'),
(1020, 117, 'San Lien', 'Rua Professor José Barone Fernandes, 573 Vila Maria', 'Segunda a quinta-feira, das 8h às 18h; sexta-feira, das 8h às 17h'),
(1021, 118, 'On3W Produtora Web', 'Rua Faisão, 82 - Vila Madalena', 'Segunda a sexta-feira, das 10h às 17h'),
(1022, 119, 'Academia BIOClub Fitness', 'Rua das Flechas, 479 - Vila Santa Catarina', 'Segunda a sexta-feira, das 9h às 17h'),
(1023, 120, 'IEPM – Instituto Educacional - Prestes Maia', 'Rua Raul Pompeia, 48 - Osasco', 'Segunda a sexta-feira, das 8h às 18h'),
(1024, 121, 'ETEC da Zona Leste - Centro Paula Souza', 'Avenida Águia de Haia, 2633 - Cid. A.E. Carvalho', 'Segunda a sexta-feira, das 8h30 às 21h'),
(1025, 122, 'ONG Instituto Batista Pr. Simon Horbaczyk', 'Rua Ernesto Manograsso, 207 - São Mateus', 'Segunda a sexta-feira, 8h às 16h'),
(1026, 123, 'Dual Computer Comércio e Serviços de Informática', 'Rua Manaias, 204, Sala 05 - Vila Prudente', 'Segunda a sexta-feira, das 9h30 às 16h'),
(1027, 124, 'Colégio Senemby', 'Rua Curumim, 151 - Caieiras', 'Segunda a sexta-feira, das 8h às 16h'),
(1028, 125, 'Serviço de Apredizagem Industrial - SENAI', 'Rua Amador Bueno, 504 - Santo Amaro', 'Segunda a sexta-feira, das 8h às 17h'),
(1029, 115, 'Seguros Unimed', 'Alameda Ministro Rocha Azevedo, 366 - Jardim Paulista', 'Segunda a sexta-feira, das 9h às 17h'),
(1030, 126, 'Larzinho Casa Jesus - Amor e Caridade', 'Rua Prof. Dario Ribeiro, 1386 - Casa Verde', 'Segunda a sexta-feira, das 9h às 18h'),
(1031, 127, 'Nostro Pane D’Oro', 'Rua Itamogi, 300 - Pirituba', 'Segunda-feira, quarta-feira e sexta-feira, das 13h às 17h'),
(2001, 201, 'Estações de Coleta SEMASA - Parque Erasmo Assunção', 'Rua Erechim, 635 - Parque Erasmo Assunção', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)'),
(2002, 202, 'Estações de Coleta SEMASA - Jardim Santo Antônio', 'Av. Engenheiro Olavo Alaysio de Lima, 945  Jardim Santo Antônio', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)'),
(2003, 203, 'Estações de Coleta SEMASA - Centreville', 'Praça Eurico Gaspar Dutra, 181\r\nCentreville', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)'),
(2004, 204, 'Estações de Coleta SEMASA - Jardim Ipanema', 'Av. Capitão Mario Toledo de Camargo, 2.599 – Jardim Ipanema', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)'),
(2005, 205, 'Estações de Coleta SEMASA - Bairro Jardim', 'Av. Prestes Maia, 195 Bairro Jardim', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)'),
(2006, 206, 'Estações de Coleta SEMASA - Paraíso ', 'Rua Juquiá, 200 - Paraíso.', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)'),
(2007, 207, 'Estações de Coleta SEMASA - Jardim Santo Alberto', 'Rua Evangelista de Souza, 1689 Jardim Santo Alberto', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)'),
(2008, 208, 'Estações de Coleta SEMASA - Jardim Bom Pastor\r\n', 'Avenida Bom Pastor, 1150 - Jardim Bom Pastor', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)'),
(2009, 209, 'Estações de Coleta SEMASA - Vila Linda', 'Rua Grajaú, 45 - Vila Linda', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)'),
(2010, 210, 'Estações de Coleta SEMASA - Vila Sacadura Cabral', 'Rua Lauro Muller, 400 - Vila Sacadura Cabral', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)'),
(2011, 211, 'Estações de Coleta SEMASA - Parque João Ramalho', 'Av. Sorocaba, 1.001 - Parque João Ramalho', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)'),
(2012, 212, 'Estações de Coleta SEMASA - Bairro Pinheirinho', 'Rua Caminho do Pilar, 1541 - Bairro Pinheirinho', 'Atendimento de segunda a sábado e feriados, das 8h às 12h e das 13h às 16h'),
(2013, 213, 'Estações de Coleta SEMASA - Vila Guiomar', 'Rua Carnaúba, 222 - Vila Guiomar', 'Atendimento de segunda a sábado e feriados, das 8h às 12h e das 13h às 16h'),
(2014, 214, 'Estações de Coleta SEMASA - Camilópolis', 'Rua Benjamim Constant, 20 - Camilópolis', 'Atendimento de segunda a sábado e feriados, das 8h às 12h e das 13h às 16h'),
(2015, 215, 'Estações de Coleta SEMASA - Vila Lucinda\r\n', 'Rua Cerquilho, 151 - Vila Lucinda', 'Atendimento de segunda a sábado e feriados, das 8h às 12h e das 13h às 16h'),
(2016, 202, 'Estações de Coleta SEMASA - Jardim Santo Antônio', 'Rua Santo Expedito, 107 - Jardim Santo Antônio', 'Atendimento de segunda a sábado e feriados, das 8h às 12h e das 13h às 16h'),
(2017, 216, 'Estações de Coleta SEMASA - Vila João Ramalho', 'Estrada do Cata Preta, 989 - Vila João Ramalho', 'Atendimento de segunda a sábado, das 8h às 12h e das 13h às 16h'),
(2018, 217, 'Estações de Coleta SEMASA - Vila de Paranapiacaba', 'Avenida Forde, s/n - Vila de Paranapiacaba', 'Atendimento de segunda a sábado, das 8h às 12h e das 13h às 16h'),
(2019, 218, 'Estações de Coleta SEMASA - Utinga', 'Rua Beckman com a avenida da Paz, s/n - Utinga', 'Atendimento de segunda a sábado, das 8h às 12h e das 13h às 16h'),
(2020, 219, 'Estações de Coleta SEMASA - Jardim Santo André', 'Avenida Loreto, 101 - Jardim Santo André', 'Atendimento de segunda a sábado, das 8h às 12h e das 13h às 16h'),
(3001, 301, 'ECO PONTO - Jd Zaira', 'Av. Guerino Stella - Jd Zaira', 'próximo ao nº 357'),
(3002, 302, 'ECO PONTO - Mauá', 'Av. Papa João XXIII \r\n', 'Em frente ao Estádio Municipal'),
(3003, 303, 'ECO PONTO - Jd. Itapeva', 'Rua Luiz Pacolla, Jd. Itapeva', 'Próximo ao nº 21\r\n\r\n'),
(3004, 304, 'ECO PONTO - Feital', 'Av. Benedita Franco da Veiga - Feital', 'próximo ao nº 420'),
(3005, 301, 'ECO PONTO - Jd. Zaira', 'Av. Jesuíno Nicomédio dos Santos', 'Na esquina com a Rua. Sebastião Antônio da Silva.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `material`
--

CREATE TABLE `material` (
  `cd_material` int(11) NOT NULL,
  `cd_empresa` int(11) NOT NULL,
  `tipo_material` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `material`
--

INSERT INTO `material` (`cd_material`, `cd_empresa`, `tipo_material`) VALUES
(1, 1, '1'),
(1001, 1001, 'Computadores e periféricos, Monitores e televisores, Impressoras e Cabos.'),
(1002, 1002, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1003, 1003, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1004, 1004, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1005, 1005, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1006, 1006, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1007, 1007, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1008, 1008, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1009, 1009, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1010, 1010, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1011, 1011, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1012, 1012, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1013, 1013, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1014, 1014, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1015, 1015, 'Computadores e periféricos.'),
(1016, 1016, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo e Brinquedos eletrônicos.\r\n'),
(1017, 1017, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1018, 1018, 'Celulares e telefones.'),
(1019, 1019, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1020, 1020, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1021, 1021, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1022, 1022, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1023, 1023, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1024, 1024, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1025, 1025, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1026, 1026, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1027, 1027, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1028, 1028, 'Celulares e telefones.'),
(1029, 1029, 'Celulares e telefones.'),
(1030, 1030, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(1031, 1031, 'Celulares e telefones.'),
(2001, 2001, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2002, 2002, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2003, 2003, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2004, 2004, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2005, 2005, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2006, 2006, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2007, 2007, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2008, 2008, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2009, 2009, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2010, 2010, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2011, 2011, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2012, 2012, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2013, 2013, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2014, 2014, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2015, 2015, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2016, 2016, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2017, 2017, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2018, 2018, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2019, 2019, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(2020, 2020, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(3001, 3001, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(3002, 3002, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(3003, 3003, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(3004, 3004, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.'),
(3005, 3005, 'Computadores e periféricos, Monitores e televisores, Celulares e telefones, Baterias e pilhas, Cartuchos e Toners, Áudio e vídeo, Impressoras, Eletrodomésticos, Carregadores e fones, Câmeras fotográficas e de vídeo, Cabos e Brinquedos eletrônicos.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`cd_bairro`),
  ADD KEY `cd_cidade` (`cd_cidade`);

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`cd_cidade`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`cd_empresa`),
  ADD KEY `cd_bairro` (`cd_bairro`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`cd_material`),
  ADD KEY `cd_empresa` (`cd_empresa`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `bairro`
--
ALTER TABLE `bairro`
  ADD CONSTRAINT `bairro_ibfk_1` FOREIGN KEY (`cd_cidade`) REFERENCES `cidade` (`cd_cidade`);

--
-- Limitadores para a tabela `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`cd_bairro`) REFERENCES `bairro` (`cd_bairro`);

--
-- Limitadores para a tabela `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`cd_empresa`) REFERENCES `empresa` (`cd_empresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
