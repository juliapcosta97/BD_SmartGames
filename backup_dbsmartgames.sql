-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: dbsmartgames
-- ------------------------------------------------------
-- Server version	5.7.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblgame`
--

DROP TABLE IF EXISTS `tblgame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgame` (
  `codgame` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` text NOT NULL,
  `preco` decimal(9,2) DEFAULT NULL,
  `classificacao` varchar(45) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `desenvolvedor` varchar(45) NOT NULL,
  `plataforma` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `codloja` int(11) DEFAULT NULL,
  PRIMARY KEY (`codgame`),
  KEY `codloja` (`codloja`),
  CONSTRAINT `tblgame_ibfk_1` FOREIGN KEY (`codloja`) REFERENCES `tblloja` (`codloja`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgame`
--

LOCK TABLES `tblgame` WRITE;
/*!40000 ALTER TABLE `tblgame` DISABLE KEYS */;
INSERT INTO `tblgame` VALUES (1,'Mortal Combat','Mortal Kombat X é o próximo capítulo da esperada, lendária e aclamada franquia de jogos de luta da NetherRealm Studios, marcando a estreia da icônica série na nova geração. O jogo combina apresentação cinematográfica com jogabilidade inédita, oferecendo a mais brutal experiência de combate de todos os tempos, trazendo uma nova experiência completamente conectada que arremessa jogadores em uma competição online persistente, na qual toda luta conta na batalha global pela supremacia.\n\nPela primeira vez, Mortal Kombat X dá aos jogadores a habilidade de escolher entre múltiplas variações de cada personagem, afetando tanto a estratégia quanto o estilo de luta deles. Jogadores mergulham em uma trama original, que dá destaque para alguns dos personagens mais prolíficos do game como Scorpion e Sub-Zero, além de apresentar novos desafiantes que representam as forças do bem e do mal, amarrando o enredo.',200.00,'+18','conteudo/imagens/mortal_kombat.jpg','NetherRealm','Xbox One','Luta',1),(2,'FIFA 17','Com a tecnologia Frostbite, o FIFA 17 transforma a maneira de jogar, competir e se conectar emocionalmente ao jogo. O game insere você em experiências de futebol autênticas, trazendo jogadores de futebol cheios de profundidade e emoção e levando você a mundos novos e exclusivos do jogo. Você domina cada momento em campo com inovação total na maneira com que os jogadores pensam, se movimentam, interagem fisicamente com os adversários e executam ataques. ',200.00,'+18','conteudo/imagens/fifa_17.jpg','EA','Xbox One','Esporte',1),(3,'Star Wars Battlefront','É um jogo de acção de tiro na primeira e na terceira pessoa, produzido pela EA Digital Illusions CE (DICE) e baseado na franquia Star Wars. Foi publicado pela Electronic Arts com a chancela da LucasArts a 17 de Novembro de 2015 para Microsoft Windows, PlayStation 4 e Xbox One. Star Wars Battlefront é o terceiro título principal da série Battlefront, depois de Battlefront (2004) e Battlefront II (2005).\nO chefe do estúdio, Patrick Söderlund, afirmou que o jogo é a interpretação da DICE sobre o que deve ser Battlefront, ao mesmo tempo que incorpora elementos dos jogos anteriores. Como tal, refere que não é uma sequela, mas um reinicio da série. Uma versão beta que ocorreu no mês de Outubro de 2015 teve a participação de mais de 9,5 milhões de jogadores, tornando-a à data a maior de sempre realizada pela EA. ',150.00,'+14','conteudo/imagens/star_wars.jpg','EA','PS4','Ação',1),(4,'Far Cry 4','Far Cry 4 é um jogo eletrônico de tiro em primeira pessoa jogado em mundo aberto que foi produzido pela Ubisoft Montreal juntamente com a Ubisoft Red Storm, a Ubisoft Toronto, a Ubisoft Shanghai e a Ubisoft Kiev. É o quarto título principal da série Far Cry e foi publicado pela Ubisoft para Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360 e Xbox One no dia 18 de novembro de 2014 na América do Norte e no dia 20 de novembro nos territórios EMEA e australianos. O IGN nomeou Far Cry 4 na categoria Jogo do Ano em todas as plataformas disponíveis, excepto Microsoft Windows.',180.00,'+14','conteudo/imagens/farcry.jpg','Ubisoft','PS4','Aventura',1),(5,'Watch Dogs','Watch Dogs é jogado numa perspectiva em terceira pessoa e o mapa pode ser percorrido a pé ou num veículo. A história é contada numa versão fictícia da cidade de Chicago, que inclui a sua zona urbana, os campos em redor e os bairros pobres. Baseado nos temas de cibersegurança, em Watch Dogs o jogador controla Aiden Pearce, um hacker grey hat altamente qualificado, descrito como uma pessoa que usa tão bem os punhos como a inteligência, muito hábil na capacidade de se infiltrar em sistemas eletrônicos, e deste modo penetrar no ctOS, um sistema centralizado todo ligado em rede, que coordena a hiper-controlada cidade de Chicago. A história segue os esforços de Aiden na procura de vingança depois da morte acidental da sua sobrinha. Um modo multijogador online também está incluído, permitindo até oito jogadores participarem em jogos tanto cooperativos como competitivos no mesmo mapa do modo história.',199.99,'+18','conteudo/imagens/watch_dogs.jpg','Ubisoft','PS4','Ação',1),(6,'Uncharted','Uncharted é uma série de videojogos de ação-aventura produzida pela Naughty Dog e publicada pela Sony Computer Entertainment para as plataformas PlayStation. A série segue as aventuras de Nathan Nate Drake, um caçador de tesouros, o seu mentor e amigo Victor Sully Sullivan, e da jornalista Elena Fisher, e de vários outros companheiros secundários que Drake conhece enquanto viaja ao redor do mundo para descobrir mistérios históricos.\nA série principal tem actualmente os jogos Uncharted: Drake\'s Fortune, Uncharted 2: Among Thieves , Uncharted 3: Drake\'s Deception e o recém-lançado Uncharted 4: A Thief\'s End. Para a PlayStation Vita existe ainda o jogo Uncharted: Golden Abyss, que serve como prequela para os anteriores, e Uncharted: Fight for Fortune, que é baseado em cartas.',189.99,'+14','conteudo/imagens/uncharted.jpg','Sony','PS4','Ação',1),(7,'PES 2017','Pro Evolution Soccer 2017 (popularmente conhecido pela sua abreviação PES 2017 e por Winning Eleven 2017 na Ásia), é um jogo de futebol desenvolvido pela Konami para PlayStation 4, Xbox One, Xbox 360, Playstation 3 PC e Android que pertence à série Pro Evolution Soccer. O lançamento ocorreu dia 13 de setembro de 2016 nas Américas e dia 15 de setembro de 2016 na Europa. As estrelas presentes na capa do jogo são alguns jogadores do FC Barcelonaː Neymar, Lionel Messi, Luis Suárez, Ivan Rakitić e Gerard Piqué. ',169.99,'Livre','conteudo/imagens/pes_2017.jpg','Konami','PS4','Esporte',1),(8,'Just Dance 2017','Just Dance é um jogo eletrônico de música desenvolvido pela Ubisoft. O jogo foi lançado em 17 de novembro de 2009 na América do Norte, 26 de novembro na Austrália, e 27 de novembro na Europa.[1] Imitando a coreografia de um dançarino virtual na tela.[2] Em outubro de 2015, o jogo chegou à sua sétima edição, tendo a oitava com lançamento já agendado para outubro de 2016. Teve seus dois primeiros títulos lançados exclusivamente para o Nintendo Wii e, a partir da terceira edição, passou a ter versões para todas as plataformas com controle de movimento existentes a cada lançamento. Hoje, a franquia está presente nos consoles Wii U, Xbox One, PlayStation4, Wii, Xbox 360 e PlayStation3.',169.99,'Livre','conteudo/imagens/just_dance.jpg','Ubisoft','Xbox One','Esporte',1),(9,'GTA V','Grand Theft Auto V é um jogo eletrônico de ação-aventura desenvolvimento pela Rockstar North e publicado pela Rockstar Games. É o décimo quinto título da série Grand Theft Auto e foi lançado originalmente em 17 de setembro de 2013 para PlayStation 3 e Xbox 360, com remasterizações sendo lançadas em 14 de novembro de 2014 para PlayStation 4 e Xbox One, e em 14 de abril de 2015 para Microsoft Windows. O jogo se passa no estado ficcional de San Andreas, com a história um jogador seguindo três criminosos e seus esforços para realizarem assaltos sob a pressão de uma agência governamental. O mundo aberto permite que os jogadores naveguem livremente pelas áreas rurais e urbanas de San Andreas.',200.00,'Livre','conteudo/imagens/gta_v.jpg','Rockstar North','Xbox One','Ação',1),(10,'Battlefield 4','Battlefield 4 (abreviado como BF4) é um jogo de tiro em primeira pessoa desenvolvido pela EA Digital Illusions CE (DICE) e publicado pela Electronic Arts. É o décimo terceiro título da série, sequência de Battlefield 3, e foi lançado entre outubro e novembro de 2013 para Microsoft Windows, PlayStation 3, Xbox 360, PlayStation 4 e Xbox One.\n\nEm Julho de 2012, Battlefield 4 foi anunciado não oficialmente, depois de ter sido publicitado que os clientes que fizessem a pré-reserva de Medal of Honor: Warfighter teriam acesso antecipado à beta de Battlefield 4.',200.00,'+16','conteudo/imagens/battlefield.jpg','EA','Xbox One','Ação',1),(11,'GTA V','Grand Theft Auto V é um jogo eletrônico de ação-aventura desenvolvimento pela Rockstar North e publicado pela Rockstar Games. É o décimo quinto título da série Grand Theft Auto e foi lançado originalmente em 17 de setembro de 2013 para PlayStation 3 e Xbox 360, com remasterizações sendo lançadas em 14 de novembro de 2014 para PlayStation 4 e Xbox One, e em 14 de abril de 2015 para Microsoft Windows. O jogo se passa no estado ficcional de San Andreas, com a história um jogador seguindo três criminosos e seus esforços para realizarem assaltos sob a pressão de uma agência governamental. O mundo aberto permite que os jogadores naveguem livremente pelas áreas rurais e urbanas de San Andreas.',200.00,'Livre','conteudo/imagens/gta_v.jpg','Rockstar North','Xbox One','Ação',1);
/*!40000 ALTER TABLE `tblgame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblloja`
--

DROP TABLE IF EXISTS `tblloja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloja` (
  `codloja` int(11) NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `nomeReferencia` varchar(45) NOT NULL,
  PRIMARY KEY (`codloja`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblloja`
--

LOCK TABLES `tblloja` WRITE;
/*!40000 ALTER TABLE `tblloja` DISABLE KEYS */;
INSERT INTO `tblloja` VALUES (1,'Avenida Paulista','1500','São Paulo','Paulista'),(2,'Avenida Paulista','1500','São Paulo','Paulista');
/*!40000 ALTER TABLE `tblloja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuario`
--

DROP TABLE IF EXISTS `tblusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusuario` (
  `codUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`codUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuario`
--

LOCK TABLES `tblusuario` WRITE;
/*!40000 ALTER TABLE `tblusuario` DISABLE KEYS */;
INSERT INTO `tblusuario` VALUES (1,'Julia Pereira','juliapcosta97@gmail.com','123'),(2,'Maria da Silva','Maria','456'),(3,'Alberto Ferreira','Alberto','789');
/*!40000 ALTER TABLE `tblusuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-19 17:12:01
