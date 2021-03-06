-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 04, 2020 at 02:00 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccfs`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `accid` int(11) NOT NULL AUTO_INCREMENT,
  `empid` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(16) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `type` varchar(15) NOT NULL,
  `accstatus` varchar(11) DEFAULT 'Active',
  PRIMARY KEY (`accid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accid`, `empid`, `username`, `password`, `fname`, `lname`, `type`, `accstatus`) VALUES
(1, 'CCFS-001', 'REGISTRAR', 'REGISTRAR', 'ADAM', 'SOBREMONTE', 'REGISTRAR', 'Active'),
(2, 'CCFS-002', 'Paul_Acc', 'a123', 'PAUL', 'PEREZ', 'REGISTRAR', 'Inactive'),
(3, 'CCFS-003', 'ACCOUNTING', 'ACCOUNTING', 'JARGON', 'TAASIN', 'ACCOUNTING', 'Active'),
(4, 'CCFS-004', 'vinceAcc', 'running', 'VINCENT', 'TOLENTINO', 'ACCOUNTING', 'Inactive'),
(5, 'CCFS-005', 'ADMIN', 'ADMIN', 'ADMIN', 'ADMIN', 'ADMIN', 'Active'),
(6, 'CCFS-008', 'ACC_IMRAN', '12345', 'IMRAN', 'MAHMOOD', 'ACCOUNTING', 'Active'),
(7, 'CCFS-009', 'TEST', 'TEST', 'TEST', 'TEST', 'ADMIN', 'Active'),
(8, '30', 'JacobAnderson', '123456', 'Jacob ', 'Anderson', 'Registrar', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

DROP TABLE IF EXISTS `assessment`;
CREATE TABLE IF NOT EXISTS `assessment` (
  `assessID` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `IDno` int(11) NOT NULL,
  `assessfor` varchar(45) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `yearid` int(11) NOT NULL,
  `asmstatus` varchar(45) DEFAULT 'Unpaid',
  PRIMARY KEY (`assessID`),
  KEY `IDno` (`IDno`),
  KEY `yearid` (`yearid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`assessID`, `amount`, `IDno`, `assessfor`, `duedate`, `yearid`, `asmstatus`) VALUES
