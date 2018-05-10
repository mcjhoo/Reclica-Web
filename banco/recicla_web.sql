-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Maio-2018 às 05:53
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
  `horario_funcionamento` text NOT NULL,
  `maps_empresa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`cd_empresa`, `cd_bairro`, `nome_empresa`, `endereco_empresa`, `horario_funcionamento`, `maps_empresa`) VALUES
(1001, 101, 'CEDIR - USP', 'Av. Professor Luciano Gualberto, 71, tv. 3 – Cidade Universitária', 'Segunda a sexta-feira, das 8h às 18h - os interessados devem agendar a entrega do seu lixo eletrônico pelos telefones 3091-6454, 3091-6455 e 3091-6456', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d14629.046298459132!2d-46.73766296969578!3d-23.559047204942893!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sAv.+Professor+Luciano+Gualberto%2C+71%2C+tv.+3+%E2%80%93+Cidade+Universit%C3%A1ria!5e0!3m2!1spt-BR!2sbr!4v1525051377297\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1002, 102, 'Coopermiti', 'Rua Dr. Sérgio Meira, 268 - Barra Funda', 'Segunda a sexta-feira, das 8h às 17h sábado, das 8h às 12h.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.1284545007156!2d-46.65882538457964!3d-23.527881866242875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5811f0035c13%3A0x54a13b4d09e9844a!2sR.+Dr.+S%C3%A9rgio+Meira%2C+268+-+Barra+Funda%2C+S%C3%A3o+Paulo+-+SP%2C+01153-010!5e0!3m2!1spt-BR!2sbr!4v1525051787119\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1003, 103, 'Coopere Centro', 'Avenida do Estado, 300 - Bom Retiro', 'Segunda-feira a sábado, das 7h30 às 19h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.282394690894!2d-46.638449784937805!3d-23.522343466037885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce586366c729bd%3A0x42f7c8a173eb15b6!2sAv.+do+Estado%2C+300+-+Canind%C3%A9%2C+S%C3%A3o+Paulo+-+SP%2C+01025-020!5e0!3m2!1spt-BR!2sbr!4v1525114339122\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1004, 104, 'Cooper Zagati', 'Rua Porfírio Herdeiro, 414 - Taboão da Serra', 'Segunda-feira a sábado, das 8h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3655.502760728165!2d-46.77849129716041!3d-23.62215946054146!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce546f55fa0ed7%3A0x42f4b4f2d5b8e990!2sR.+Porf%C3%ADrio+Herdeiro%2C+414+-+Parque+Industrial+das+Oliveiras%2C+Tabo%C3%A3o+da+Serra+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525114398515\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1005, 103, 'Reviravolta Coorpel', 'Rua 25 de Janeiro, 274 - Bom Retiro', 'Segunda a sexta-feira, das 8h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7315.949111938279!2d-46.636796354637255!3d-23.533417538835273!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce58f7b8b9e777%3A0xf90821f57605596f!2sR.+Vinte+e+Cinco+de+Janeiro%2C+274+-+Luz%2C+S%C3%A3o+Paulo+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525114427192\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1006, 105, 'Cooperativa de Reciclagem Nova Esperança', 'Rua Japichauá, 311 - Ermelino Matarazzo', 'Segunda a sexta-feira, das 8h às 17h; sábado, das 8h às 12h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.406904838817!2d-46.472312173865056!3d-23.48184890660788!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce61b1d549f7d9%3A0x4bddbadc5b720cb4!2sRua+Japichaua%2C+311+-+Jardim+Matarazzo%2C+S%C3%A3o+Paulo+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525114449517\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1007, 106, 'Cooperglicério', 'Rua Teixeira Leite, 140 - Liberdade', 'Segunda a sexta-feira, das 8h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7314.693283033958!2d-46.63236068690158!3d-23.555990671702613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce590895f6057f%3A0x185412959d1260b4!2sR.+Teixeira+Leite%2C+140+-+Liberdade%2C+S%C3%A3o+Paulo+-+SP%2C+01514-010!5e0!3m2!1spt-BR!2sbr!4v1525114522772\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1008, 107, 'Cooperação ', 'Rua Froben, 101 - Vila Leopoldina', 'Segunda a sexta-feira, das 8h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.0324497205875!2d-46.73406788493767!3d-23.531335266369393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef8bc430df3bf%3A0x6ca156e109558c00!2sRua+Fr%C3%B6ben%2C+101+-+Vila+Leopoldina%2C+S%C3%A3o+Paulo+-+SP%2C+05315-010!5e0!3m2!1spt-BR!2sbr!4v1525114545860\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1009, 108, 'Cooperativa Recicla Pirituba', 'Rua Dr. Rafael Araújo de Ribeiro, 861 - Jaraguá', 'Segunda a sexta-feira, das 8h às 17h; sábado, das 8h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3660.2461731453054!2d-46.74503958493927!3d-23.45158316343278!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cefb8ca58a37c1%3A0xac421bfdb7966d4e!2sR.+Dr.+Rafael+de+Ara%C3%BAjo+Ribeiro%2C+861+-+Jaragu%C3%A1%2C+S%C3%A3o+Paulo+-+SP%2C+05181-030!5e0!3m2!1spt-BR!2sbr!4v1525114629300\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1010, 109, 'Cooperativa Cantareira Viva', 'Rua Alagoa da Roça, 95 - Tremembé', 'Segunda a sábado, das 8h às 18h (de preferência, quinta e sábado)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7320.848283204495!2d-46.61582882511555!3d-23.44516051745527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef6bffe19a41b%3A0xb31fed90d4dd1b0a!2sR.+Alagoa+de+Ro%C3%A7a%2C+95+-+Trememb%C3%A9%2C+S%C3%A3o+Paulo+-+SP%2C+02357-130!5e0!3m2!1spt-BR!2sbr!4v1525114700771\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1011, 110, 'Coopercaps', 'Av. João Paulo da Silva, 48 - Cidade Dutra', 'Segunda a sábado, das 8h às 18h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6144.2911320336525!2d-46.69669317864179!3d-23.696785223336143!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce4fc4bfcff62d%3A0x790cfa45b5f0af53!2sAv.+Jo%C3%A3o+Paulo+da+Silva%2C+S%C3%A3o+Paulo+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525114811051\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1012, 106, 'Recifran', 'R. Junqueira Freire, 176 - Liberdade', 'Segunda a sexta-feira, das 8h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3657.270237196852!2d-46.63000268493694!3d-23.55873596738062!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce590939994033%3A0xbe1d88053f9a3791!2sR.+Junqueira+Freire%2C+176+-+Liberdade%2C+S%C3%A3o+Paulo+-+SP%2C+01507-020!5e0!3m2!1spt-BR!2sbr!4v1525114830831\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1013, 111, 'Coopreciclável', 'R. Estrela D\'Oeste, 119 - Guarulhos', 'Segunda a sexta-feira, das 8h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d8706.218200321162!2d-46.51076086244094!3d-23.441922880783892!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sR.+Estrela+D&#39;Oeste%2C+119+Guarulhos!5e0!3m2!1spt-BR!2sbr!4v1525114919591\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1014, 112, 'Coopamare', 'Rua Galeno de Almeida, 659 - Pinheiros', 'Entre em contato com a cooperativa', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6150.924514392957!2d-46.68511015059465!3d-23.555453226158097!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce579a9e921c29%3A0x355a2e131fae2358!2sRua+Galeno+de+Almeida%2C+659+-+Pinheiros%2C+S%C3%A3o+Paulo+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525114940613\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1015, 113, 'Meta Projeto Acessa São Paulo', 'Av. Cruzeiro do Sul, 2630,1ºandar - Carandiru', 'Segunda a sexta-feira, das 8h às 18h30', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3076.586402486582!2d-46.62524376231281!3d-23.50736900091481!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5882eaa2ee99%3A0x9bd29b8fdce3fb2a!2sAv.+Cruzeiro+do+Sul%2C+2630+-+1%C2%BAandar+-+Carandiru%2C+S%C3%A3o+Paulo+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525115001998\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1016, 114, 'ABRE - Associação Brasileira de Redistribuição de Excedentes', 'Av. Lavandisca, 168 - Moema', 'Segunda a sexta-feira, das 9h às 13h, e das 14h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10341.051617113342!2d-46.67276958375445!3d-23.60024911398191!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5a01a984e135%3A0xb24cddd5c2426d1f!2sAv.+Lavandisca%2C+168+-+Indian%C3%B3polis%2C+S%C3%A3o+Paulo+-+SP%2C+04515-010!5e0!3m2!1spt-BR!2sbr!4v1525115029276\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1017, 115, 'CRC – Oxigênio', 'Rua Espéria, 30 - Jd. Paulista', 'Segunda a sexta-feira, das 8h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7313.613385175293!2d-46.67289956482477!3d-23.575385199193818!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce59dee1da6f93%3A0x6e588b38b3043296!2sClic+Molestias+Vasc+Condom%C3%ADnio+-+Rua+Esp%C3%A9ria%2C+30+-+Jardim+Paulista%2C+S%C3%A3o+Paulo+-+SP%2C+01433-060!5e0!3m2!1spt-BR!2sbr!4v1525115057476\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1018, 111, 'Umicore', 'Rua Barão do Rio Branco, 368 - Guarulhos', 'Segunda a sexta-feira, das 8h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29273.158089195193!2d-46.57055029868987!3d-23.491294807820932!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5f781a36d56b%3A0x804ac010173d7197!2sR.+Bar%C3%A3o+do+Rio+Branco%2C+368+-+Vila+Cavadas%2C+Guarulhos+-+SP%2C+07042-010!5e0!3m2!1spt-BR!2sbr!4v1525115093008\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1019, 116, 'Silcon Ambiental', 'Rua Bela Cintra, 986 – 3ºandar – conj. 32 Consolação', 'Segunda a sexta-feira, das 8h às 18h', '<iframe src=\"https://www.google.com/maps/embed?pb\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1020, 117, 'San Lien', 'Rua Professor José Barone Fernandes, 573 Vila Maria', 'Segunda a quinta-feira, das 8h às 18h; sexta-feira, das 8h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.392800651545!2d-46.59255158493778!3d-23.518370565891363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5f3479cc6f67%3A0x99ed210df3fb283e!2sR.+Profa.+Maria+Jos%C3%A9+Barone+Fernandes%2C+573+-+Vila+Maria%2C+S%C3%A3o+Paulo+-+SP%2C+02117-021!5e0!3m2!1spt-BR!2sbr!4v1525115154578\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1021, 118, 'On3W Produtora Web', 'Rua Faisão, 82 - Vila Madalena', 'Segunda a sexta-feira, das 10h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3657.3461240117354!2d-46.69062458493698!3d-23.556009267280025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5797be437d21%3A0x2c88f1e7844057d1!2sR.+Fais%C3%A3o%2C+82+-+Vila+Madalena%2C+S%C3%A3o+Paulo+-+SP%2C+05433-030!5e0!3m2!1spt-BR!2sbr!4v1525115229883\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1022, 119, 'Academia BIOClub Fitness', 'Rua das Flechas, 479 - Vila Santa Catarina', 'Segunda a sexta-feira, das 9h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8692.380149420922!2d-46.67219853158838!3d-23.65106806367965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce50763b302cb5%3A0x240485b370002789!2sRua+das+Flechas%2C+479+-+Vila+Santa+Catarina%2C+S%C3%A3o+Paulo+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525115304357\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1023, 120, 'IEPM – Instituto Educacional - Prestes Maia', 'Rua Raul Pompeia, 48 - Osasco', 'Segunda a sexta-feira, das 8h às 18h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1537.6051346553697!2d-46.780033550361!3d-23.566219068193988!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce558447c37099%3A0xf3838a1dbfa7a7b8!2sR.+Raul+Pomp%C3%A9ia%2C+48+-+Jardim+D&#39;abril%2C+Osasco+-+SP%2C+06038-250!5e0!3m2!1spt-BR!2sbr!4v1525115343264\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1024, 121, 'ETEC da Zona Leste - Centro Paula Souza', 'Avenida Águia de Haia, 2633 - Cid. A.E. Carvalho', 'Segunda a sexta-feira, das 8h30 às 21h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d5173.59706802023!2d-46.4793501825759!3d-23.52222921579381!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sAvenida+%C3%81guia+de+Haia%2C+2633+Cid.+A.E.+Carvalho!5e0!3m2!1spt-BR!2sbr!4v1525115408139\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1025, 122, 'ONG Instituto Batista Pr. Simon Horbaczyk', 'Rua Ernesto Manograsso, 207 - São Mateus', 'Segunda a sexta-feira, 8h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5170.089811405376!2d-46.48211066365444!3d-23.611305142903532!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce687e238ae6c5%3A0x3744f44698accb07!2sR.+Ernesto+Manograsso%2C+207+-+Cidade+S%C3%A3o+Mateus%2C+S%C3%A3o+Paulo+-+SP%2C+03963-100!5e0!3m2!1spt-BR!2sbr!4v1525115447675\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1026, 123, 'Dual Computer Comércio e Serviços de Informática', 'Rua Manaias, 204, Sala 05 - Vila Prudente', 'Segunda a sexta-feira, das 9h30 às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1537.339616964612!2d-46.57743801666812!3d-23.588891666976107!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5c6bb58b2475%3A0xa9536f34fdb3af64!2sRua+Manai%C3%A1s%2C+204+-+05+-+Parque+da+Vila+Prudente%2C+S%C3%A3o+Paulo+-+SP%2C+03140-040!5e0!3m2!1spt-BR!2sbr!4v1525115468522\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1027, 124, 'Colégio Senemby', 'Rua Curumim, 151 - Caieiras', 'Segunda a sexta-feira, das 8h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3662.505656144048!2d-46.741074584941146!3d-23.369917760435566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cee499f0c45e51%3A0x2d03cacb327715f2!2sR.+Curumim%2C+151+-+Jardim+San+Diego%2C+Caieiras+-+SP%2C+07700-000!5e0!3m2!1spt-BR!2sbr!4v1525115513579\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1028, 125, 'Serviço de Apredizagem Industrial - SENAI', 'Rua Amador Bueno, 504 - Santo Amaro', 'Segunda a sexta-feira, das 8h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.6019331820657!2d-46.71490384511929!3d-23.65442275116812!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce51aa41c2a5e1%3A0xe85000faa8450eb8!2sR.+Amador+Bueno%2C+504+-+Santo+Amaro%2C+S%C3%A3o+Paulo+-+SP%2C+04752-005!5e0!3m2!1spt-BR!2sbr!4v1525115534086\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1029, 115, 'Seguros Unimed', 'Alameda Ministro Rocha Azevedo, 366 - Jardim Paulista', 'Segunda a sexta-feira, das 9h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4349.098356625382!2d-46.66278286028698!3d-23.56337110358309!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce59cdde696a81%3A0x8079b50588a8cd70!2sAlameda+Min.+Rocha+Azevedo%2C+366+-+Jardim+Paulista%2C+S%C3%A3o+Paulo+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525115583238\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1030, 126, 'Larzinho Casa Jesus - Amor e Caridade', 'Rua Prof. Dario Ribeiro, 1386 - Casa Verde', 'Segunda a sexta-feira, das 9h às 18h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.139027643381!2d-46.66718168493852!3d-23.491501364901445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef785f3a6929b%3A0x7f5bc1fafec6c25a!2sR.+Prof.+D%C3%A1rio+Ribeiro%2C+1386+-+Vila+Prado%2C+S%C3%A3o+Paulo+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525115600586\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(1031, 127, 'Nostro Pane D’Oro', 'Rua Itamogi, 300 - Pirituba', 'Segunda-feira, quarta-feira e sexta-feira, das 13h às 17h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.3729347065114!2d-46.74817498493861!3d-23.48307316459114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef94d0cbabe73%3A0x1457e410243467fa!2sRua+Itamoji%2C+300+-+Vila+Boacava%2C+S%C3%A3o+Paulo+-+SP%2C+05170-060!5e0!3m2!1spt-BR!2sbr!4v1525115630563\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2001, 201, 'Estações de Coleta SEMASA - Parque Erasmo Assunção', 'Rua Erechim, 635 - Parque Erasmo Assunção', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8693.236455188335!2d-46.50690404832724!3d-23.638176703486607!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce683e90d52ec1%3A0xe56c572765dab8d!2sR.+Erechim%2C+635+-+Parque+Erasmo+Assun%C3%A7%C3%A3o%2C+Santo+Andr%C3%A9+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525117603310\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2002, 202, 'Estações de Coleta SEMASA - Jardim Santo Antônio', 'Av. Engenheiro Olavo Alaysio de Lima, 945  Jardim Santo Antônio', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8694.067198854153!2d-46.53622660820382!3d-23.62566383474494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce42b15d25adf1%3A0xf23f5e398df53e78!2sAv.+Eng.+Ol%C3%A1vo+Alaisio+de+Lima%2C+945+-+Vila+Metalurgica%2C+Santo+Andr%C3%A9+-+SP%2C+09220-305!5e0!3m2!1spt-BR!2sbr!4v1525117667286\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2003, 203, 'Estações de Coleta SEMASA - Centreville', 'Praça Eurico Gaspar Dutra, 181\r\nCentreville', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7307.752812274925!2d-46.49829224023039!3d-23.680377500702196!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce69926f010bdb%3A0xb3d3bfae0a7b3584!2sPra%C3%A7a+Pres.+Eur%C3%ADco+Gaspar+Dutra%2C+181+-+Parque+Gerassi%2C+Santo+Andr%C3%A9+-+SP%2C+09120-300!5e0!3m2!1spt-BR!2sbr!4v1525117718879\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2004, 204, 'Estações de Coleta SEMASA - Jardim Ipanema', 'Av. Capitão Mario Toledo de Camargo, 2.599 – Jardim Ipanema', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6144.971909590359!2d-46.509031223610435!3d-23.68231707058674!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce69efa3c36ba3%3A0x7bedf1e8f0e550dc!2sParque+Ana+Brand%C3%A3o!5e0!3m2!1spt-BR!2sbr!4v1525117742156\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2005, 205, 'Estações de Coleta SEMASA - Bairro Jardim', 'Av. Prestes Maia, 195 Bairro Jardim', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.889238476228!2d-46.54262638493507!3d-23.644137370539696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce42c3f67b170f%3A0x598afe4f9872ce94!2sAv.+Prestes+Maia%2C+195+-+Vila+Guiomar%2C+Santo+Andr%C3%A9+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525117766232\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2006, 206, 'Estações de Coleta SEMASA - Paraíso ', 'Rua Juquiá, 200 - Paraíso.', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12290.282474870357!2d-46.535213850841195!3d-23.678717154808748!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce426bc5210209%3A0xcee4e8ecf5e8fb08!2sR.+Juqui%C3%A1%2C+200+-+Jardim+Cristiane%2C+Santo+Andr%C3%A9+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525117803660\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2007, 207, 'Estações de Coleta SEMASA - Jardim Santo Alberto', 'Rua Evangelista de Souza, 1689 Jardim Santo Alberto', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8692.923927180167!2d-46.49591529609415!3d-23.642882462494168!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce6845b9e7d793%3A0x54fdda6458cee5c3!2sR.+Evangelista+de+Souza%2C+1689+-+Parque+Capuava%2C+Santo+Andr%C3%A9+-+SP%2C+09260-410!5e0!3m2!1spt-BR!2sbr!4v1525117849518\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2008, 208, 'Estações de Coleta SEMASA - Jardim Bom Pastor\r\n', 'Avenida Bom Pastor, 1150 - Jardim Bom Pastor', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3653.9080715803852!2d-46.55583268493439!3d-23.679245271841534!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce4253228a44c1%3A0x785fb1339abf2788!2sAv.+Bom+Pastor%2C+1150+-+Jardim+Bom+Pastor%2C+Santo+Andr%C3%A9+-+SP%2C+09051-301!5e0!3m2!1spt-BR!2sbr!4v1525117868090\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2009, 209, 'Estações de Coleta SEMASA - Vila Linda', 'Rua Grajaú, 45 - Vila Linda', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3653.693618003491!2d-46.52025978493413!3d-23.686912272126055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce42085000838b%3A0x2ba1772e534369ca!2sR.+Graja%C3%BA%2C+45+-+Vila+Linda%2C+Santo+Andr%C3%A9+-+SP%2C+09175-670!5e0!3m2!1spt-BR!2sbr!4v1525117882072\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2010, 210, 'Estações de Coleta SEMASA - Vila Sacadura Cabral', 'Rua Lauro Muller, 400 - Vila Sacadura Cabral', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.5424421928687!2d-46.56004688493478!3d-23.656551970999672!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce431f0f7142d3%3A0xc7864f3ab292c2bd!2sR.+Lauro+M%C3%BCler%2C+400+-+Vila+Palmares%2C+Santo+Andr%C3%A9+-+SP%2C+09061-260!5e0!3m2!1spt-BR!2sbr!4v1525117900079\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2011, 211, 'Estações de Coleta SEMASA - Parque João Ramalho', 'Av. Sorocaba, 1.001 - Parque João Ramalho', 'Atendimento de segunda a sábado, das 8h às 19h, e domingo das 8h às 12h e das 13h às 19h (abre também aos feriados)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.7600500565886!2d-46.50315468493501!3d-23.64876277071105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce6836bcf62523%3A0xd6ee553e9c425507!2sAv.+Sorocaba%2C+1000+-+Jardim+Alzira+Franco%2C+Santo+Andr%C3%A9+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525117952223\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2012, 212, 'Estações de Coleta SEMASA - Bairro Pinheirinho', 'Rua Caminho do Pilar, 1541 - Bairro Pinheirinho', 'Atendimento de segunda a sábado e feriados, das 8h às 12h e das 13h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8690.719360933395!2d-46.547963519272294!3d-23.676051748170742!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce425aff65f753%3A0xe2cc649a5188bcf6!2sCongrega%C3%A7%C3%A3o+Crist%C3%A3+no+Brasil+-+Vila+Pinheirinho!5e0!3m2!1spt-BR!2sbr!4v1525117979709\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2013, 213, 'Estações de Coleta SEMASA - Vila Guiomar', 'Rua Carnaúba, 222 - Vila Guiomar', 'Atendimento de segunda a sábado e feriados, das 8h às 12h e das 13h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.4596216041223!2d-46.5499129849348!3d-23.65951587110965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce42e4e46159e9%3A0x6ce77b6ecf2cf916!2sR.+Carna%C3%BAba%2C+222+-+Vila+Guiomar%2C+Santo+Andr%C3%A9+-+SP%2C+09090-460!5e0!3m2!1spt-BR!2sbr!4v1525117995026\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2014, 214, 'Estações de Coleta SEMASA - Camilópolis', 'Rua Benjamim Constant, 20 - Camilópolis', 'Atendimento de segunda a sábado e feriados, das 8h às 12h e das 13h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3655.473101563613!2d-46.52600168493545!3d-23.623222369764914!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce42ac1b86d8d5%3A0xf9dd2c939c08545b!2sCemit%C3%A9rio+de+Camil%C3%B3polis+-+Necropole+Sagrado+Cora%C3%A7%C3%A3o+de+Jesus!5e0!3m2!1spt-BR!2sbr!4v1525118051171\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2015, 215, 'Estações de Coleta SEMASA - Vila Lucinda\r\n', 'Rua Cerquilho, 151 - Vila Lucinda', 'Atendimento de segunda a sábado e feriados, das 8h às 12h e das 13h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3655.4618197425025!2d-46.51641488493555!3d-23.623626669779874!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce6801a8bbbee3%3A0x361b48e88e48a834!2sR.+Cerquilho%2C+151+-+Vila+Clarice%2C+Santo+Andr%C3%A9+-+SP%2C+09250-780!5e0!3m2!1spt-BR!2sbr!4v1525118066728\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2016, 202, 'Estações de Coleta SEMASA - Jardim Santo Antônio', 'Rua Santo Expedito, 107 - Jardim Santo Antônio', 'Atendimento de segunda a sábado e feriados, das 8h às 12h e das 13h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3655.2364214447575!2d-46.52451768493546!3d-23.63170277007895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce42af6b1d9d67%3A0x2f2286e49764f15d!2sR.+Santo+Expedito%2C+107+-+Vila+Alto+de+Santo+Andre%2C+Santo+Andr%C3%A9+-+SP%2C+09240-425!5e0!3m2!1spt-BR!2sbr!4v1525118083206\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2017, 216, 'Estações de Coleta SEMASA - Vila João Ramalho', 'Estrada do Cata Preta, 989 - Vila João Ramalho', 'Atendimento de segunda a sábado, das 8h às 12h e das 13h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.9496117562167!2d-46.512039984933466!3d-23.713493373113334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce6a0cc867e61b%3A0x5b4c0e7d8e0cd08b!2sEstr.+Cata+Preta%2C+989+-+Vila+Joao+Ramalho%2C+Santo+Andr%C3%A9+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525118103036\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2018, 217, 'Estações de Coleta SEMASA - Vila de Paranapiacaba', 'Avenida Forde, s/n - Vila de Paranapiacaba', 'Atendimento de segunda a sábado, das 8h às 12h e das 13h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d4342.030606087122!2d-46.30444920049365!3d-23.77596362726706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sAvenida+Forde%2C+Vila+de+Paranapiacaba!5e0!3m2!1spt-BR!2sbr!4v1525118170025\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2019, 218, 'Estações de Coleta SEMASA - Utinga', 'Rua Beckman com a avenida da Paz, s/n - Utinga', 'Atendimento de segunda a sábado, das 8h às 12h e das 13h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3655.4144608966767!2d-46.545188884935484!3d-23.62532376984279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5d319b85f8e1%3A0xf2e972fc4d38f5a1!2sRua+Beckman+-+Tamanduate%C3%AD+4%2C+Santo+Andr%C3%A9+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525118223493\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2020, 219, 'Estações de Coleta SEMASA - Jardim Santo André', 'Avenida Loreto, 101 - Jardim Santo André', 'Atendimento de segunda a sábado, das 8h às 12h e das 13h às 16h', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3653.1667642082202!2d-46.50464758493385!3d-23.705738072825003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce6a11496959d5%3A0x60f70e6e5feca845!2sAv.+Loreto%2C+101+-+Jardim+Santo+Andr%C3%A9%2C+Santo+Andr%C3%A9+-+SP%2C+09132-410!5e0!3m2!1spt-BR!2sbr!4v1525118238529\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(3001, 301, 'ECO PONTO - Jd Zaira', 'Av. Guerino Stella - Jd Zaira', 'próximo ao nº 357', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14618.347205968055!2d-46.44687235816742!3d-23.654964340979344!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce694a54b66449%3A0xbaa130a6c38b0644!2sAv.+Guerino+Stela%2C+357+-+Jardim+Zaira%2C+Mau%C3%A1+-+SP%2C+09320-720!5e0!3m2!1spt-BR!2sbr!4v1525118277461\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(3002, 302, 'ECO PONTO - Mauá', 'Av. Papa João XXIII \r\n', 'Em frente ao Estádio Municipal', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.1557627341235!2d-46.47142008493445!3d-23.6703870715128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce6a2c140480c7%3A0x6781ed76ecb3567a!2sAv.+Papa+Jo%C3%A3o+XXIII+-+Vila+Noemia%2C+Mau%C3%A1+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525118369279\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(3003, 303, 'ECO PONTO - Jd. Itapeva', 'Rua Luiz Pacolla, Jd. Itapeva', 'Próximo ao nº 21\r\n\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.0283853067813!2d-46.41869878493435!3d-23.67494287168185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce6c3c5df696a5%3A0xe5f4e4f571a671ef!2sR.+Lu%C3%ADs+Pacola+-+Jardim+Itapeva%2C+Mau%C3%A1+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525118397971\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(3004, 304, 'ECO PONTO - Feital', 'Av. Benedita Franco da Veiga - Feital', 'próximo ao nº 420', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.408609381957!2d-46.43219018493467!3d-23.661341271177402!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce6eaf66d2ee23%3A0xce3f9262a197bb54!2sAv.+Benedita+Franco+da+Veiga%2C+420+-+Vila+Feital%2C+Mau%C3%A1+-+SP!5e0!3m2!1spt-BR!2sbr!4v1525118577015\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(3005, 301, 'ECO PONTO - Jd. Zaira', 'Av. Jesuíno Nicomédio dos Santos', 'Na esquina com a Rua. Sebastião Antônio da Silva.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.7666798730415!2d-46.44166773493509!3d-23.648525420702335!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce6ecb424c2507%3A0x59d6f2679c058c88!2sR.+Sebasti%C3%A3o+Ant%C3%B4nio+da+Silva%2C+101+-+Jardim+Zaira%2C+Mau%C3%A1+-+SP%2C+09321-360!5e0!3m2!1spt-BR!2sbr!4v1525118658503\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');

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
