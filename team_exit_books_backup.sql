CREATE DATABASE  IF NOT EXISTS `books` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `books`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	5.7.25-log

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `Author_id` int(11) NOT NULL,
  `Author_first_name` varchar(75) NOT NULL,
  `Author_last_name` varchar(75) NOT NULL,
  PRIMARY KEY (`Author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Anna','Burns'),(2,'Angie','Thomas'),(3,'Stephen','Hawking'),(4,'Kelly','Harms'),(5,'Eric','Carle'),(6,'Carl','Sagan'),(7,'Joseph','Heller'),(8,'Shannon','Mayer'),(9,'Nora','Roberts'),(10,'Venki','Ramakrishnan'),(11,'David','Blight'),(12,'Nathan','Myhrvold'),(13,'Rachel','Kushner'),(14,'Drew','Daywalt'),(15,'Lin-Manuel','Miranda'),(16,'Ta-Nehisi','Coates'),(17,'Matthew','Desmond'),(18,'Jeff','Kinney'),(19,'Anthony','Doerr'),(20,'Kazuo','Ishiguro'),(21,'Michelle','Obama'),(22,'Tara','Westover'),(23,'Rachel','Hollis'),(24,'Alexandra','Mallory'),(25,'George','Martin'),(26,'Tommy','Orange'),(27,'John','Grisham'),(28,'Madeline','Miller'),(29,'Kristin','Hannah'),(30,'Tayari','Jones'),(31,'Charles','Duhigg'),(32,'Carol','Dweck'),(33,'Napoleon','Hill'),(34,'Yann','Martel'),(35,'Kiran','Desai'),(36,'Ian','McEwan'),(37,'Nayyirah','Waheed'),(38,'Michael','Cunningham'),(39,'Alice','Walker'),(40,'Harper','Lee'),(41,'Cara','Black'),(42,'Georgia','Hunter'),(43,'Marvin','Bittinger'),(44,'John','Carreyrou'),(45,'Ron','Chernow'),(46,'Walter','Isaacson'),(47,'James','Gentle'),(48,'Douglas','Montgomery'),(49,'Martha','Stewart'),(50,'Susannah','Cahalan'),(51,'Sigrid','Nunez'),(52,'Jeffrey','Stewart'),(53,'Rebecca','Makkai'),(54,'Walter','Mosley'),(55,'George','Owell'),(56,'Lucy','Cooke'),(57,'Matt','de la PeÃ±a'),(58,'Rick','Riordan'),(59,'Jonathan','Green'),(60,'Jeremy','McCarter'),(61,'David','Ellenbogen'),(62,'George','Runger'),(63,'Scott','Surgent');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_books`
--

DROP TABLE IF EXISTS `award_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_books` (
  `Book_id` int(11) NOT NULL,
  `Award_id` int(11) NOT NULL,
  PRIMARY KEY (`Book_id`,`Award_id`),
  KEY `Award_id_idx` (`Award_id`),
  CONSTRAINT `fk_awards_books_awards_id` FOREIGN KEY (`Award_id`) REFERENCES `awards` (`Award_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_awards_books_book_id` FOREIGN KEY (`Book_id`) REFERENCES `books` (`Book_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_books`
--

LOCK TABLES `award_books` WRITE;
/*!40000 ALTER TABLE `award_books` DISABLE KEYS */;
INSERT INTO `award_books` VALUES (2,1),(3,1),(22,1),(25,1),(28,1),(29,1),(41,1),(44,1),(51,2),(5,3),(54,4),(15,6),(22,7),(19,8),(34,9),(1,10),(34,10),(35,10),(36,10),(26,12),(36,14),(37,14),(2,15),(56,16),(9,17),(31,17),(19,18),(29,18),(18,19),(15,20),(2,21),(14,21),(6,23),(12,24),(36,25),(32,26),(36,27),(16,28),(21,28),(5,29),(1,30),(33,30),(52,31),(53,31),(16,33),(2,34),(36,35),(30,37),(16,38),(2,40),(13,41),(11,42),(17,42),(19,42),(38,42),(39,42),(40,42),(57,43),(55,44),(60,44),(58,45),(5,46),(30,47),(36,48),(2,49);
/*!40000 ALTER TABLE `award_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awards` (
  `Award_id` int(11) NOT NULL AUTO_INCREMENT,
  `Award_name` varchar(80) NOT NULL,
  PRIMARY KEY (`Award_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (1,'#1 New York Times Bestseller'),(2,'Amazon Best Sellers Rank'),(3,'American Institute of Graphics Arts Award'),(4,'Andrew Carnegie Medal for Excellence'),(5,'Asian/Pacific American Award for Literature'),(6,'Audie Audiobook of the Year'),(7,'Audie Award for Autobiography/memoir'),(8,'Audie Award for Fiction'),(9,'Boeke Prize'),(10,'Booker Prize'),(11,'Brotherhood Award of the National Conference of Christians and Jews'),(12,'Center of Fiction First Novel Prize'),(13,'Chicago Public Library\'s Best of the Best'),(14,'Commonwealth Writers\' Prize'),(15,'Coretta Scott King Honor Book'),(16,'Dystopian Fiction Prize'),(17,'Financial Times and McKinsey Business Book of the Year Award'),(18,'Goodreads Choice Awards Best Historical Fiction'),(19,'Goodreads Choice Awards Best Middle Grade & Children\'s'),(20,'Goodreads Choice Awards Best Nonfiction'),(21,'Goodreads Choice Awards Best of the Best'),(22,'Goodreads Choice Awards Best Picture Books'),(23,'Hugo Award for Best Related Work'),(24,'James Beard Award for Restaurant and Professional'),(25,'James Tait Black Memorial Prize'),(26,'Living Now Book Award'),(27,'Los Angeles Times Book Prize'),(28,'NAACP Image Award for Outstanding Literary Work - Biography / Auto-biography'),(29,'Nakamori Reader\'s Prize'),(30,'Napolean Hill Award'),(31,'National Book Award'),(32,'National Book Award for Fiction'),(33,'National Book Award for Nonfiction'),(34,'National Book Award Longlist'),(35,'National Book Critic Circle Award'),(36,'National Book Critics Circle Award for Fiction'),(37,'New York Times Notable Book'),(38,'PEN/Diamonstein-Spielvogel Award for the Art of the Essay'),(39,'PEN/Faulkner Award for Fiction'),(40,'Printz Honor Book'),(41,'Prix MÃ©dicis Ã©tranger'),(42,'Pulitzer Prize for Fiction'),(43,'Royal Society Prizes for Science Books'),(44,'The Edgar'),(45,'The Newbery Medal'),(46,'the Selection du Grand Prix des Treize'),(47,'Washington Post Notable Book'),(48,'Whitbread Novel Award'),(49,'William C. Morris Award Winner');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_authors`
--

DROP TABLE IF EXISTS `book_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_authors` (
  `Book_id` int(11) NOT NULL,
  `Author_id` int(11) NOT NULL,
  PRIMARY KEY (`Book_id`,`Author_id`),
  KEY `Author_id_idx` (`Author_id`),
  CONSTRAINT `fk_book_authors_author_id` FOREIGN KEY (`Author_id`) REFERENCES `authors` (`Author_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_authors_book_id` FOREIGN KEY (`Book_id`) REFERENCES `books` (`Book_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_authors`
--

LOCK TABLES `book_authors` WRITE;
/*!40000 ALTER TABLE `book_authors` DISABLE KEYS */;
INSERT INTO `book_authors` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,46),(48,47),(49,48),(50,49),(51,50),(52,51),(53,52),(54,53),(55,54),(56,55),(57,56),(58,57),(59,58),(60,59),(15,60),(43,61),(49,62),(43,63);
/*!40000 ALTER TABLE `book_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `Book_id` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN_10` varchar(10) NOT NULL,
  `ISBN_13` varchar(13) NOT NULL,
  `Book_title` varchar(80) DEFAULT NULL,
  `Publisher_id` int(11) DEFAULT NULL,
  `Language` varchar(45) DEFAULT NULL,
  `Published_year` int(4) DEFAULT NULL,
  `Edition` int(2) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`Book_id`),
  KEY `Publisher_id_idx` (`Publisher_id`),
  CONSTRAINT `fk_books_publisher_id` FOREIGN KEY (`Publisher_id`) REFERENCES `publishers` (`Publisher_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'1644450003','9781644450000','Milkman',18,'English',2018,NULL),(2,'62498533','9780062498533','The Hate U Give',23,'English',2017,01),(3,'553380163','9780553380163','A Brief History of Time',5,'English',1998,NULL),(4,'1542040574','9781542040574','The Overdue Life of Amy Byler',28,'English',2019,NULL),(5,'399226907','9780399226908','The Very Hungry Caterpillar',36,'English',1994,NULL),(6,'345539434','9780345539434','Cosmos',4,'English',2013,01),(7,'679437223','9780679437222','Catch-22',17,'English',1995,NULL),(8,'1987933524','9781987933529','Shadowspell Academy: The Culling Trials',24,'English',2019,NULL),(9,'263253430','9780263253430','Unfinished Business',40,'English',2018,NULL),(10,'465093361','9780465093366','Gene Machine: The Race to Decipher the Secrets of the Ribosome',6,'English',2018,01),(11,'1416590323','9781416590323','Frederick Douglass: Prophet of Freedom',41,'English',2019,01),(12,'982761058','9780982761052','Modernist Bread',46,'English',2017,01),(13,'1910702684','9781910702680','The Mars Room',10,'English',2018,01),(14,'399255370','9780399255373','The Day the Crayons Quit',36,'English',2013,NULL),(15,'1455539740','9781455539741','Hamilton: The Revolution',21,'English',2016,01),(16,'812993543','9780812993547','Between the World and Me',43,'English',2015,01),(17,'553447459','9780553447453','Evicted: Poverty and Profit in the American City',9,'English',2017,01),(18,'810983915','9780141336459','Dog Days (Diary of a Wimpy Kid, Book 4)',2,'English',2009,01),(19,'1476746583','9781501132872','All the Light We Cannot See',39,'English',2014,NULL),(20,'679731725','9780679731726','The Remains of the Day',49,'English',1989,NULL),(21,'1524763136','9781524763138','Becoming Michelle Obama',13,'English',2018,01),(22,'399590501','9780399590504','Educated',35,'English',2018,01),(23,'1400201659','9781400201655','Girl, Wash Your Face',47,'English',2018,NULL),(24,'1943142254','9781943142255','The Woman in the Window',14,'English',2016,01),(25,'1524796280','9781524796280','Fire & Blood: 300 Years Before a Game of Thrones (A Targaryen History)',5,'English',2018,01),(26,'525520376','9780525520375','There There',27,'English',2018,01),(27,'385544153','9780385544153','The Reckoning',16,'English',2018,01),(28,'316556347','9780316556347','Circe',29,'English',2018,01),(29,'312577230','9780312577230','The Great Alone',45,'English',2018,01),(30,'1616208775','9781616208775','An American Marriage',1,'English',2018,NULL),(31,'1400069289','9781400069286','The Power of Habit: Why We Do What We Do in Life and Business',37,'English',2012,01),(32,'1400062756','9781400062751','Mindset: The New Psychology of Success',37,'English',2006,01),(33,'785833528','9780785833529','Think and Grow Rich',11,'English',2015,01),(34,'151008117','9780151008117','Life of Pi',25,'English',2002,01),(35,'871139294','9780871139290','The Inheritance of Loss',3,'English',2005,01),(36,'385503954','9780385503952','Atonement',31,'English',2002,01),(37,'1492238287','9781492238287','salt.',12,'English',2013,NULL),(38,'1250239354','9781250239358','The Hours',19,'English',2019,NULL),(39,'151191543','9780151191543','The Color Purple',22,'English',1982,NULL),(40,'62420701','9780062420701','To Kill A Mockingbird',26,'English',1960,NULL),(41,'1616959290','9781616959296','Murder in Bel-Air',42,'English',2019,NULL),(42,'399563083','9780399563089','We Were the Lucky Ones',48,'English',2017,01),(43,'321979397','9780321979391','Calculus and Its Applications (11th Edition)',33,'English',2015,11),(44,'1524731656','9781524731656','Bad Blood: Secrets and Lies in a Silicon Valley Startup',27,'English',2018,01),(45,'1594202664','9781594202667','Washington: A Life',34,'English',2010,NULL),(46,'743264738','9780743264730','Einstein: His Life and Universe',41,'English',2007,01),(47,'1451648537','9781451648539','Steve Jobs',41,'English',2011,01),(48,'387981438','9780387981437','Computational Statistics (Statistics and Computing)',44,'English',2009,NULL),(49,'1119409535','9781119409533','Applied Statistics and Probability for Engineers',51,'English',2017,07),(50,'1328927326','9781328927323','The Martha Manual: How to Do (Almost) Everything',25,'English',2019,NULL),(51,'1501258982','9781501258985','Brain on Fire: My Month of Madness',8,'English',2015,NULL),(52,'735219443','9780735219441','The Friend: A Novel',38,'English',2018,01),(53,'195089578','9780195089578','The New Negro: The Life of Alain Locke',32,'English',2018,01),(54,'735223521','9780735223523','The Great Believers',48,'English',2018,01),(55,'316509640','9780316509640','Down the River unto the Sea',30,'English',2018,01),(56,'679417397','9780679417392','Nineteen Eighty-Four',17,'English',1992,01),(57,'1784161903','9781784161903','The Unexpected Truth About Animals',7,'English',2018,01),(58,'399257742','9780399257742','Last Stop on Market Street',20,'English',2015,NULL),(59,'1484787781','9780786838653','The Lightning Thief',15,'English',2006,NULL),(60,'393244482','9780393244489','Sex Money Murder',50,'English',2018,01);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_by_genre`
--

DROP TABLE IF EXISTS `books_by_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_by_genre` (
  `Genre_id` int(11) NOT NULL,
  `Book_id` int(11) NOT NULL,
  PRIMARY KEY (`Genre_id`,`Book_id`),
  KEY `Book_id_idx` (`Book_id`),
  CONSTRAINT `fk_books_by_genre_book_id` FOREIGN KEY (`Book_id`) REFERENCES `books` (`Book_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_books_by_genre_genre_id` FOREIGN KEY (`Genre_id`) REFERENCES `genre` (`Genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_by_genre`
--

LOCK TABLES `books_by_genre` WRITE;
/*!40000 ALTER TABLE `books_by_genre` DISABLE KEYS */;
INSERT INTO `books_by_genre` VALUES (6,1),(26,1),(33,2),(30,3),(16,4),(4,5),(12,5),(23,5),(25,6),(3,7),(22,7),(29,7),(12,8),(1,9),(1,10),(2,10),(2,11),(14,11),(21,11),(7,12),(9,12),(21,12),(8,13),(12,13),(22,13),(12,14),(11,15),(17,15),(1,16),(2,16),(21,17),(5,18),(12,18),(15,18),(12,19),(14,19),(12,20),(14,20),(28,20),(18,21),(18,22),(31,23),(27,24),(12,25),(13,26),(12,27),(24,28),(12,29),(10,30),(31,31),(31,32),(12,33),(12,34),(12,35),(12,36),(12,37),(12,38),(12,39),(12,40),(19,41),(1,42),(32,43),(21,44),(2,45),(2,46),(2,47),(32,48),(32,49),(31,50),(1,51),(10,52),(21,53),(12,54),(19,55),(12,56),(30,57),(4,58),(20,59),(8,60);
/*!40000 ALTER TABLE `books_by_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `Genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `Genre_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Autobiography'),(2,'Biography'),(3,'Black comedy'),(4,'Children\'s Literature'),(5,'Comedy'),(6,'Coming-of-Age Fiction'),(7,'Cookbooks'),(8,'Crime'),(9,'Culinary'),(10,'Domestic Fiction'),(11,'Drama'),(12,'Fiction'),(13,'Historical Fiction'),(14,'History'),(15,'Humor'),(16,'Humorous Fiction'),(17,'Libretto'),(18,'Memoir'),(19,'Mystery'),(20,'Mythology'),(21,'Non-fiction'),(22,'Novel'),(23,'Picture book'),(24,'Political Thriller'),(25,'Popular science'),(26,'Psychological Fiction'),(27,'Psychological Suspense'),(28,'Romance'),(29,'Satire'),(30,'Science'),(31,'Self-help'),(32,'Textbook'),(33,'Young adult fiction');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publishers` (
  `Publisher_id` int(11) NOT NULL,
  `Publisher_name` varchar(45) NOT NULL,
  `Publisher_city` varchar(45) DEFAULT NULL,
  `Publisher_state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'Algonquin Books','Chapel Hill','NC'),(2,'Amulet Books','New York City','NY'),(3,'Atlantic Monthly Press','New York City','NY'),(4,'Ballantine Books','New York City','NY'),(5,'Bantam','New York City','NY'),(6,'Basic Books','New York City','NY'),(7,'Black Swan Press','San Francisco','CA'),(8,'Brilliance Audio','Grand Haven','MI'),(9,'Broadway Books','New York City','NY'),(10,'Charles Scribner\'s Sons','New York City','NY'),(11,'Chartwell Books','New York City','NY'),(12,'CreateSpace Independent Publishing Platform','Scotts Valley','CA'),(13,'Crown','New York City','NY'),(14,'D2C Perspectives','Aptos','CA'),(15,'Disney-Hyperion','New York City','NY'),(16,'Doubleday','New York City','NY'),(17,'Everyman\'s Library','London',''),(18,'Faber and Faber','London',''),(19,'Farrar, Straus and Giroux','New York City','NY'),(20,'G.P. Putnam\'s Sons Books for Young Readers','New York City','NY'),(21,'Grand Central Publishing','New York City','NY'),(22,'Harcourt Brace Jovanovish','Los Angeles','CA'),(23,'HarperCollins','New York City','NY'),(24,'Hijinks Ink Publishing','Qualicum Beach',''),(25,'Houghton Mifflin Harcourt','Boston','MA'),(26,'J. B. Lippincott & Co.','Philadelphia','PA'),(27,'Knopf','New York City','NY'),(28,'Lake Union','Seattle','WA'),(29,'Little, Brown, and Company','Boston','MA'),(30,'Mulholland Books','London',''),(31,'Nan A. Talese','New York City','NY'),(32,'Oxford University Press','Oxford',''),(33,'Pearson','London',''),(34,'Penguin Press','London',''),(35,'Penguin Random House','New York City','NY'),(36,'Philomel Books','New York City','NY'),(37,'Random House','New York City','NY'),(38,'Riverhead Books','New York City','NY'),(39,'Scribner','New York City','NY'),(40,'Silhouette','Toronto',''),(41,'Simon & Schuster','New York City','NY'),(42,'Soho Crime','New York City','NY'),(43,'Spiegel & Grau','New York City','NY'),(44,'Springer','New York City','NY'),(45,'St. Martin\'s Press','New York City','NY'),(46,'The Cooking Lab','Bellevue','WA'),(47,'Thomas Nelson','Nashville','TN'),(48,'Viking','New York City','NY'),(49,'Vintage International','New York City','NY'),(50,'W. W. Norton & Company','New York City','NY'),(51,'Wiley','Hoboken','NJ');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `query_authors_with_awards`
--

DROP TABLE IF EXISTS `query_authors_with_awards`;
/*!50001 DROP VIEW IF EXISTS `query_authors_with_awards`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `query_authors_with_awards` AS SELECT 
 1 AS `Author Name`,
 1 AS `Award Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query_awards_per_book`
--

DROP TABLE IF EXISTS `query_awards_per_book`;
/*!50001 DROP VIEW IF EXISTS `query_awards_per_book`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `query_awards_per_book` AS SELECT 
 1 AS `Book`,
 1 AS `Author`,
 1 AS `Award Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query_books_more_than_one_edition`
--

DROP TABLE IF EXISTS `query_books_more_than_one_edition`;
/*!50001 DROP VIEW IF EXISTS `query_books_more_than_one_edition`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `query_books_more_than_one_edition` AS SELECT 
 1 AS `Book Title`,
 1 AS `Publisher Name`,
 1 AS `Publisher City`,
 1 AS `Publisher State`,
 1 AS `Edition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query_books_since_2000`
--

DROP TABLE IF EXISTS `query_books_since_2000`;
/*!50001 DROP VIEW IF EXISTS `query_books_since_2000`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `query_books_since_2000` AS SELECT 
 1 AS `Title`,
 1 AS `Author_name`,
 1 AS `Publisher`,
 1 AS `Publication Year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query_books_with_prize_in_award_name`
--

DROP TABLE IF EXISTS `query_books_with_prize_in_award_name`;
/*!50001 DROP VIEW IF EXISTS `query_books_with_prize_in_award_name`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `query_books_with_prize_in_award_name` AS SELECT 
 1 AS `Book`,
 1 AS `ISBN_10`,
 1 AS `ISBN_13`,
 1 AS `Award Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query_ca_books`
--

DROP TABLE IF EXISTS `query_ca_books`;
/*!50001 DROP VIEW IF EXISTS `query_ca_books`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `query_ca_books` AS SELECT 
 1 AS `Book`,
 1 AS `Publisher`,
 1 AS `Publication City`,
 1 AS `Publication State`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query_ny_bestsellers`
--

DROP TABLE IF EXISTS `query_ny_bestsellers`;
/*!50001 DROP VIEW IF EXISTS `query_ny_bestsellers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `query_ny_bestsellers` AS SELECT 
 1 AS `Title`,
 1 AS `Publication Year`,
 1 AS `Publisher`,
 1 AS `Award Title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query_top_3_genre`
--

DROP TABLE IF EXISTS `query_top_3_genre`;
/*!50001 DROP VIEW IF EXISTS `query_top_3_genre`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `query_top_3_genre` AS SELECT 
 1 AS `Genre`,
 1 AS `Award Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'books'
--

--
-- Final view structure for view `query_authors_with_awards`
--

/*!50001 DROP VIEW IF EXISTS `query_authors_with_awards`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_authors_with_awards` AS select concat(`authors`.`Author_last_name`,', ',`authors`.`Author_first_name`) AS `Author Name`,count(`award_books`.`Award_id`) AS `Award Count` from (((`authors` join `book_authors` on((`authors`.`Author_id` = `book_authors`.`Author_id`))) join `books` on((`book_authors`.`Book_id` = `books`.`Book_id`))) join `award_books` on((`book_authors`.`Book_id` = `award_books`.`Book_id`))) group by `authors`.`Author_id` order by `authors`.`Author_last_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_awards_per_book`
--

/*!50001 DROP VIEW IF EXISTS `query_awards_per_book`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_awards_per_book` AS select `b`.`Book_title` AS `Book`,concat(`a`.`Author_last_name`,', ',`a`.`Author_first_name`) AS `Author`,count(distinct `ab`.`Award_id`) AS `Award Count` from (((`books` `b` join `award_books` `ab` on((`ab`.`Book_id` = `b`.`Book_id`))) join `book_authors` `ba` on((`b`.`Book_id` = `ba`.`Book_id`))) join `authors` `a` on((`ba`.`Author_id` = `a`.`Author_id`))) group by `ab`.`Book_id` order by count(distinct `ab`.`Award_id`) desc,`b`.`Book_title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_books_more_than_one_edition`
--

/*!50001 DROP VIEW IF EXISTS `query_books_more_than_one_edition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_books_more_than_one_edition` AS select `books`.`Book_title` AS `Book Title`,`publishers`.`Publisher_name` AS `Publisher Name`,`publishers`.`Publisher_city` AS `Publisher City`,`publishers`.`Publisher_state` AS `Publisher State`,`books`.`Edition` AS `Edition` from (`books` join `publishers` on((`books`.`Publisher_id` = `publishers`.`Publisher_id`))) where (`books`.`Edition` > 1) order by `books`.`Book_title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_books_since_2000`
--

/*!50001 DROP VIEW IF EXISTS `query_books_since_2000`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_books_since_2000` AS select distinct `books`.`Book_title` AS `Title`,concat(`authors`.`Author_last_name`,', ',`authors`.`Author_first_name`) AS `Author_name`,`publishers`.`Publisher_name` AS `Publisher`,`books`.`Published_year` AS `Publication Year` from ((((`books` join `book_authors` on((`books`.`Book_id` = `book_authors`.`Book_id`))) join `award_books` on((`books`.`Book_id` = `award_books`.`Book_id`))) join `authors` on((`book_authors`.`Author_id` = `authors`.`Author_id`))) join `publishers` on((`books`.`Publisher_id` = `publishers`.`Publisher_id`))) where (`books`.`Published_year` > 2000) order by `books`.`Published_year` desc,`books`.`Book_title`,`authors`.`Author_last_name`,`authors`.`Author_first_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_books_with_prize_in_award_name`
--

/*!50001 DROP VIEW IF EXISTS `query_books_with_prize_in_award_name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_books_with_prize_in_award_name` AS select `books`.`Book_title` AS `Book`,`books`.`ISBN_10` AS `ISBN_10`,`books`.`ISBN_13` AS `ISBN_13`,`awards`.`Award_name` AS `Award Name` from ((`books` join `award_books` on((`books`.`Book_id` = `award_books`.`Book_id`))) join `awards` on((`award_books`.`Award_id` = `awards`.`Award_id`))) where `award_books`.`Award_id` in (select `awards`.`Award_id` from `awards` where (`awards`.`Award_name` like '%Prize%')) order by `books`.`Book_title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_ca_books`
--

/*!50001 DROP VIEW IF EXISTS `query_ca_books`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_ca_books` AS select `books`.`Book_title` AS `Book`,`publishers`.`Publisher_name` AS `Publisher`,`publishers`.`Publisher_city` AS `Publication City`,`publishers`.`Publisher_state` AS `Publication State` from (`books` join `publishers` on((`books`.`Publisher_id` = `publishers`.`Publisher_id`))) where `books`.`Publisher_id` in (select `publishers`.`Publisher_id` from `publishers` where (`publishers`.`Publisher_state` = 'CA')) order by `publishers`.`Publisher_name`,`books`.`Book_title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_ny_bestsellers`
--

/*!50001 DROP VIEW IF EXISTS `query_ny_bestsellers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_ny_bestsellers` AS select `b`.`Book_title` AS `Title`,`b`.`Published_year` AS `Publication Year`,`p`.`Publisher_name` AS `Publisher`,`a`.`Award_name` AS `Award Title` from (((`books` `b` join `award_books` `ab` on((`ab`.`Book_id` = `b`.`Book_id`))) join `awards` `a` on((`ab`.`Award_id` = `a`.`Award_id`))) join `publishers` `p` on((`b`.`Publisher_id` = `p`.`Publisher_id`))) where (`a`.`Award_name` = '#1 New York Times Bestseller') order by `b`.`Published_year` desc,`b`.`Book_title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_top_3_genre`
--

/*!50001 DROP VIEW IF EXISTS `query_top_3_genre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_top_3_genre` AS select `g`.`Genre_name` AS `Genre`,count(distinct `ab`.`Award_id`) AS `Award Count` from (((`books` `b` join `award_books` `ab` on((`ab`.`Book_id` = `b`.`Book_id`))) join `books_by_genre` `bbg` on((`b`.`Book_id` = `bbg`.`Book_id`))) join `genre` `g` on((`bbg`.`Genre_id` = `g`.`Genre_id`))) group by `bbg`.`Genre_id` order by count(distinct `ab`.`Award_id`) desc limit 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-03 22:12:24