(31, 400, 200024, 'downpayment', NULL, 15, 'Paid'),
(32, 622.22222222222, 200024, 'July', NULL, 15, 'Paid'),
(33, 622.22222222222, 200024, 'August', NULL, 15, 'Paid'),
(34, 622.22222222222, 200024, 'September', NULL, 15, 'Unpaid'),
(35, 622.22222222222, 200024, 'October', NULL, 15, 'Unpaid'),
(36, 622.22222222222, 200024, 'November', NULL, 15, 'Unpaid'),
(37, 622.22222222222, 200024, 'December', NULL, 15, 'Unpaid'),
(38, 622.22222222222, 200024, 'January', NULL, 15, 'Unpaid'),
(39, 622.22222222222, 200024, 'February', NULL, 15, 'Unpaid'),
(40, 622.22222222222, 200024, 'March', NULL, 15, 'Unpaid'),
(41, 400, 200025, 'downpayment', NULL, 15, 'Paid'),
(42, 622.22222222222, 200025, 'July', NULL, 15, 'Paid'),
(43, 622.22222222222, 200025, 'August', NULL, 15, 'Paid'),
(44, 622.22222222222, 200025, 'September', NULL, 15, 'Paid'),
(45, 622.22222222222, 200025, 'October', NULL, 15, 'Paid'),
(46, 622.22222222222, 200025, 'November', NULL, 15, 'Paid'),
(47, 622.22222222222, 200025, 'December', NULL, 15, 'Paid'),
(48, 622.22222222222, 200025, 'January', NULL, 15, 'Paid'),
(49, 622.22222222222, 200025, 'February', NULL, 15, 'Paid'),
(50, 622.22222222222, 200025, 'March', NULL, 15, 'Unpaid'),
(51, 400, 200002, 'downpayment', NULL, 15, 'Paid'),
(52, 622.22222222222, 200002, 'July', NULL, 15, 'Paid'),
(53, 622.22222222222, 200002, 'August', NULL, 15, 'Paid'),
(54, 622.22222222222, 200002, 'September', NULL, 15, 'Paid'),
(55, 622.22222222222, 200002, 'October', NULL, 15, 'Paid'),
(56, 622.22222222222, 200002, 'November', NULL, 15, 'Paid'),
(57, 622.22222222222, 200002, 'December', NULL, 15, 'Paid'),
(58, 622.22222222222, 200002, 'January', NULL, 15, 'Paid'),
(59, 622.22222222222, 200002, 'February', NULL, 15, 'Paid'),
(60, 622.22222222222, 200002, 'March', NULL, 15, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `attid` int(11) NOT NULL AUTO_INCREMENT,
  `IDno` int(11) NOT NULL,
  `yearid` int(11) NOT NULL,
  `month` varchar(31) DEFAULT NULL,
  `daysPres` int(40) DEFAULT NULL,
  `daysTar` int(40) DEFAULT NULL,
  `daysAbs` int(40) DEFAULT NULL,
  PRIMARY KEY (`attid`) USING BTREE,
  KEY `studid` (`IDno`,`yearid`) USING BTREE,
  KEY `idyear` (`yearid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attid`, `IDno`, `yearid`, `month`, `daysPres`, `daysTar`, `daysAbs`) VALUES
(122, 210001, 15, 'Jan', 1, 1, 1),
(123, 210001, 15, 'Feb', NULL, NULL, NULL),
(124, 210001, 15, 'Mar', NULL, NULL, NULL),
(125, 210001, 15, 'Apr', NULL, NULL, NULL),
(126, 210001, 15, 'May', NULL, NULL, NULL),
(127, 210001, 15, 'Jun', NULL, NULL, NULL),
(128, 210001, 15, 'Jul', NULL, NULL, NULL),
(129, 210001, 15, 'Aug', NULL, NULL, NULL),
(130, 210001, 15, 'Sep', NULL, NULL, NULL),
(131, 210001, 15, 'Oct', NULL, NULL, NULL),
(132, 210001, 15, 'Nov', NULL, NULL, NULL),
(133, 210001, 15, 'Dec', NULL, NULL, NULL),
(134, 210004, 15, 'Jan', NULL, NULL, NULL),
(135, 210004, 15, 'Feb', NULL, NULL, NULL),
(136, 210004, 15, 'Mar', NULL, NULL, NULL),
(137, 210004, 15, 'Apr', NULL, NULL, NULL),
(138, 210004, 15, 'May', NULL, NULL, NULL),
(139, 210004, 15, 'Jun', NULL, NULL, NULL),
(140, 210004, 15, 'Jul', NULL, NULL, NULL),
(141, 210004, 15, 'Aug', NULL, NULL, NULL),
(142, 210004, 15, 'Sep', NULL, NULL, NULL),
(143, 210004, 15, 'Oct', NULL, NULL, NULL),
(144, 210004, 15, 'Nov', NULL, NULL, NULL),
(145, 210004, 15, 'Dec', NULL, NULL, NULL),
(146, 190023, 15, 'Jan', NULL, NULL, NULL),
(147, 190023, 15, 'Feb', NULL, NULL, NULL),
(148, 190023, 15, 'Mar', NULL, NULL, NULL),
(149, 190023, 15, 'Apr', NULL, NULL, NULL),
(150, 190023, 15, 'May', NULL, NULL, NULL),
(151, 190023, 15, 'Jun', NULL, NULL, NULL),
(152, 190023, 15, 'Jul', NULL, NULL, NULL),
(153, 190023, 15, 'Aug', NULL, NULL, NULL),
(154, 190023, 15, 'Sep', NULL, NULL, NULL),
(155, 190023, 15, 'Oct', NULL, NULL, NULL),
(156, 190023, 15, 'Nov', NULL, NULL, NULL),
(157, 190023, 15, 'Dec', NULL, NULL, NULL),
(158, 200009, 15, 'Jan', NULL, NULL, NULL),
(159, 200009, 15, 'Feb', NULL, NULL, NULL),
(160, 200009, 15, 'Mar', NULL, NULL, NULL),
(161, 200009, 15, 'Apr', NULL, NULL, NULL),
(162, 200009, 15, 'May', NULL, NULL, NULL),
(163, 200009, 15, 'Jun', NULL, NULL, NULL),
(164, 200009, 15, 'Jul', NULL, NULL, NULL),
(165, 200009, 15, 'Aug', NULL, NULL, NULL),
(166, 200009, 15, 'Sep', NULL, NULL, NULL),
(167, 200009, 15, 'Oct', NULL, NULL, NULL),
(168, 200009, 15, 'Nov', NULL, NULL, NULL),
(169, 200009, 15, 'Dec', NULL, NULL, NULL),
(170, 200001, 15, 'Jan', 10, 1, 1),
(171, 200001, 15, 'Feb', NULL, NULL, NULL),
(172, 200001, 15, 'Mar', NULL, NULL, NULL),
(173, 200001, 15, 'Apr', NULL, NULL, NULL),
(174, 200001, 15, 'May', NULL, NULL, NULL),
(175, 200001, 15, 'Jun', NULL, NULL, NULL),
(176, 200001, 15, 'Jul', NULL, NULL, NULL),
(177, 200001, 15, 'Aug', NULL, NULL, NULL),
(178, 200001, 15, 'Sep', NULL, NULL, NULL),
(179, 200001, 15, 'Oct', NULL, NULL, NULL),
(180, 200001, 15, 'Nov', NULL, NULL, NULL),
(181, 200001, 15, 'Dec', NULL, NULL, NULL),
(182, 200006, 15, 'Jan', NULL, NULL, NULL),
(183, 200006, 15, 'Feb', NULL, NULL, NULL),
(184, 200006, 15, 'Mar', NULL, NULL, NULL),
(185, 200006, 15, 'Apr', NULL, NULL, NULL),
(186, 200006, 15, 'May', NULL, NULL, NULL),
(187, 200006, 15, 'Jun', NULL, NULL, NULL),
(188, 200006, 15, 'Jul', NULL, NULL, NULL),
(189, 200006, 15, 'Aug', NULL, NULL, NULL),
(190, 200006, 15, 'Sep', NULL, NULL, NULL),
(191, 200006, 15, 'Oct', NULL, NULL, NULL),
(192, 200006, 15, 'Nov', NULL, NULL, NULL),
(193, 200006, 15, 'Dec', NULL, NULL, NULL),
(194, 200007, 15, 'Jan', NULL, NULL, NULL),
(195, 200007, 15, 'Feb', NULL, NULL, NULL),
(196, 200007, 15, 'Mar', NULL, NULL, NULL),
(197, 200007, 15, 'Apr', NULL, NULL, NULL),
(198, 200007, 15, 'May', NULL, NULL, NULL),
(199, 200007, 15, 'Jun', NULL, NULL, NULL),
(200, 200007, 15, 'Jul', NULL, NULL, NULL),
(201, 200007, 15, 'Aug', NULL, NULL, NULL),
(202, 200007, 15, 'Sep', NULL, NULL, NULL),
(203, 200007, 15, 'Oct', NULL, NULL, NULL),
(204, 200007, 15, 'Nov', NULL, NULL, NULL),
(205, 200007, 15, 'Dec', NULL, NULL, NULL),
(206, 200008, 15, 'Jan', NULL, NULL, NULL),
(207, 200008, 15, 'Feb', NULL, NULL, NULL),
(208, 200008, 15, 'Mar', NULL, NULL, NULL),
(209, 200008, 15, 'Apr', NULL, NULL, NULL),
(210, 200008, 15, 'May', NULL, NULL, NULL),
(211, 200008, 15, 'Jun', NULL, NULL, NULL),
(212, 200008, 15, 'Jul', NULL, NULL, NULL),
(213, 200008, 15, 'Aug', NULL, NULL, NULL),
(214, 200008, 15, 'Sep', NULL, NULL, NULL),
(215, 200008, 15, 'Oct', NULL, NULL, NULL),
(216, 200008, 15, 'Nov', NULL, NULL, NULL),
(217, 200008, 15, 'Dec', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

DROP TABLE IF EXISTS `checklist`;
CREATE TABLE IF NOT EXISTS `checklist` (
  `checkid` int(11) NOT NULL AUTO_INCREMENT,
  `checkvalues` varchar(50) DEFAULT NULL,
  `checkdesc` varchar(250) DEFAULT NULL,
  `competencyvalues` varchar(50) DEFAULT NULL,
  `competencydesc` varchar(250) DEFAULT NULL,
  `corevalues` varchar(50) DEFAULT NULL,
  `valuedesc` varchar(250) DEFAULT NULL,
  `firstrating` varchar(5) DEFAULT NULL,
  `secondrating` varchar(5) DEFAULT NULL,
  `thirdrating` varchar(5) DEFAULT NULL,
  `fourthrating` varchar(5) DEFAULT NULL,
  `IDno` int(11) DEFAULT NULL,
  PRIMARY KEY (`checkid`),
  KEY `idnumber` (`IDno`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`checkid`, `checkvalues`, `checkdesc`, `competencyvalues`, `competencydesc`, `corevalues`, `valuedesc`, `firstrating`, `secondrating`, `thirdrating`, `fourthrating`, `IDno`) VALUES
(1, 'GROSS MOTOR', 'Climbs on chair or other elevated piece of furniture like bed without help.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(2, 'GROSS MOTOR', 'Walks backward.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(3, 'GROSS MOTOR', 'Runs without tripping or falling.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(4, 'GROSS MOTOR', 'Walks downstairs, two feet on each step with one hand held.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(5, 'GROSS MOTOR', 'Walks upstairs holding handrail, two feet on each step.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(6, 'GROSS MOTOR', 'Walks upstairs with alternate feet without holding handrails.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(7, 'GROSS MOTOR', 'Walks downstairs with alternate feet without holding handrails.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(8, 'GROSS MOTOR', 'Moves body part as directed.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(9, 'GROSS MOTOR', 'Jumps up.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(10, 'GROSS MOTOR', 'Throws ball overhead with direction.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(11, 'GROSS MOTOR', 'Hops 1 to 3 steps on preferred foot.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(12, 'GROSS MOTOR', 'Jumps and turns.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(13, 'GROSS MOTOR', 'Dances patterns/joins group movement activities.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(14, 'FINE MOTOR', 'Uses all 5 fingers to get foods/toys placed on flat surface.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(15, 'FINE MOTOR', 'Picks up objects with thumb and index fingers.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(16, 'FINE MOTOR', 'Displays a hand preference.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(17, 'FINE MOTOR', 'Puts objects in/out of containers.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(18, 'FINE MOTOR', 'Holds crayon with all the fingers of his hand making a fist. (i.e. palmar grasp)', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(19, 'FINE MOTOR', 'Unscrew lid container or unwraps food.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(20, 'FINE MOTOR', 'Scribbles spontaneously.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(21, 'FINE MOTOR', 'Scribbles vertical and horizontal lines.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(22, 'FINE MOTOR', 'Draws circle purposely.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(23, 'FINE MOTOR', 'Draws a human figure (head, eyes, trunk, arms, and hand/fingers).', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(24, 'FINE MOTOR', 'Draws a house using geometric forms.', NULL, NULL, NULL, NULL, '', '', '', '', 200001),
(25, NULL, NULL, 'Health, Well-Being, and Motor Development', 'Demonstrates health habits that keep one clean and sanitary', NULL, NULL, 'B', 'B ', 'C', 'C', 200001),
(26, NULL, NULL, 'Health, Well-Being, and Motor Development', 'Demonstrates health habits that promote personal safety', NULL, NULL, 'A', 'B', 'B', 'A', 200001),
(27, NULL, NULL, 'Health, Well-Being, and Motor Development', 'Demonstrates locomotor skills such as walking, running, skipping, jumping, climbing correctly during play, dance or exercise activities.', NULL, NULL, '', '', '', '', 200001),
(28, NULL, NULL, 'Health, Well-Being, and Motor Development', 'Demonstrates non-locomotor skills such as pushing, pulling, turning, swaying, bending, throwing, catching, and kicking correctly during play, dance or exercise.', NULL, NULL, '', '', '', '', 200001),
(29, NULL, NULL, 'Health, Well-Being, and Motor Development', 'Demonstrate fine motor skills needed for self-care/self-help such as tooth brushing, buttoning, screwing, and unscrewing lids, using spoon and fork correctly, etc.', NULL, NULL, '', '', '', '', 200001),
(30, NULL, NULL, 'Health, Well-Being, and Motor Development', 'Demonstrate fine motor skills needed for creative self-expression/art activities, such as tearing, cutting, pasting, copying, drawing, coloring, molding, painting, and lacing, etc.', NULL, NULL, '', '', '', '', 200001),
(31, NULL, NULL, 'Health, Well-Being, and Motor Development', 'Traces, copies, or writes letter and numerals', NULL, NULL, '', '', '', '', 200001),
(32, NULL, NULL, 'Socio-Emotional Development', 'States personal information (name, gender, age, birthday)', NULL, NULL, '', '', '', '', 200001),
(33, NULL, NULL, 'Socio-Emotional Development', 'Expresses personal interests and needs', NULL, NULL, '', '', '', '', 200001),
(34, NULL, NULL, 'Socio-Emotional Development', 'Demonstrates readiness in trying out new experiences, and self-confidence in doing tasks independently', NULL, NULL, '', '', '', '', 200001),
(35, NULL, NULL, 'Socio-Emotional Development', 'Expresses feelings in appropriate ways and in different situations.', NULL, NULL, '', '', '', '', 200001),
(36, NULL, NULL, 'Socio-Emotional Development', 'Follow school rules willingly and executes school tasks and routines well', NULL, NULL, '', '', '', '', 200001),
(37, NULL, NULL, 'Socio-Emotional Development', 'Recognizes different emotions, acknowledges the feelings of others, and shows willingness to help.', NULL, NULL, '', '', '', '', 200001),
(38, NULL, NULL, 'Socio-Emotional Development', 'Shows respect in dealing with peers and adults', NULL, NULL, '', '', '', '', 200001),
(39, NULL, NULL, 'Socio-Emotional Development', 'Identifies members of one\'s family', NULL, NULL, '', '', '', '', 200001),
(40, NULL, NULL, 'Socio-Emotional Development', 'Identifies people and places in the school and community', NULL, NULL, '', '', '', '', 200001),
(41, NULL, NULL, NULL, NULL, 'Reconciliation with God (Maka-Diyos)', 'Expresses love of God in full reverence and faithfulness.', 'RO', 'SO', 'AO', 'AO', NULL),
(42, NULL, NULL, NULL, NULL, 'Reconciliation with God (Maka-Diyos)', 'Applies God\'s Word and Truth in school and at home.', 'AO', 'AO', '', '', NULL),
(43, NULL, NULL, NULL, NULL, 'Reconciliation with God (Maka-Diyos)', 'Respects place of worship and religious beliefs of others.', 'AO', 'SO', '', '', NULL),
(44, NULL, NULL, NULL, NULL, 'Reconciliation with God (Maka-Diyos)', 'Demonstrates intellectual honesty', 'NO', 'RO', '', '', NULL),
(45, NULL, NULL, NULL, NULL, 'Reconciliation with God (Maka-Diyos)', 'Recognizes and respects one\'s feelings and those of others', NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, 'Christ-Like Character (Maka-tao)', 'Sensitive to individual, social, and cultural differences', NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, 'Christ-Like Character (Maka-tao)', 'Recognizes and respects people from different economic, social, and cultural backgrounds', NULL, NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, 'Christ-Like Character (Maka-tao)', 'Cooperates during activities', NULL, NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, NULL, 'Christ-Like Character (Maka-tao)', 'Communicates respectfully', NULL, NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, NULL, 'Christ-Like Character (Maka-tao)', 'Accepts defeat and celebrates others\' success', NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL, 'Excellence (Makakalikasan)', 'Shows a caring attitude towards the environment, and school materials', NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, 'Excellence (Makakalikasan)', 'Practices waste management', NULL, NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, 'Excellence (Makakalikasan)', 'Conserves energy and resources', NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, 'Excellence (Makakalikasan)', 'Keeps work area in order during and after work.', NULL, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, 'Excellence (Makakalikasan)', 'Keeps one\'s work neat and orderly.', NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL, 'Instrumentation (Makabansa)', 'Identifies oneself as a Filipino', NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL, 'Instrumentation (Makabansa)', 'Respects the flag and national anthem', NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL, 'Instrumentation (Makabansa)', 'Abides by the rules of the school, community, and country', NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, 'Instrumentation (Makabansa)', 'Perseveres to achieve goals despite difficult circumstances', NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, 'Instrumentation (Makabansa)', 'Manages time and personal resources efficiently and effectively', NULL, NULL, NULL, NULL, NULL),
(61, 'SELF-HELP', 'Feeds self with finger-food (e.g. biscuit, bread)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(62, 'SELF-HELP', 'Feeds self using spoon with spillage.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(63, 'SELF-HELP', 'Feeds self using fingers with spillage.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(64, 'SELF-HELP', 'Feeds self using spoon without spillage.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(65, 'SELF-HELP', 'Feeds self using fingers without spillage.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(66, 'SELF-HELP', 'Eats without need of spoon feeding during any meal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(67, 'SELF-HELP', 'Holds cold cup for drinking.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(68, 'SELF-HELP', 'Drinks cup with spillage.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(69, 'SELF-HELP', 'Drinks from cup unassisted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(70, 'SELF-HELP', 'Pours from pitcher without spillage.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(71, 'SELF-HELP', 'Prepares own foods/snacks.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(72, 'SELF-HELP', 'Prepares meals for younger siblings/family members when no adult is around.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(73, 'SELF-HELP', 'Participates when being dressed (e.g. raises arms and lifts legs)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(74, 'SELF-HELP', 'Pulls down gartered short pants.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(75, 'SELF-HELP', 'Removes undershirts.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(76, 'SELF-HELP', 'Dresses without assistance except buttons and tying.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(77, 'SELF-HELP', 'Dresses without assistance including buttons and tying.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(78, 'SELF-HELP', 'Informs the adult only after he/she has already urinated (peed) or moves his/her bowels (poohed) in his/her underpants.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(79, 'SELF-HELP', 'Informs others the need to urinate (pee) or move (pooh pooh) so he/she can be brought to a designated place (e.g. comfort room).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(80, 'SELF-HELP', 'Goes to the designated place to urinate (pee) or move bowels (pooh) but sometimes still does in his/her pants.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(81, 'SELF-HELP', 'Goes to the designated place to urinate (pee) or move bowels (pooh) but never does this in his/her pants.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(82, 'SELF-HELP', 'Wipes or cleans self after a bowel movement (pooh).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(83, 'SELF-HELP', 'Participates when bathing (e.g rubbing arms with soap)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(84, 'SELF-HELP', 'Washes and dries hands without any help.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(85, 'SELF-HELP', 'Washes face without any help.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(86, 'SELF-HELP', 'Bathes without any help.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(87, 'RECEPTIVE LANGUAGE', 'Points to family member when asked to do so.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(88, 'RECEPTIVE LANGUAGE', 'Points to body parts on himself/herself when asked to do so.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(89, 'RECEPTIVE LANGUAGE', 'Points to 5 named pictured objects when asked to do so.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(90, 'RECEPTIVE LANGUAGE', 'Follows one-step instructions that includes simple prepositions (e.g. in, on, under, etc.)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(91, 'RECEPTIVE LANGUAGE', 'Follows two-step instructions that include simple prepositions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(92, 'EXPRESSIVE LANGUAGE', 'Uses 5-20 recognizable words.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(93, 'EXPRESSIVE LANGUAGE', 'Uses pronouns (e.g. I, me, you, etc.)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(94, 'EXPRESSIVE LANGUAGE', 'Uses 2-3 words verb-noun combinations (e.g. hindi gatas)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(95, 'EXPRESSIVE LANGUAGE', 'Name objects in pictures.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(96, 'EXPRESSIVE LANGUAGE', 'Speaks in grammatically correct 2-3 word sentences.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(97, 'EXPRESSIVE LANGUAGE', 'Ask \"what\" questions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(98, 'EXPRESSIVE LANGUAGE', 'Ask \"who\" and \"why\" questions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(99, 'EXPRESSIVE LANGUAGE', 'Gives account of recent experiences (with prompting) in order of occurrence using past tense.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(100, 'COGNITIVE', 'Looks at direction of falling objects.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(101, 'COGNITIVE', 'Looks for partially hidden objects.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(102, 'COGNITIVE', 'Imitates behavior just seen a few minutes earlier.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(103, 'COGNITIVE', 'Offers objects but will not release it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(104, 'COGNITIVE', 'Looks for completely hidden objects.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(105, 'COGNITIVE', 'Exhibits simple pretend play (feed, put doll to sleep).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(106, 'COGNITIVE', 'Matches objects.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(107, 'COGNITIVE', 'Matches 2-3 colors.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(108, 'COGNITIVE', 'Matches pictures.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(109, 'COGNITIVE', 'Sorts based on shapes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(110, 'COGNITIVE', 'Sorts based on 2 attribute (e.g. size and color)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(111, 'COGNITIVE', 'Arranges objects according to size, from smallest to biggest.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(112, 'COGNITIVE', 'Names 4-6 colors.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(113, 'COGNITIVE', 'Copies shapes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(114, 'COGNITIVE', 'Names 3 animals or vegetables when asked', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(115, 'COGNITIVE', 'States what common household items are used for.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(116, 'COGNITIVE', 'Can assemble simple puzzles.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(117, 'COGNITIVE', 'Demonstrates an understanding of opposites by completing a statement.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(118, 'COGNITIVE', 'Points to left and right sides of the body.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(119, 'COGNITIVE', 'Can state what is silly or wrong in the pictures.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(120, 'COGNITIVE', 'Matches lower and upper case letters.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(121, 'SOCIO-EMOTIONAL', 'Enjoys watching activities of nearby people or animals.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(122, 'SOCIO-EMOTIONAL', 'Friendly with strangers but may initially show slight anxiety or shyness.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(123, 'SOCIO-EMOTIONAL', 'Plays alone but likes to be near with familiar adults or brothers or sisters.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(124, 'SOCIO-EMOTIONAL', 'Laughs or squeals aloud and play.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(125, 'SOCIO-EMOTIONAL', 'Plays peek-a-boo.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(126, 'SOCIO-EMOTIONAL', 'Rolls ball interactively with caregiver/examiner.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(127, 'SOCIO-EMOTIONAL', 'Hugs or cuddle toys.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(128, 'SOCIO-EMOTIONAL', 'Demonstrates respect for elders using terms like \"po\" and \"opo\".', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(129, 'SOCIO-EMOTIONAL', 'Shares toys with others.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(130, 'SOCIO-EMOTIONAL', 'Imitates adult activities (e.g. cooking, washing).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(131, 'SOCIO-EMOTIONAL', 'Identifies feelings of others.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(132, 'SOCIO-EMOTIONAL', 'Approximately uses cultural gestures of greetings without much prompting (e.g. bless, kiss, etc.)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(133, 'SOCIO-EMOTIONAL', 'Comforts playmates/siblings in distress.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(134, 'SOCIO-EMOTIONAL', 'Persists when faced with problems or obstacles to his wants.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(135, 'SOCIO-EMOTIONAL', 'Helps with family chores (e.g. wiping tables, watering plants, etc.)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(136, 'SOCIO-EMOTIONAL', 'Curious about environment but knows when to stop asking.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(137, 'SOCIO-EMOTIONAL', 'Waits for turn.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(138, 'SOCIO-EMOTIONAL', 'Asks permission to play with toy being used by others.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(139, 'SOCIO-EMOTIONAL', 'Defends positions with determination.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(140, 'SOCIO-EMOTIONAL', 'Plays organized group games fairly (e.g. does not cheat in order to win).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(141, 'SOCIO-EMOTIONAL', 'Can talk about difficult feelings (e.g. anger, sadness, worry) he/she experiences.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(142, 'SOCIO-EMOTIONAL', 'Honors simple bargain with caregiver (e.g. can play outside only after cleaning, fixing his room).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(143, 'SOCIO-EMOTIONAL', 'Watching responsibly over younger siblings/family member.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(144, 'SOCIO-EMOTIONAL', 'Cooperates with adults and peers in group situations to minimize quarrels and conflicts.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(145, NULL, NULL, 'Language, Literacy, and Communication', 'Distinguishes between elements of sounds e.g. pitch (low and high) volume (loud and soft)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(146, NULL, NULL, 'Language, Literacy, and Communication', 'Listens attentively to stories/poems/songs', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(147, NULL, NULL, 'Language, Literacy, and Communication', 'Recalls details from stories/poems/songs listened to', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(148, NULL, NULL, 'Language, Literacy, and Communication', 'Relates story event to personal experiences', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(149, NULL, NULL, 'Language, Literacy, and Communication', 'Sequence events from a story listened to', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(150, NULL, NULL, 'Language, Literacy, and Communication', 'Infer character traits and feelings', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(151, NULL, NULL, 'Language, Literacy, and Communication', 'Identify simple cause-and-effect and problem solution relationship of events in a story listened to or in a familiar situation', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(152, NULL, NULL, 'Language, Literacy, and Communication', 'Predict story outcomes', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(153, NULL, NULL, 'Language, Literacy, and Communication', 'Discriminates objects/pictures as same and different, identifies missing parts of objects/pictures, and identifies which objects do not belong to the group', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(154, NULL, NULL, 'Language, Literacy, and Communication', 'Uses proper expressions in and polite greetings in appropriate situations', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(155, NULL, NULL, 'Language, Literacy, and Communication', 'Talks about details of objects, people, etc. using appropriate speaking vocabulary', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(156, NULL, NULL, 'Language, Literacy, and Communication', 'Participates actively in class activities (e.g. reciting poems, rhymes. etc.) and discussions by responding to questions accordingly.', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(157, NULL, NULL, 'Language, Literacy, and Communication', 'Ask simple questions (who, what, where, when, why)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(158, NULL, NULL, 'Language, Literacy, and Communication', 'Gives 1 to 2 step directions', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(159, NULL, NULL, 'Language, Literacy, and Communication', 'Recalls simple stories or narrates personal experiences', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(160, NULL, NULL, 'Language, Literacy, and Communication', 'Identifies sounds of letters (using the alphabet of the Mother Tongue)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(161, NULL, NULL, 'Language, Literacy, and Communication', 'The child can identify the following letter sounds: /a/ /b/ /c/ /d/ /e/ /f/ /g/ /h/ /i/ /j/ /k/ /l/ /m/ /n/ /n/ /ng/ /o/ /p/ /q/ /r/ /s/ /u/ /v/ /q/ /x/ /y/ /z/', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(162, NULL, NULL, 'Language, Literacy, and Communication', 'Names uppercase and lower case letters (using the alphabet of the Mother Tongue)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(163, NULL, NULL, 'Language, Literacy, and Communication', 'The child can name the following uppercase and lowercase letters:\r\nA B C D E F G H I J K L M N O P Q R S T U V W X Y Z\r\na b c d e f g h i j k l m n o p q r s t u v w x y z', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(164, NULL, NULL, 'Language, Literacy, and Communication', 'Matches uppercase and lowercase letters (using the alphabet of the Mother Tongue)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(165, NULL, NULL, 'Language, Literacy, and Communication', 'Identifies the beginning sound of a given word', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(166, NULL, NULL, 'Language, Literacy, and Communication', 'Distinguishes words that rhyme', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(167, NULL, NULL, 'Language, Literacy, and Communication', 'Counts syllables in a given word', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(168, NULL, NULL, 'Language, Literacy, and Communication', 'Identifies parts of the book (front and back, title, author, illustrator, etc.)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(169, NULL, NULL, 'Language, Literacy, and Communication', 'Shows interest in reading by browsing through books, predicting what the story is all about and demonstrating proper book handling behavior (e.g. flip pages sequentially, browses from left to right, etc.)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(170, NULL, NULL, 'Language, Literacy, and Communication', 'Interprets information from simple pictographs, maps, and other environmental print', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(171, NULL, NULL, 'Language, Literacy, and Communication', 'Writes one\'s given name', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(172, NULL, NULL, 'Language, Literacy, and Communication', 'Writes lowercase and uppercase letters', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(173, NULL, NULL, 'Language, Literacy, and Communication', 'Expresses simple ideas through symbols (e.g. drawings, invented spelling)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(174, NULL, NULL, 'Mathematics', 'Identifies colors', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(175, NULL, NULL, 'Mathematics', 'Identifies shapes', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(176, NULL, NULL, 'Mathematics', 'Sorts objects according to shape, size, and/or color', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(177, NULL, NULL, 'Mathematics', 'Compares and arranges objects according to a specific attribute (e.g. size, length, quantity, or duration)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(178, NULL, NULL, 'Mathematics', 'Recognizes and extends patterns', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(179, NULL, NULL, 'Mathematics', 'Tells the names of days in a week', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(180, NULL, NULL, 'Mathematics', 'Tells the months of the year', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(181, NULL, NULL, 'Mathematics', 'Distinguishes the time of the day and tells time by the hour (using analog clock)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(182, NULL, NULL, 'Mathematics', 'Rote counts up to 20', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(183, NULL, NULL, 'Mathematics', 'The child can count up to: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 others:', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(184, NULL, NULL, 'Mathematics', 'The child can count up to: 1 2 3 4 5 6 7 8 9 10 others:', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(185, NULL, NULL, 'Mathematics', 'Recognize numerals up to 10', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(186, NULL, NULL, 'Mathematics', 'The child can recognize numerals up to 10: 1 2 3 4 5 6 7 8 9 10 others:', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(187, NULL, NULL, 'Mathematics', 'Writes numerals up to 10', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(188, NULL, NULL, 'Mathematics', 'The child can write numerals up to: 1 2 3 4 5 6 7 8 9 10 others:', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(189, NULL, NULL, 'Mathematics', 'Sequences numbers', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(190, NULL, NULL, 'Mathematics', 'Identify the placement of objects (e.g. 1st, 2nd, 3rd, etc.) in a given set', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(191, NULL, NULL, 'Mathematics', 'Solves simple addition problems', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(192, NULL, NULL, 'Mathematics', 'Solves simple subtraction problems', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(193, NULL, NULL, 'Mathematics', 'Groups sets of concrete objects of equal quantities up to 10 (i.e., beginning multiplication)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(194, NULL, NULL, 'Mathematics', 'Separates sets of concrete objects of equal quantities up to 10 (i.e., beginning division)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(195, NULL, NULL, 'Mathematics', 'Measures length, capacity, and mass of objects using non-standard measuring tools', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(196, NULL, NULL, 'Mathematics', 'Recognizes coins and bills (up to PhP 20)', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(197, NULL, NULL, 'Mathematics', 'The child can recognize the following coins and bills: 5 centavos, 10 centavos, 25 centavos, 1 peso, 5 pesos, 10 pesos, 20 pesos', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(198, NULL, NULL, 'Understanding the Physical and Natural Environment', 'Identifies body parts and their functions', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(199, NULL, NULL, 'Understanding the Physical and Natural Environment', 'Records observations and data with pictures, numbers and/or symbols', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(200, NULL, NULL, 'Understanding the Physical and Natural Environment', 'Identifies parts of plants and animals', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(201, NULL, NULL, 'Understanding the Physical and Natural Environment', 'Classifies animals according to shared characteristics', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(202, NULL, NULL, 'Understanding the Physical and Natural Environment', 'Describes the basic needs and ways to care for plants, animals and the environment', NULL, NULL, NULL, NULL, NULL, NULL, 200001),
(203, NULL, NULL, 'Understanding the Physical and Natural Environment', 'Identifies different kinds of weather', NULL, NULL, NULL, NULL, NULL, NULL, 200001);

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

DROP TABLE IF EXISTS `curriculum`;
CREATE TABLE IF NOT EXISTS `curriculum` (
  `curid` int(45) NOT NULL AUTO_INCREMENT,
  `curname` varchar(11) NOT NULL,
  `subjname1` text NOT NULL,
  `subjname2` text NOT NULL,
  `subjname3` text NOT NULL,
  `subjname4` text NOT NULL,
  `subjname5` text NOT NULL,
  `subjname6` text NOT NULL,
  `subjname7` text NOT NULL,
  `subjname8` text NOT NULL,
  `subjname9` text NOT NULL,
  `subjname10` text NOT NULL,
  `subjname11` text NOT NULL,
  `subjname12` text NOT NULL,
  `subjname13` text NOT NULL,
  `subjname14` text NOT NULL,
  `subjname15` text NOT NULL,
  `subjname16` text NOT NULL,
  `subjname17` text NOT NULL,
  `subjname18` text NOT NULL,
  `subjname19` text NOT NULL,
  `subjname20` text NOT NULL,
  `grade` varchar(11) NOT NULL,
  `yearid` int(11) NOT NULL,
  PRIMARY KEY (`curid`),
  KEY `idyear` (`yearid`) USING BTREE,
  KEY `curname` (`curname`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`curid`, `curname`, `subjname1`, `subjname2`, `subjname3`, `subjname4`, `subjname5`, `subjname6`, `subjname7`, `subjname8`, `subjname9`, `subjname10`, `subjname11`, `subjname12`, `subjname13`, `subjname14`, `subjname15`, `subjname16`, `subjname17`, `subjname18`, `subjname19`, `subjname20`, `grade`, `yearid`) VALUES
(19, 'K to 12', 'Word ', 'Mathethamatics', 'Reading & Phonics', 'Language', 'Science', 'Filipino', 'Music', 'Arts', 'PE', 'Writing', 'Computer', '', '', '', '', '', '', '', '', '', 'NURSERY', 15),
(20, 'K to 12', 'Word ', 'Mathethamatics', 'Reading & Phonics', 'Language', 'Science', 'Filipino', 'Music', 'Arts', 'PE', 'Writing', 'Computer', '', '', '', '', '', '', '', '', '', 'PRE-KINDER', 15),
(21, 'K to 12', 'Word ', 'Mathethamatics', 'Reading & Phonics', 'Language', 'Science', 'Filipino', 'Music', 'Arts', 'PE', 'Writing', 'Computer', '', '', '', '', '', '', '', '', '', 'KINDER', 15),
(22, 'K to 12', 'Word ', 'Mathematics ', 'Science ', 'English ', 'Filipino ', 'Araling Panlipunan ', 'Music ', 'Arts ', 'PE ', 'Health ', 'Computer ', 'Mother Tounge ', 'Edukasyon sa Pagpapakatao ', 'Technology and Livelihood Education', 'Edukasyong Pantahanan at Pangkabuhayan', '', '', '', '', '', 'GRADE 1', 15),
(23, 'K to 12', 'Word ', 'Mathematics ', 'Science ', 'English ', 'Filipino ', 'Araling Panlipunan ', 'Music ', 'Arts ', 'PE ', 'Health ', 'Computer ', 'Mother Tounge ', 'Edukasyon sa Pagpapakatao ', 'Technology and Livelihood Education', 'Edukasyong Pantahanan at Pangkabuhayan', '', '', '', '', '', 'GRADE 2', 15),
(24, 'K to 12', 'Word ', 'Mathematics ', 'Science ', 'English ', 'Filipino ', 'Araling Panlipunan ', 'Music ', 'Arts ', 'PE ', 'Health ', 'Computer ', 'Mother Tounge ', 'Edukasyon sa Pagpapakatao ', 'Technology and Livelihood Education', 'Edukasyong Pantahanan at Pangkabuhayan', '', '', '', '', '', 'GRADE 3', 15),
(25, 'K to 12', 'Word ', 'Mathematics ', 'Science ', 'English ', 'Filipino ', 'Araling Panlipunan ', 'Music ', 'Arts ', 'PE ', 'Health ', 'Computer ', 'Mother Tounge ', 'Edukasyon sa Pagpapakatao ', 'Technology and Livelihood Education', 'Edukasyong Pantahanan at Pangkabuhayan', '', '', '', '', '', 'GRADE 4', 15),
(26, 'K to 12', 'Word ', 'Mathematics ', 'Science ', 'English ', 'Filipino ', 'Araling Panlipunan ', 'Music ', 'Arts ', 'PE ', 'Health ', 'Computer ', 'Mother Tounge ', 'Edukasyon sa Pagpapakatao ', 'Technology and Livelihood Education', 'Edukasyong Pantahanan at Pangkabuhayan', '', '', '', '', '', 'GRADE 5', 15),
(27, 'K to 12', 'Word ', 'Mathematics', 'Science', 'English ', 'Filipino ', 'Araling Panlipunan ', 'Music ', 'Arts ', 'PE ', 'Health ', 'Computer ', 'Mother Tounge ', 'Edukasyon sa Pagpapakatao ', 'Technology and Livelihood Education', 'Edukasyong Pantahanan at Pangkabuhayan', '', '', '', '', '', 'GRADE 6', 15);

-- --------------------------------------------------------

--
-- Table structure for table `curstudent`
--

DROP TABLE IF EXISTS `curstudent`;
CREATE TABLE IF NOT EXISTS `curstudent` (
  `studentid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID FOR TABLE',
  `IDno` int(11) NOT NULL COMMENT 'ID OF THE STUDENT',
  `gradelvl` varchar(45) NOT NULL,
  `section` varchar(11) NOT NULL,
  `teacher` varchar(45) NOT NULL,
  `totalpayment` int(11) DEFAULT NULL,
  `dateenrolled` date NOT NULL,
  `yearid` int(11) NOT NULL,
  `enrID` int(90) NOT NULL,
  PRIMARY KEY (`studentid`),
  UNIQUE KEY `IDno_2` (`IDno`),
  KEY `gradlvl_idx` (`gradelvl`),
  KEY `yearID_idx` (`yearid`),
  KEY `enrID_idx` (`enrID`),
  KEY `IDno` (`IDno`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curstudent`
--

INSERT INTO `curstudent` (`studentid`, `IDno`, `gradelvl`, `section`, `teacher`, `totalpayment`, `dateenrolled`, `yearid`, `enrID`) VALUES
(1, 200001, 'KINDER', '1', '1', 1, '2019-11-14', 3, 1),
(9, 200009, 'KINDER', '1', '1', 1, '2019-11-19', 3, 9),
(39, 200024, 'NURSERY', '1', '1', 1, '2020-01-21', 15, 45),
(40, 200025, 'NURSERY', '1', '1', 1, '2020-01-21', 15, 46),
(41, 200026, 'NURSERY', '1', '1', 1, '2020-01-21', 15, 47),
(42, 200027, 'NURSERY', '1', '1', 1, '2020-01-21', 15, 48);

-- --------------------------------------------------------

--
-- Table structure for table `enstudent`
--

DROP TABLE IF EXISTS `enstudent`;
CREATE TABLE IF NOT EXISTS `enstudent` (
  `enid` int(90) NOT NULL AUTO_INCREMENT,
  `IDno` int(11) DEFAULT NULL,
  `GivenName` varchar(45) NOT NULL,
  `MiddleName` varchar(45) NOT NULL,
  `SurName` varchar(45) NOT NULL,
  `gradelvl` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `birthplace` varchar(45) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `homeTelnum` varchar(45) DEFAULT NULL,
  `mobilenum` varchar(45) NOT NULL,
  `studaddress` varchar(90) NOT NULL,
  `prevschoolattended` varchar(45) NOT NULL,
  `studstat` varchar(45) NOT NULL,
  `sponsor` varchar(12) DEFAULT NULL,
  `faFname` varchar(45) DEFAULT NULL,
  `falname` varchar(45) DEFAULT NULL,
  `faAdd` varchar(60) DEFAULT NULL,
  `faMobilenum` varchar(45) DEFAULT NULL,
  `faEmail` varchar(45) DEFAULT NULL,
  `faoccupation` varchar(45) NOT NULL,
  `moFname` varchar(45) DEFAULT NULL,
  `moLname` varchar(45) DEFAULT NULL,
  `moAdd` varchar(60) DEFAULT NULL,
  `momobilenum` varchar(45) DEFAULT NULL,
  `moEmail` varchar(45) DEFAULT NULL,
  `mooccupation` varchar(45) NOT NULL,
  `sibFname` varchar(60) DEFAULT NULL,
  `sibLname` varchar(60) DEFAULT NULL,
  `sibBirthdate` date DEFAULT NULL,
  `sibschoolname` varchar(45) DEFAULT NULL,
  `yearid` int(11) NOT NULL,
  `dateenrolled` date NOT NULL,
  `guardianName` varchar(45) DEFAULT NULL,
  `guardianAddress` varchar(60) DEFAULT NULL,
  `guardianContact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`enid`),
  KEY `studFname` (`GivenName`),
  KEY `studLname` (`SurName`),
  KEY `gradelvl` (`gradelvl`),
  KEY `YearID_idx` (`yearid`),
  KEY `studIDno_idx` (`IDno`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enstudent`
--

INSERT INTO `enstudent` (`enid`, `IDno`, `GivenName`, `MiddleName`, `SurName`, `gradelvl`, `birthdate`, `birthplace`, `gender`, `homeTelnum`, `mobilenum`, `studaddress`, `prevschoolattended`, `studstat`, `sponsor`, `faFname`, `falname`, `faAdd`, `faMobilenum`, `faEmail`, `faoccupation`, `moFname`, `moLname`, `moAdd`, `momobilenum`, `moEmail`, `mooccupation`, `sibFname`, `sibLname`, `sibBirthdate`, `sibschoolname`, `yearid`, `dateenrolled`, `guardianName`, `guardianAddress`, `guardianContact`) VALUES
(1, 200001, 'PAUL CHRISTIAN', 'SANGGA', 'PEREZ', 'KINDER', '2020-12-11', 'BAGUIO CITY', 'Male', '', '', 'SAN LUIS, BAGUIO CITY', '', 'Enrolled', NULL, 'PAUL', 'PEREZ', 'SAN LUIS, BAGUIO CITY', '09123456789', '', 'ENGINEER', 'MARIA', 'SANGA', '', '', '', '', NULL, NULL, NULL, NULL, 15, '2019-11-14', 'MAHMOOD IMRAN D', '', ''),
(2, 200002, 'ANJELLA', 'TAYUBA', 'BUAN', 'GRADE 1', '2020-12-12', 'BAGUIO CITY', 'Male', '', '09203662849', 'IRISAN, BAGUIO CITY', '', 'Enrolled', NULL, 'ROGER', 'TAYUBA', 'IRISAN, BAGUIO CITY', '09391212196', '', '', 'GRACE', 'BUAN', 'IRISAN, BAGUIO CITY', '09203662844', '', 'HOUSE KEEPER', NULL, NULL, NULL, NULL, 15, '2019-11-19', '', '', ''),
(3, 200003, 'CHYRIS DUALIE', 'ANGAWA', 'DANG-AY', 'GRADE 1', '2020-12-12', 'BAGUIO CITY', 'Female', '', '09999198540', '# 290-D PRK-14-A CYPRESS, IRISAN, BAGUIO CITY', 'PATILONG ELEM. SCHOOL', 'Enrolled', NULL, 'MORRIS', 'DANG-AY', '# 290-D PRK-14-A CYPRESS, IRISAN, BAGUIO CITY', '09128889125', '', 'NURSE', 'CHERRY LOU', 'DANG-AY', '#290-D PRK. 14-A CYPRESS, IRISAN, BAGUIO CITY', '09999198540', '', '', 'OZZY CLYDE', 'DANG-AY', '2005-05-15', 'INHS', 15, '2019-11-19', ' ', ' ', ' '),
(4, 200004, 'NATALIE HYMES', 'BAGANO', 'MARZAN', 'GRADE 1', '2020-12-12', 'BENGUET GEN, LA TRINIDAD', 'Female', '', '09999032717', '#32 PUROK 15, BALBOA, IRISAN, BAGUIO CITY', 'LECA', 'Enrolled', NULL, 'ANDRES', 'MARZAN JR.', '#32 PUROK 15, BALBOA, IRISAN, BAGUIO CITY', '', '', 'TAXI DRIVER', 'EVA', 'BAGANO', '#32 PUROK 15, BALBOA, IRISAN, BAGUIO CITY', '', '', '', NULL, NULL, NULL, NULL, 15, '2019-11-19', 'JULIET CAPUYAN MARZAN', '#32 PUROK 15, BALBOA, IRISAN, BAGUIO CITY', '09999032717'),
(5, 200005, 'LUZTY LANCE', 'MAYOS', 'BIASCA', 'GRADE 1', '2020-12-12', 'BAGUIO CITY', 'Male', '244-7011', '', '01-A, PUROK 18, NAGOYA, IRISAN, BAGUIO CITY', 'EASTER COLLEGE', 'Enrolled', NULL, 'LUISITO', 'BIASCA', '01-A, PUROK 18, NAGOYA, IRISAN, BAGUIO CITY', '09998548911', '', 'BUSINESSMAN', 'ANA MAE', 'MAYOS', '01-A, PUROK 18, NAGOYA, IRISAN, BAGUIO CITY', '09465323005 / 09299717800', '', 'BUSINESSWOMAN', 'ZALOY EMMANUEL', 'BIASCA', '2012-12-30', 'PNHS', 15, '2019-11-19', '', '', ''),
(6, 200006, 'LIL CIANNE', 'VENTURA', 'BIORE', 'GRADE 1', '2020-12-12', 'BAGUIO CITY', 'Female', '', '09129205286', '#114 PUROK 13, CYPRESS POINT, IRISAN, BAGUIO CITY', 'BAGUIO CENTRAL SCHOOL', 'Enrolled', NULL, '', '', '#114 PUROK 13, CYPRESS POINT, IRISAN, BAGUIO CITY', '', '', '', 'CHRESS AN', 'VENTURA', '#114 PUROK 13, CYPRESS POINT, IRISAN, BAGUIO CITY', '09129205286', '', 'SALES ASSOCIATE', NULL, NULL, NULL, NULL, 15, '2019-11-19', 'CRISPIN M. VENTURA', '#114 PUROK 13, CYPRESS POINT, IRISAN, BAGUIO CITY', '09296884634'),
(7, 200007, 'LJ CELINA', 'PAGADOR', 'TIONGO', 'GRADE 1', '2020-12-12', 'BAGUIO CITY', 'Female', '', '09504565950', '#84-B ALLMAES CMPD, IRISAN, BAGUIO CITY', 'CYPRESS CHRISTIAN FOUNDATION SCHOOL', 'Enrolled', NULL, 'B-JAY', 'TIONGO', '#84-B ALLMAES CMPD, IRISAN, BAGUIO CITY', '09082455013', 'B-JAYTIONGO@YAHOO.COM', 'LENDING COLLECTOR', 'JOSEBEN', 'TIONGCO', '#84-B ALLMAES CMPD, IRISAN, BAGUIO CITY', '09504565950', '', 'HOUSEWIFE', NULL, NULL, NULL, NULL, 15, '2019-11-19', ' ', ' ', ' '),
(8, 200008, 'GHABRIEL ACE', 'SANCHEZ', 'PALOMO', 'GRADE 1', '2020-12-12', 'LA TRINIDAD', 'Male', '', '', '#98 AGRO STREET, SAINT JOSEPH VILLAGE, IRISAN, BAGUIO CITY', 'BAGUIO CENTRAL SCHOOL', 'Enrolled', NULL, 'CONSTANTINE', 'PALOMO', '#98 AGRO STREET, SAINT JOSEPH VILLAGE, IRISAN, BAGUIO CITY', '09458150893', 'CONSPALOMO3378@GMAIL.COM', '', 'HEMMINGWAY', 'PALOMO', '#98 AGRO STREET, SAINT JOSEPH VILLAGE, IRISAN, BAGUIO CITY', '09308619368', '', 'HOUSEWIFE', NULL, NULL, NULL, NULL, 15, '2019-11-19', ' ', ' ', ' '),
(9, 200009, 'RIDDICK LAURENCE', 'DOCYOSEN', 'VIERNES', 'NURSERY', '2020-12-12', 'KIN-IWAY, BESAO', 'Male', '', '', '#20 PUROK 17, IRISAN, BAGUIO CITY', 'ICLC', 'Enrolled', NULL, 'JAYSON', 'VIERNES', '#20 PUROK 17, IRISAN, BAGUIO CITY', '', '', 'LABORER', 'JOEYLYN', 'VIERNES', '#20 PUROK 17, IRISAN, BAGUIO CITY', '09088611220', '', 'HOUSEWIFE', NULL, NULL, NULL, NULL, 15, '2019-11-19', ' ', ' ', ' '),
(10, 200010, 'ASHLYNE ZYNHEL', 'BLAZA', 'CASTRO', 'GRADE 1', '2020-12-12', 'BGH BAGUIO', 'Female', '', '09553854056', 'PUROK 15, AGROO, IRISAN, BAGUIO CITY', 'ELPEDIO QUIRINO ELEM SCH', 'Enrolled', NULL, 'ALLAN', 'CASTRO', 'PUROK 15, AGROO, IRISAN, BAGUIO CITY', '', '', 'VENDOR', 'JAYNALYN', 'BLAZA', 'PUROK 15, AGROO, IRISAN, BAGUIO CITY', '09553854056', '', 'HOUSEWIFE', 'ALJHAY', 'CASTRO', '2012-05-12', 'CCFS', 15, '2019-11-19', ' ', ' ', ' '),
(11, 200011, 'XERR JHAKE', 'DUMAPIS', 'BANTIAN', 'GRADE 1', '2020-12-12', 'BEGH', 'Male', '', '09074243658 / 09266474312', 'PUROK 6, APUGAN, IRISAN, BAGUIO CITY', 'UCAB ELEMENTARY SCHOOL', 'Enrolled', NULL, 'JESSIE', 'BANTIAN', 'PUROK 6, APUGAN, IRISAN, BAGUIO CITY', '09196901341', '', 'POLICE OFFICER', 'JENNIFER', 'BANTIAN', 'PUROK 6, APUGAN, IRISAN, BAGUIO CITY', '09074243658', 'JENNIFER.BANTIAN@YAHOO.COM', '', NULL, '', NULL, NULL, 15, '2019-11-19', ' ', ' ', ' '),
(38, 200023, 'SEAN', 'PANO', 'INAHAO', 'NURSERY', '2020-12-12', 'BAGUIO CITY', 'Male', '442-1383', '09137184916', 'PHASE 1, BAKAKENG BAGUIO CITY', 'CYPRESS CHRISTIAN FOUNDATION SCHOOL', 'Enrolled', '', 'FERNANDO', 'INAHAO', 'PHASE 1, BAKAKENG BAGUIO CITY', '09384917481', 'FERNANDO72@YAHOO.COM', 'ENGINEER', 'NATASHA', 'INAHAO', 'PHASE 1, BAKAKENG BAGUIO CITY', '093837183818', 'NATASHA72@YAHOO.COM', 'NURSE', NULL, NULL, NULL, NULL, 15, '2020-01-21', 'MARIO', 'PHASE 1, BAKAKENG BAGUIO CITY', '09384184181'),
(45, 200024, 'IVAN', 'HANDO', 'IGNACIO', 'NURSERY', '2020-12-12', 'BAGUIO CITY', 'Male', '441-3914', '09381948192', 'PHASE 2, BAKAKENG BAGUIO CITY', 'CYPRESS CHRISTIAN FOUNDATION SCHOOL', 'Enrolled', '', 'AGUILAR', 'IGNACIO', 'PHASE 2, BAKAKENG BAGUIO CITY', '093719197131', 'AGUILAR03@YAHOO.COM', 'MECHANICAL ENGINEER', 'NIKKI', 'IGNACIO', 'PHASE 1, BAKAKENG BAGUIO CITY', '093713819128', 'NIKKI03@YAHOO.COM', 'HOUSEWIFE', NULL, NULL, NULL, NULL, 15, '2020-01-21', 'DONALD IGNACIO', 'PHASE 1, BAKAKENG BAGUIO CITY', '09124884929'),
(46, 200025, 'LEONARD', 'PUGYAO', 'BERNARDO', 'NURSERY', '2020-12-12', 'PASIG CITY', 'Male', '420-2010', '09384818481', 'ITOGON BENGUET', 'CYPRESS CHRISTIAN FOUNDATION SCHOOL', 'Enrolled', '', 'JOMARI', 'BERNARDO', 'ITOGON BENGUET', '0988817273', 'JOMARIBER@YAHOO.COM', 'CHEF', 'ABIGAIL', 'BERNARDO', 'ITOGON BENGUET', '09391838188', 'ABIGAIL98@GMAIL.COM', 'TEACHER', NULL, NULL, NULL, NULL, 15, '2020-01-21', 'SEAN AGUILAR', 'ITOGON BENGUET', '09381838181'),
(47, 200026, 'DONALD', 'JENNICAL', 'MAPILE', 'NURSERY', '2020-12-12', 'CEBU CITY', 'Male', '445-3919', '0938183888', 'ENGINEERS HILL, BAGUIO CITY', 'CYPRESS CHRISTIAN FOUNDATION SCHOOL', 'Enrolled', '', 'DOLOR', 'MAPILE', 'ENGINEERS HILL, BAGUIO CITY', '09888311312', 'DOLORMAPS@GMAIL.COM', 'PROFESSOR', 'JENNELYN', 'MAPILE', 'ENGINEERS HILL, BAGUIO CITY', '091828181818', 'JENMAPS@GMAIL.COM', 'NURSE', NULL, NULL, NULL, NULL, 15, '2020-01-21', 'PAUL MAPILE', 'ENGINEERS HILL, BAGUIO CITY', '09283838991'),
(48, 200027, 'CHAD', 'DONOR', 'BALLESTEROS', 'NURSERY', '2020-12-12', 'BAGUIO CITY', 'Male', '446-3919', '09281818373', 'SANLUIS, VILLAGE BAGUIO CITY', 'CYPRESS CHRISTIAN FOUNDATION SCHOOL', 'Enrolled', '', 'CHRISTIAN', 'BALLESTEROS', 'SANLUIS, VILLAGE BAGUIO CITY', '09381938187', 'CHS01@GMAIL.COM', 'ELECTRICAL ENGINEER', 'STEPHANIE', 'BALLESTEROS', 'SANLUIS, VILLAGE BAGUIO CITY', '09123878137', 'STEPH01@GMAIL.COM', 'TEACHER', NULL, NULL, NULL, NULL, 15, '2020-01-21', 'ISIDRO BALLESTEROS', 'SANLUIS, VILLAGE BAGUIO CITY', '091838183818');

--
-- Triggers `enstudent`
--
DROP TRIGGER IF EXISTS `Insert into curstudent`;
DELIMITER $$
CREATE TRIGGER `Insert into curstudent` AFTER INSERT ON `enstudent` FOR EACH ROW INSERT INTO `curstudent` VALUES(NULL,NEW.IDno,NEW.gradelvl,"1","1","1",NEW.dateenrolled,NEW.yearid,NEW.enid)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `feestudent`
--

DROP TABLE IF EXISTS `feestudent`;
CREATE TABLE IF NOT EXISTS `feestudent` (
  `feestID` int(40) NOT NULL AUTO_INCREMENT,
  `books` double NOT NULL,
  `misc` double NOT NULL,
  `tuition` double NOT NULL,
  `service` double DEFAULT NULL,
  `balance` int(11) NOT NULL,
  `IDno` int(11) NOT NULL,
  `yearid` int(11) NOT NULL,
  `surcharge` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`feestID`),
  KEY `estudyID` (`IDno`),
  KEY `theyear_idx` (`yearid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feestudent`
--

INSERT INTO `feestudent` (`feestID`, `books`, `misc`, `tuition`, `service`, `balance`, `IDno`, `yearid`, `surcharge`) VALUES
(2, 1000, 1000, 4000, 1000, 5200, 200024, 15, 0),
(3, 1000, 1000, 4000, 1000, 700, 200025, 15, 0),
(4, 1000, 1000, 4000, 1000, 0, 200002, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `gradeid` int(11) NOT NULL AUTO_INCREMENT,
  `subjID` int(90) NOT NULL,
  `sename` varchar(11) NOT NULL,
  `firstquartergrade` int(11) DEFAULT NULL,
  `secondquartergrade` int(11) DEFAULT NULL,
  `thirdquartergrade` int(11) DEFAULT NULL,
  `fourthquartergrade` int(11) DEFAULT NULL,
  `finalgrade` int(11) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `IDno` int(11) NOT NULL,
  `yearid` int(11) NOT NULL,
  PRIMARY KEY (`gradeid`),
  KEY `studid_idx` (`IDno`),
  KEY `suID` (`subjID`),
  KEY `yid` (`yearid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`gradeid`, `subjID`, `sename`, `firstquartergrade`, `secondquartergrade`, `thirdquartergrade`, `fourthquartergrade`, `finalgrade`, `remarks`, `IDno`, `yearid`) VALUES
(1, 60, 'BETA', 80, 80, 80, 80, 80, 'PASSED', 200001, 15),
(2, 61, 'BETA', NULL, NULL, NULL, NULL, NULL, NULL, 200001, 15),
(3, 62, 'BETA', NULL, NULL, NULL, NULL, NULL, NULL, 200001, 15),
(4, 63, 'BETA', NULL, NULL, NULL, NULL, NULL, NULL, 200001, 15),
(68, 60, 'BETA', NULL, NULL, NULL, NULL, NULL, NULL, 200009, 15),
(69, 61, 'BETA', NULL, NULL, NULL, NULL, NULL, NULL, 200009, 15),
(70, 62, 'BETA', NULL, NULL, NULL, NULL, NULL, NULL, 200009, 15),
(71, 63, 'BETA', NULL, NULL, NULL, NULL, NULL, NULL, 200009, 15);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payid` int(11) NOT NULL,
  `payname` varchar(45) DEFAULT NULL,
  `payamount` float DEFAULT NULL,
  `paydate` date DEFAULT NULL,
  `feestID` int(40) DEFAULT NULL,
  PRIMARY KEY (`payid`),
  UNIQUE KEY `feestID` (`feestID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schoolfees`
--

DROP TABLE IF EXISTS `schoolfees`;
CREATE TABLE IF NOT EXISTS `schoolfees` (
  `scfeeid` int(40) NOT NULL AUTO_INCREMENT,
  `totalfee` double NOT NULL,
  `preschoolFee` double NOT NULL,
  `yearid` int(11) NOT NULL,
  PRIMARY KEY (`scfeeid`),
  UNIQUE KEY `yearid` (`yearid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schoolyear`
--

DROP TABLE IF EXISTS `schoolyear`;
CREATE TABLE IF NOT EXISTS `schoolyear` (
  `yearid` int(11) NOT NULL AUTO_INCREMENT,
  `yearstart` int(10) NOT NULL,
  `yearend` int(10) NOT NULL,
  `janAtt` float NOT NULL,
  `febAtt` float NOT NULL,
  `marAtt` float NOT NULL,
  `aprAtt` float NOT NULL,
  `mayAtt` float NOT NULL,
  `junAtt` float NOT NULL,
  `julAtt` float NOT NULL,
  `augAtt` float NOT NULL,
  `sepAtt` float NOT NULL,
  `octAtt` float NOT NULL,
  `novAtt` float NOT NULL,
  `decAtt` float NOT NULL,
  `dateStart` date DEFAULT NULL,
  `dateEnd` date DEFAULT NULL,
  `pretui1` float DEFAULT NULL,
  `premisc1` float DEFAULT NULL,
  `prebook1` float DEFAULT NULL,
  `pretui2` float DEFAULT NULL,
  `premisc2` float DEFAULT NULL,
  `prebook2` float DEFAULT NULL,
  `pretui3` float NOT NULL,
  `premisc3` float NOT NULL,
  `prebook3` float NOT NULL,
  `gradetui1` float DEFAULT NULL,
  `gradebook1` float DEFAULT NULL,
  `grademisc1` float DEFAULT NULL,
  `gradetui2` float DEFAULT NULL,
  `grademisc2` float DEFAULT NULL,
  `gradebook2` float DEFAULT NULL,
  `gradetui3` float DEFAULT NULL,
  `grademisc3` float DEFAULT NULL,
  `gradebook3` float DEFAULT NULL,
  `gradetui4` float DEFAULT NULL,
  `grademisc4` float DEFAULT NULL,
  `gradebook4` float DEFAULT NULL,
  `gradetui5` float DEFAULT NULL,
  `grademisc5` float DEFAULT NULL,
  `gradebook5` float DEFAULT NULL,
  `gradetui6` float DEFAULT NULL,
  `grademisc6` float DEFAULT NULL,
  `gradebook6` float DEFAULT NULL,
  `scfee` float DEFAULT NULL,
  `scstatus` varchar(10) DEFAULT 'INACTIVE',
  PRIMARY KEY (`yearid`),
  KEY `yearstart` (`yearstart`),
  KEY `yearend` (`yearend`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolyear`
--

INSERT INTO `schoolyear` (`yearid`, `yearstart`, `yearend`, `janAtt`, `febAtt`, `marAtt`, `aprAtt`, `mayAtt`, `junAtt`, `julAtt`, `augAtt`, `sepAtt`, `octAtt`, `novAtt`, `decAtt`, `dateStart`, `dateEnd`, `pretui1`, `premisc1`, `prebook1`, `pretui2`, `premisc2`, `prebook2`, `pretui3`, `premisc3`, `prebook3`, `gradetui1`, `gradebook1`, `grademisc1`, `gradetui2`, `grademisc2`, `gradebook2`, `gradetui3`, `grademisc3`, `gradebook3`, `gradetui4`, `grademisc4`, `gradebook4`, `gradetui5`, `grademisc5`, `gradebook5`, `gradetui6`, `grademisc6`, `gradebook6`, `scfee`, `scstatus`) VALUES
(15, 2020, 2021, 20, 20, 20, 10, 0, 15, 20, 20, 20, 20, 20, 15, '2020-06-08', '2021-04-15', 10888.7, 2095, 3600, 10888.7, 2095, 3600, 10888.7, 3600, 2095, 10888.7, 3900, 2095, 10888.7, 2095, 3900, 10888.7, 2095, 3900, 10888.7, 2095, 3900, 10888.7, 2095, 3900, 10888.7, 2095, 3900, NULL, 'ACTIVE'),
(16, 2019, 2020, 20, 20, 20, 10, 0, 15, 20, 20, 20, 20, 20, 15, '2019-06-10', '2020-04-13', 10888.7, 2095, 3600, 10888.7, 2095, 3600, 10888.7, 3600, 2095, 10888.7, 3900, 2095, 10888.7, 2095, 3900, 10888.7, 2095, 3900, 10888.7, 2095, 3900, 10888.7, 2095, 3900, 10888.7, 2095, 3900, NULL, 'INACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `secID` int(11) NOT NULL AUTO_INCREMENT,
  `sename` varchar(10) NOT NULL,
  `gradelvl` text NOT NULL,
  `adviserlname` varchar(40) NOT NULL,
  `yearid` int(11) NOT NULL,
  PRIMARY KEY (`secID`),
  KEY `yearid` (`yearid`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`secID`, `sename`, `gradelvl`, `adviserlname`, `yearid`) VALUES
(46, 'ALEPH', 'NURSERY', 'CARINIO ESTEBAN', 15),
(47, 'ALPHA', 'PRE-KINDER', 'JOMARI MARSAN', 15),
(48, 'BETA', 'KINDER', 'ADAM ARYOLA', 15),
(49, 'GAMMA', 'GRADE 1', 'MARIO DEGUZMAN', 15),
(51, 'DELTA', 'GRADE 2', 'KIM ABALOS', 15),
(52, 'EPSILON', 'GRADE 3', 'MAY PUGADO', 15),
(54, 'ETA', 'GRADE 5', 'LAURENCE SORIANO', 15),
(55, 'THETA', 'GRADE 6', 'STEPHANIE ERNON', 15),
(56, 'BONA', 'GRADE 4', 'TRACIE HORN', 15);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subjID` int(90) NOT NULL AUTO_INCREMENT,
  `subname` varchar(12) NOT NULL,
  `adviserLname` varchar(30) NOT NULL,
  `yearid` int(11) NOT NULL,
  PRIMARY KEY (`subjID`),
  KEY `yeaid` (`yearid`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjID`, `subname`, `adviserLname`, `yearid`) VALUES
(1, 'Math-1', 'Perez', 15),
(2, 'English-1', 'Portacio', 15),
(3, 'Filipino-1', 'Boyoten', 15),
(5, 'Mape-1', 'Galang', 15),
(6, 'Computer-1', 'Turacao', 15),
(7, 'Word-1', 'Turao', 15),
(8, 'Writing-1', 'Lagarde', 15),
(9, 'Reading-1', 'Piog', 15),
(10, 'Science-1', 'Flores', 15),
(11, 'Math-2', 'Perez', 15),
(12, 'English-2', 'Portacio', 15),
(13, 'Filipino-2', 'Boyoten', 15),
(14, 'Mape-2', 'Galang', 15),
(15, 'Computer-2', 'Turacao', 15),
(16, 'Word-2', 'Turao', 15),
(17, 'Writing-2', 'Lagarde', 15),
(18, 'Reading-2', 'Piog', 15),
(19, 'Science-2', 'Flores', 15),
(20, 'Math-3', 'Perez', 15),
(21, 'English-3', 'Portacio', 15),
(22, 'Filipino-3', 'Boyoten', 15),
(23, 'Mape-3', 'Galang', 15),
(24, 'Computer-3', 'Turacao', 15),
(25, 'Word-3', 'Turao', 15),
(26, 'Writing-3', 'Lagarde', 15),
(27, 'Reading-3', 'Piog', 15),
(28, 'Science-3', 'Flores', 15),
(29, 'Math-4', 'Perez', 15),
(30, 'English-4', 'Portacio', 15),
(31, 'Filipino-4', 'Boyoten', 15),
(32, 'Mape-4', 'Galang', 15),
(33, 'Computer-4', 'Turacao', 15),
(34, 'Word-4', 'Turao', 15),
(35, 'Writing-4', 'Lagarde', 15),
(36, 'Reading-4', 'Piog', 15),
(37, 'Science-4', 'Flores', 15),
(38, 'Math-5', 'Perez', 15),
(39, 'English-5', 'Portacio', 15),
(40, 'Filipino-5', 'Boyoten', 15),
(41, 'Mape-5', 'Galang', 15),
(42, 'Computer-5', 'Turacao', 15),
(43, 'Word-5', 'Turao', 15),
(44, 'Writing-4', 'Lagarde', 15),
(45, 'Reading-5', 'Piog', 15),
(46, 'Science-5', 'Flores', 15),
(47, 'Math-6', 'Perez', 15),
(48, 'English-6', 'Portacio', 15),
(49, 'Filipino-6', 'Boyoten', 15),
(50, 'Mape-6', 'Galang', 15),
(51, 'Computer-6', 'Turacao', 15),
(52, 'Word-6', 'Turao', 15),
(53, 'Writing-6', 'Lagarde', 15),
(54, 'Reading-6', 'Piog', 15),
(55, 'Science-6', 'Flores', 15),
(56, 'Writing-N', 'Lagarde', 15),
(57, 'Reading-N', 'Piog', 15),
(58, 'Writing-Pk', 'Lagarde', 15),
(59, 'Reading-Pk', 'Piog', 15),
(60, 'Math-K', 'Perez', 15),
(61, 'Word-K', 'Turao', 15),
(62, 'Writing-K', 'Lagarde', 15),
(63, 'Reading-K', 'Piog', 15);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checklist`
--
ALTER TABLE `checklist`
  ADD CONSTRAINT `idnumber` FOREIGN KEY (`IDno`) REFERENCES `curstudent` (`IDno`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
