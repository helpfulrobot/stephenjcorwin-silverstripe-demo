-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 14, 2016 at 04:13 AM
-- Server version: 5.5.41-log
-- PHP Version: 5.6.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ss_demonstration`
--

-- --------------------------------------------------------

--
-- Table structure for table `angulardirective`
--

CREATE TABLE IF NOT EXISTS `angulardirective` (
`ID` int(11) NOT NULL,
  `ClassName` enum('AngularDirective','PdfViewerDirective','ToggleDirective') CHARACTER SET utf8 DEFAULT 'AngularDirective',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` mediumtext CHARACTER SET utf8,
  `PageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `angulardirective`
--

INSERT INTO `angulardirective` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `PageID`) VALUES
(1, 'ToggleDirective', '2016-03-21 16:25:17', '2016-03-21 15:45:20', 'Example Toggle Directive', 19),
(2, 'PdfViewerDirective', '2016-03-21 16:38:50', '2016-03-21 16:38:50', 'Example PDF Viewer', 19);

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE IF NOT EXISTS `color` (
`ID` int(11) NOT NULL,
  `Name` mediumtext CHARACTER SET utf8,
  `Value` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`ID`, `Name`, `Value`) VALUES
(1, 'Transparent', 'transparent'),
(2, 'Black', '#222222'),
(3, 'Black Moderate Transparent', 'rgba(0,0,0,0.5)'),
(4, 'White', '#FFFFFF'),
(5, 'Gray', '#888888'),
(6, 'Gray Light', '#DDDDDD'),
(7, 'Gray Lightest', '#EEEEEE'),
(8, 'Red', '#E61946'),
(9, 'Green', '#3CB46E'),
(10, 'Blue', '#0082C8'),
(11, 'Yellow', '#FFD700'),
(12, 'Orange', '#F56E23'),
(13, 'Sand', '#F0EBE6'),
(14, 'Purple', '#5F1EB4'),
(15, 'Facebook', '#3B5998'),
(16, 'Twitter', '#00ACEE'),
(17, 'YouTube', '#C4302B'),
(18, 'LinkedIn', '#0E76A8'),
(19, 'Behance', '#053EFF'),
(20, 'Sound Cloud', '#FF7700'),
(21, 'GitHub', '#3B5998'),
(22, 'Instagram', '#3F729B'),
(23, 'Dribbble', '#EA4C89');

-- --------------------------------------------------------

--
-- Table structure for table `dp_controlleractionspage`
--

CREATE TABLE IF NOT EXISTS `dp_controlleractionspage` (
`ID` int(11) NOT NULL,
  `FirstName` mediumtext CHARACTER SET utf8,
  `LastName` mediumtext CHARACTER SET utf8,
  `Greeting` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `dp_controlleractionspage`
--

INSERT INTO `dp_controlleractionspage` (`ID`, `FirstName`, `LastName`, `Greeting`) VALUES
(15, 'Jason', 'Smith', 'What''s Up!');

-- --------------------------------------------------------

--
-- Table structure for table `dp_controlleractionspage_live`
--

CREATE TABLE IF NOT EXISTS `dp_controlleractionspage_live` (
`ID` int(11) NOT NULL,
  `FirstName` mediumtext CHARACTER SET utf8,
  `LastName` mediumtext CHARACTER SET utf8,
  `Greeting` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `dp_controlleractionspage_live`
--

INSERT INTO `dp_controlleractionspage_live` (`ID`, `FirstName`, `LastName`, `Greeting`) VALUES
(15, 'Melissa', 'Hughes', 'Hello World!');

-- --------------------------------------------------------

--
-- Table structure for table `dp_controlleractionspage_versions`
--

CREATE TABLE IF NOT EXISTS `dp_controlleractionspage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `FirstName` mediumtext CHARACTER SET utf8,
  `LastName` mediumtext CHARACTER SET utf8,
  `Greeting` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `dp_controlleractionspage_versions`
--

INSERT INTO `dp_controlleractionspage_versions` (`ID`, `RecordID`, `Version`, `FirstName`, `LastName`, `Greeting`) VALUES
(1, 15, 4, 'John', 'Smith', 'Hello World!'),
(2, 15, 5, 'test', 'Smith', 'Hello World!'),
(3, 15, 6, 'test', 'Smith', 'Hello World!'),
(4, 15, 7, 'Melissa', 'Smith', 'Hello World!'),
(5, 15, 8, 'Melissa', 'Smith', 'Hello World!'),
(6, 15, 9, 'Melissa2', 'Smith', 'Hello World!'),
(7, 15, 10, 'Melissa', 'Smith', 'Hello World!'),
(8, 15, 11, 'Melissa', 'Test', 'Hello World!'),
(9, 15, 12, 'Test', 'Test', 'Hello World!'),
(10, 15, 13, 'Stephen', 'Corwin', 'test'),
(11, 15, 14, 'Stephen', 'Corwin', 'test'),
(12, 15, 15, 'Stephen', 'Corwin', 'What''s Up!'),
(13, 15, 16, 'Melissa', 'SOmething', 'Hey!'),
(14, 15, 17, 'Melissa', 'SOmething', 'Hey!'),
(15, 15, 18, 'Stephen', 'Corwin', 'Hello'),
(16, 15, 19, 'Stephen', 'Corwin', 'Hello'),
(17, 15, 20, 'Stephen', 'Corwin', 'Hello!'),
(18, 15, 21, 'Stephen', 'Corwin', 'Hello!'),
(19, 15, 22, 'Stephen', 'Corwin', 'Hello!'),
(20, 15, 23, 'Stephen', 'Corwin', 'Hello!'),
(21, 15, 24, 'Stephen', 'Corwin', 'Hello!'),
(22, 15, 25, 'Stephen', 'Corwin', 'Hello'),
(23, 15, 26, 'Stephen', 'Corwin', 'Hello'),
(24, 15, 27, 'Stephen', 'Corwin', 'Hello'),
(25, 15, 28, 'Stephen', 'Corwin', 'Hello'),
(26, 15, 29, 'Sandra', 'Something', 'What''s Up!'),
(27, 15, 30, 'John', 'Smith', 'Hello World!'),
(28, 15, 31, 'John', 'Smith', 'Hello World!'),
(29, 15, 32, 'John', 'Smith', 'Hello World!'),
(30, 15, 33, 'John', 'Smith test', 'Hello World!'),
(31, 15, 34, 'John', 'Smith', 'Hello World!'),
(32, 15, 35, 'John', 'Smith', 'Hello World!'),
(33, 15, 36, 'Melissa', 'Hughes', 'Hello World!'),
(34, 15, 37, 'Jason', 'Smith', 'What''s Up!'),
(35, 15, 38, 'Jason', 'Smith', 'What''s Up!');

-- --------------------------------------------------------

--
-- Table structure for table `dp_datamodelchildpage`
--

CREATE TABLE IF NOT EXISTS `dp_datamodelchildpage` (
`ID` int(11) NOT NULL,
  `ActiveItemID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dp_datamodelchildpage`
--

INSERT INTO `dp_datamodelchildpage` (`ID`, `ActiveItemID`) VALUES
(12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `dp_datamodelchildpage_live`
--

CREATE TABLE IF NOT EXISTS `dp_datamodelchildpage_live` (
`ID` int(11) NOT NULL,
  `ActiveItemID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dp_datamodelchildpage_live`
--

INSERT INTO `dp_datamodelchildpage_live` (`ID`, `ActiveItemID`) VALUES
(12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `dp_datamodelchildpage_versions`
--

CREATE TABLE IF NOT EXISTS `dp_datamodelchildpage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ActiveItemID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dp_datamodelchildpage_versions`
--

INSERT INTO `dp_datamodelchildpage_versions` (`ID`, `RecordID`, `Version`, `ActiveItemID`) VALUES
(1, 12, 6, 13),
(2, 12, 7, 13),
(3, 12, 8, 13),
(4, 12, 9, 13),
(5, 12, 10, 13);

-- --------------------------------------------------------

--
-- Table structure for table `dp_datamodeldynamicpage`
--

CREATE TABLE IF NOT EXISTS `dp_datamodeldynamicpage` (
`ID` int(11) NOT NULL,
  `FirstName` mediumtext CHARACTER SET utf8,
  `LastName` mediumtext CHARACTER SET utf8,
  `Greeting` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `dp_datamodeldynamicpage`
--

INSERT INTO `dp_datamodeldynamicpage` (`ID`, `FirstName`, `LastName`, `Greeting`) VALUES
(13, 'John', 'Smith', 'Hello World!');

-- --------------------------------------------------------

--
-- Table structure for table `dp_datamodeldynamicpage_live`
--

CREATE TABLE IF NOT EXISTS `dp_datamodeldynamicpage_live` (
`ID` int(11) NOT NULL,
  `FirstName` mediumtext CHARACTER SET utf8,
  `LastName` mediumtext CHARACTER SET utf8,
  `Greeting` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `dp_datamodeldynamicpage_live`
--

INSERT INTO `dp_datamodeldynamicpage_live` (`ID`, `FirstName`, `LastName`, `Greeting`) VALUES
(13, 'John', 'Smith', 'Hello World!');

-- --------------------------------------------------------

--
-- Table structure for table `dp_datamodeldynamicpage_versions`
--

CREATE TABLE IF NOT EXISTS `dp_datamodeldynamicpage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `FirstName` mediumtext CHARACTER SET utf8,
  `LastName` mediumtext CHARACTER SET utf8,
  `Greeting` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dp_datamodeldynamicpage_versions`
--

INSERT INTO `dp_datamodeldynamicpage_versions` (`ID`, `RecordID`, `Version`, `FirstName`, `LastName`, `Greeting`) VALUES
(1, 13, 3, NULL, NULL, NULL),
(2, 13, 4, 'John', 'Smith', 'Hello World!'),
(3, 13, 5, 'John', 'Smith', 'Hello World!'),
(4, 13, 6, 'John', 'Smith', 'Hello World!'),
(5, 13, 7, 'John', 'Smith', 'Hello World!'),
(6, 13, 8, 'John', 'Smith', 'Hello World!'),
(7, 13, 9, 'John', 'Smith', 'Hello World!'),
(8, 13, 10, 'John', 'Smith', 'Hello World!'),
(9, 13, 11, 'John', 'Smith', 'Hello World!');

-- --------------------------------------------------------

--
-- Table structure for table `dp_datamodelpage`
--

CREATE TABLE IF NOT EXISTS `dp_datamodelpage` (
`ID` int(11) NOT NULL,
  `ActiveItemID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dp_datamodelpage`
--

INSERT INTO `dp_datamodelpage` (`ID`, `ActiveItemID`) VALUES
(11, 3),
(12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `dp_datamodelpage_live`
--

CREATE TABLE IF NOT EXISTS `dp_datamodelpage_live` (
`ID` int(11) NOT NULL,
  `ActiveItemID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dp_datamodelpage_live`
--

INSERT INTO `dp_datamodelpage_live` (`ID`, `ActiveItemID`) VALUES
(11, 3),
(12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `dp_datamodelpage_versions`
--

CREATE TABLE IF NOT EXISTS `dp_datamodelpage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ActiveItemID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dp_datamodelpage_versions`
--

INSERT INTO `dp_datamodelpage_versions` (`ID`, `RecordID`, `Version`, `ActiveItemID`) VALUES
(1, 11, 3, 0),
(2, 11, 4, 1),
(3, 11, 5, 1),
(4, 12, 4, 0),
(5, 12, 5, 0),
(6, 11, 6, 3),
(7, 12, 6, 13),
(8, 12, 7, 13),
(9, 12, 8, 13),
(10, 11, 7, 3),
(11, 12, 9, 13),
(12, 12, 10, 13);

-- --------------------------------------------------------

--
-- Table structure for table `dp_image_setwidthpage`
--

CREATE TABLE IF NOT EXISTS `dp_image_setwidthpage` (
`ID` int(11) NOT NULL,
  `Width` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dp_image_setwidthpage`
--

INSERT INTO `dp_image_setwidthpage` (`ID`, `Width`, `ImageID`) VALUES
(16, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `dp_image_setwidthpage_live`
--

CREATE TABLE IF NOT EXISTS `dp_image_setwidthpage_live` (
`ID` int(11) NOT NULL,
  `Width` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dp_image_setwidthpage_live`
--

INSERT INTO `dp_image_setwidthpage_live` (`ID`, `Width`, `ImageID`) VALUES
(16, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `dp_image_setwidthpage_versions`
--

CREATE TABLE IF NOT EXISTS `dp_image_setwidthpage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Width` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dp_image_setwidthpage_versions`
--

INSERT INTO `dp_image_setwidthpage_versions` (`ID`, `RecordID`, `Version`, `Width`, `ImageID`) VALUES
(1, 16, 3, 0, 0),
(2, 16, 4, 0, 9),
(3, 16, 5, 0, 9),
(4, 16, 6, 0, 9),
(5, 16, 7, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `dp_moduleexample_angulardirectivespage`
--

CREATE TABLE IF NOT EXISTS `dp_moduleexample_angulardirectivespage` (
`ID` int(11) NOT NULL,
  `ActiveDirectiveID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `dp_moduleexample_angulardirectivespage`
--

INSERT INTO `dp_moduleexample_angulardirectivespage` (`ID`, `ActiveDirectiveID`) VALUES
(19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dp_moduleexample_angulardirectivespage_live`
--

CREATE TABLE IF NOT EXISTS `dp_moduleexample_angulardirectivespage_live` (
`ID` int(11) NOT NULL,
  `ActiveDirectiveID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `dp_moduleexample_angulardirectivespage_live`
--

INSERT INTO `dp_moduleexample_angulardirectivespage_live` (`ID`, `ActiveDirectiveID`) VALUES
(19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dp_moduleexample_angulardirectivespage_versions`
--

CREATE TABLE IF NOT EXISTS `dp_moduleexample_angulardirectivespage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ActiveDirectiveID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dp_moduleexample_angulardirectivespage_versions`
--

INSERT INTO `dp_moduleexample_angulardirectivespage_versions` (`ID`, `RecordID`, `Version`, `ActiveDirectiveID`) VALUES
(1, 19, 4, 0),
(2, 19, 5, 1),
(3, 19, 6, 2),
(4, 19, 7, 2),
(5, 19, 8, 2),
(6, 19, 9, 2),
(7, 19, 10, 2),
(8, 19, 11, 2),
(9, 19, 12, 2),
(10, 19, 13, 1),
(11, 19, 14, 2),
(12, 19, 15, 2),
(13, 19, 16, 1),
(14, 19, 17, 1),
(15, 19, 18, 2),
(16, 19, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dp_moduleexample_generatedcss`
--

CREATE TABLE IF NOT EXISTS `dp_moduleexample_generatedcss` (
`ID` int(11) NOT NULL,
  `MyColorID` int(11) NOT NULL DEFAULT '0',
  `MyIconID` int(11) NOT NULL DEFAULT '0',
  `ColorPrompt` mediumtext CHARACTER SET utf8,
  `IconPrompt` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `dp_moduleexample_generatedcss`
--

INSERT INTO `dp_moduleexample_generatedcss` (`ID`, `MyColorID`, `MyIconID`, `ColorPrompt`, `IconPrompt`) VALUES
(18, 10, 13, '<h3>Colors</h3><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to push a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p>', '<h3>Icons</h3><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as Data Objects and storing their properties and values in the database, the CMS Admin will be able to modify them as they see fit. The CSS class names are stored in the database and Developers only need to interact with them by reference.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `dp_moduleexample_generatedcss_live`
--

CREATE TABLE IF NOT EXISTS `dp_moduleexample_generatedcss_live` (
`ID` int(11) NOT NULL,
  `MyColorID` int(11) NOT NULL DEFAULT '0',
  `MyIconID` int(11) NOT NULL DEFAULT '0',
  `ColorPrompt` mediumtext CHARACTER SET utf8,
  `IconPrompt` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `dp_moduleexample_generatedcss_live`
--

INSERT INTO `dp_moduleexample_generatedcss_live` (`ID`, `MyColorID`, `MyIconID`, `ColorPrompt`, `IconPrompt`) VALUES
(18, 10, 13, '<h3>Colors</h3><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to push a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p>', '<h3>Icons</h3><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as Data Objects and storing their properties and values in the database, the CMS Admin will be able to modify them as they see fit. The CSS class names are stored in the database and Developers only need to interact with them by reference.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `dp_moduleexample_generatedcss_versions`
--

CREATE TABLE IF NOT EXISTS `dp_moduleexample_generatedcss_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MyColorID` int(11) NOT NULL DEFAULT '0',
  `MyIconID` int(11) NOT NULL DEFAULT '0',
  `ColorPrompt` mediumtext CHARACTER SET utf8,
  `IconPrompt` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `dp_moduleexample_generatedcss_versions`
--

INSERT INTO `dp_moduleexample_generatedcss_versions` (`ID`, `RecordID`, `Version`, `MyColorID`, `MyIconID`, `ColorPrompt`, `IconPrompt`) VALUES
(1, 18, 3, 0, 0, NULL, NULL),
(2, 18, 4, 10, 1, NULL, NULL),
(3, 18, 5, 10, 13, NULL, NULL),
(4, 18, 6, 10, 13, NULL, NULL),
(5, 18, 7, 10, 13, NULL, NULL),
(6, 18, 8, 10, 13, NULL, NULL),
(7, 18, 9, 10, 13, NULL, NULL),
(8, 18, 10, 10, 13, NULL, NULL),
(9, 18, 11, 10, 13, '<h3>Colors</h3><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to push a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p>', '<h3>Icons</h3><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as a Data Object and storing the class name in the database, the CMD Admin will be able to modify it as they see fit.</p>'),
(10, 18, 12, 10, 13, '<h3>Colors</h3><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to push a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p>', '<h3>Icons</h3><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as a Data Object and storing the properties and values in the database, the CMS Admin will be able to modify it as they see fit. The CSS class names can also be minified because Developers only interact with them by reference.</p>'),
(11, 18, 13, 10, 13, '<h3>Colors</h3><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to push a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p>', '<h3>Icons</h3><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as a Data Object and storing the properties and values in the database, the CMS Admin will be able to modify it as they see fit. The CSS class names are stored in the database and Developers only interact with them by reference.</p>'),
(12, 18, 14, 10, 13, '<h3>Colors</h3><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to push a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p>', '<h3>Icons</h3><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as Data Objects and storing their properties and values in the database, the CMS Admin will be able to modify them as they see fit. The CSS class names are stored in the database and Developers only interact with them by reference.</p>'),
(13, 18, 15, 10, 13, '<h3>Colors</h3><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to push a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p>', '<h3>Icons</h3><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as Data Objects and storing their properties and values in the database, the CMS Admin will be able to modify them as they see fit. The CSS class names are stored in the database and Developers only need to interact with them by reference.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `dp_templatecontrolspage`
--

CREATE TABLE IF NOT EXISTS `dp_templatecontrolspage` (
`ID` int(11) NOT NULL,
  `ExampleVariable` mediumtext CHARACTER SET utf8,
  `ExampleIfConditionToggle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExampleIfConditionContent` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionToggle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExampleIfElseConditionToggleTrueContent` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionToggleFalseContent` mediumtext CHARACTER SET utf8,
  `ExampleVariablePrompt` mediumtext CHARACTER SET utf8,
  `ExampleIfConditionPrompt` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionPrompt` mediumtext CHARACTER SET utf8,
  `ExampleLoopingPrompt` mediumtext CHARACTER SET utf8,
  `ExampleVariableTitle` mediumtext CHARACTER SET utf8,
  `ExampleIfConditionTitle` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionTitle` mediumtext CHARACTER SET utf8,
  `ExampleLoopingTitle` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dp_templatecontrolspage`
--

INSERT INTO `dp_templatecontrolspage` (`ID`, `ExampleVariable`, `ExampleIfConditionToggle`, `ExampleIfConditionContent`, `ExampleIfElseConditionToggle`, `ExampleIfElseConditionToggleTrueContent`, `ExampleIfElseConditionToggleFalseContent`, `ExampleVariablePrompt`, `ExampleIfConditionPrompt`, `ExampleIfElseConditionPrompt`, `ExampleLoopingPrompt`, `ExampleVariableTitle`, `ExampleIfConditionTitle`, `ExampleIfElseConditionTitle`, `ExampleLoopingTitle`) VALUES
(8, 'My Example Variable Test', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable:', 'If/Condition:', 'If/Else Condition:', 'Looping:');

-- --------------------------------------------------------

--
-- Table structure for table `dp_templatecontrolspage_live`
--

CREATE TABLE IF NOT EXISTS `dp_templatecontrolspage_live` (
`ID` int(11) NOT NULL,
  `ExampleVariable` mediumtext CHARACTER SET utf8,
  `ExampleIfConditionToggle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExampleIfConditionContent` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionToggle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExampleIfElseConditionToggleTrueContent` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionToggleFalseContent` mediumtext CHARACTER SET utf8,
  `ExampleVariablePrompt` mediumtext CHARACTER SET utf8,
  `ExampleIfConditionPrompt` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionPrompt` mediumtext CHARACTER SET utf8,
  `ExampleLoopingPrompt` mediumtext CHARACTER SET utf8,
  `ExampleVariableTitle` mediumtext CHARACTER SET utf8,
  `ExampleIfConditionTitle` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionTitle` mediumtext CHARACTER SET utf8,
  `ExampleLoopingTitle` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dp_templatecontrolspage_live`
--

INSERT INTO `dp_templatecontrolspage_live` (`ID`, `ExampleVariable`, `ExampleIfConditionToggle`, `ExampleIfConditionContent`, `ExampleIfElseConditionToggle`, `ExampleIfElseConditionToggleTrueContent`, `ExampleIfElseConditionToggleFalseContent`, `ExampleVariablePrompt`, `ExampleIfConditionPrompt`, `ExampleIfElseConditionPrompt`, `ExampleLoopingPrompt`, `ExampleVariableTitle`, `ExampleIfConditionTitle`, `ExampleIfElseConditionTitle`, `ExampleLoopingTitle`) VALUES
(8, 'My Example Variable Test', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable:', 'If/Condition:', 'If/Else Condition:', 'Looping:');

-- --------------------------------------------------------

--
-- Table structure for table `dp_templatecontrolspage_versions`
--

CREATE TABLE IF NOT EXISTS `dp_templatecontrolspage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ExampleVariable` mediumtext CHARACTER SET utf8,
  `ExampleIfConditionToggle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExampleIfConditionContent` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionToggle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExampleIfElseConditionToggleTrueContent` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionToggleFalseContent` mediumtext CHARACTER SET utf8,
  `ExampleVariablePrompt` mediumtext CHARACTER SET utf8,
  `ExampleIfConditionPrompt` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionPrompt` mediumtext CHARACTER SET utf8,
  `ExampleLoopingPrompt` mediumtext CHARACTER SET utf8,
  `ExampleVariableTitle` mediumtext CHARACTER SET utf8,
  `ExampleIfConditionTitle` mediumtext CHARACTER SET utf8,
  `ExampleIfElseConditionTitle` mediumtext CHARACTER SET utf8,
  `ExampleLoopingTitle` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `dp_templatecontrolspage_versions`
--

INSERT INTO `dp_templatecontrolspage_versions` (`ID`, `RecordID`, `Version`, `ExampleVariable`, `ExampleIfConditionToggle`, `ExampleIfConditionContent`, `ExampleIfElseConditionToggle`, `ExampleIfElseConditionToggleTrueContent`, `ExampleIfElseConditionToggleFalseContent`, `ExampleVariablePrompt`, `ExampleIfConditionPrompt`, `ExampleIfElseConditionPrompt`, `ExampleLoopingPrompt`, `ExampleVariableTitle`, `ExampleIfConditionTitle`, `ExampleIfElseConditionTitle`, `ExampleLoopingTitle`) VALUES
(1, 8, 5, 'My Example Variable', 1, 'True', 0, 'True', 'False', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 8, 6, 'My Example Variable', 1, 'True', 0, 'True', 'False', NULL, '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 8, 7, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', NULL, NULL, NULL, NULL),
(4, 8, 8, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '<p>&lt;% if $ExampleIfElseConditionToggle %&gt;<br> $ExampleIfElseConditionToggleTrueContent<br> &lt;% else %&gt;<br> $ExampleIfElseConditionToggleFalseContent<br> &lt;% end_if %&gt;</p>', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', NULL, NULL, NULL, NULL),
(5, 8, 9, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '<p>&lt;% if $ExampleIfElseConditionToggle %&gt;</p><p style="padding-left: 30px;">$ExampleIfElseConditionToggleTrueContent</p><p><br> &lt;% else %&gt;</p><p style="padding-left: 30px;"><br> $ExampleIfElseConditionToggleFalseContent</p><p><br> &lt;% end_if %&gt;</p>', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', NULL, NULL, NULL, NULL),
(6, 8, 10, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '<p>&lt;% if $ExampleIfElseConditionToggle %&gt;</p><p style="padding-left: 30px;">$ExampleIfElseConditionToggleTrueContent</p><p><br> &lt;% else %&gt;</p><p style="padding-left: 30px;">$ExampleIfElseConditionToggleFalseContent</p><p>&lt;% end_if %&gt;</p>', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', NULL, NULL, NULL, NULL),
(7, 8, 11, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p>$ExampleVariable</p>', '<p>&lt;% if $ExampleIfConditionToggle %&gt;</p><p style="padding-left: 30px;">$ExampleIfConditionContent</p><p>&lt;% end_if %&gt;</p>', '<p>&lt;% if $ExampleIfElseConditionToggle %&gt;</p><p style="padding-left: 30px;">$ExampleIfElseConditionToggleTrueContent</p><p>&lt;% else %&gt;</p><p style="padding-left: 30px;">$ExampleIfElseConditionToggleFalseContent</p><p>&lt;% end_if %&gt;</p>', '<p>&lt;% loop $ExampleLoopingItems %&gt;</p><p>&lt;% end_loop %&gt;</p>', NULL, NULL, NULL, NULL),
(8, 8, 12, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', NULL, NULL, NULL, NULL),
(9, 8, 13, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable -- $', 'If/Condition -- <% if %><% end_if %>', 'If/Else Condition -- <% if %><% else %><% end_if %>', 'Looping -- '),
(10, 8, 14, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable -- $', 'If/Condition -- <% if %><% end_if %>', 'If/Else Condition -- <% if %><% else %><% end_if %>', 'Looping -- '),
(11, 8, 15, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable -- $', 'If/Condition -- <% if %><% end_if %>', 'If/Else Condition -- <% if %><% else %><% end_if %>', 'Looping -- '),
(12, 8, 16, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable -- $', 'If/Condition -- <% if %><% end_if %>', 'If/Else Condition -- <% if %><% else %><% end_if %>', 'Looping -- <% loop %><% end_loop %>'),
(13, 8, 17, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable', 'If/Condition', 'If/Else Condition', 'Looping'),
(14, 8, 18, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable:', 'If/Condition:', 'If/Else Condition:', 'Looping:'),
(15, 8, 19, 'My Example Variable fsdfsdf', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable:', 'If/Condition:', 'If/Else Condition:', 'Looping:'),
(16, 8, 20, 'My Example Variable', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable:', 'If/Condition:', 'If/Else Condition:', 'Looping:'),
(17, 8, 21, 'My Example Variable Test', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable:', 'If/Condition:', 'If/Else Condition:', 'Looping:'),
(18, 8, 22, 'My Example Variable Test', 0, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable:', 'If/Condition:', 'If/Else Condition:', 'Looping:'),
(19, 8, 23, 'My Example Variable Test', 1, 'True', 0, 'True', 'False', '<p>Render the value of a variable.</p>', '<p>Conditionally render markup in the positive output of a condition.</p>', '<p>Conditionally render markup in both the positive and negative output of a condition.</p>', '<p>Used for Looping through an Array of Items and performing actions or displaying data on each item.</p>', 'Variable:', 'If/Condition:', 'If/Else Condition:', 'Looping:');

-- --------------------------------------------------------

--
-- Table structure for table `errorpage`
--

CREATE TABLE IF NOT EXISTS `errorpage` (
`ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `errorpage`
--

INSERT INTO `errorpage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_live`
--

CREATE TABLE IF NOT EXISTS `errorpage_live` (
`ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `errorpage_live`
--

INSERT INTO `errorpage_live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_versions`
--

CREATE TABLE IF NOT EXISTS `errorpage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `errorpage_versions`
--

INSERT INTO `errorpage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 5, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `exampledatamodel`
--

CREATE TABLE IF NOT EXISTS `exampledatamodel` (
`ID` int(11) NOT NULL,
  `ClassName` enum('ExampleDataModel','ExampleDataModelChild') CHARACTER SET utf8 DEFAULT 'ExampleDataModel',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` mediumtext CHARACTER SET utf8,
  `LastName` mediumtext CHARACTER SET utf8,
  `Greeting` mediumtext CHARACTER SET utf8,
  `PageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `exampledatamodel`
--

INSERT INTO `exampledatamodel` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `LastName`, `Greeting`, `PageID`) VALUES
(1, 'ExampleDataModel', '2016-03-17 16:10:37', '2016-03-17 16:01:56', 'John', 'Smith', 'Hello World!', 0),
(2, 'ExampleDataModelChild', '2016-03-17 18:05:24', '2016-03-17 18:05:24', 'Jane', 'Smith', 'What''s up!', 0),
(3, 'ExampleDataModel', '2016-03-17 18:19:15', '2016-03-17 18:19:15', 'John', 'Smith', 'Hello World!', 11),
(4, 'ExampleDataModel', '2016-03-17 18:31:22', '2016-03-17 18:31:22', NULL, NULL, NULL, 0),
(5, 'ExampleDataModel', '2016-03-17 18:31:38', '2016-03-17 18:31:38', NULL, NULL, NULL, 0),
(6, 'ExampleDataModel', '2016-03-17 18:32:43', '2016-03-17 18:32:43', NULL, NULL, NULL, 0),
(7, 'ExampleDataModel', '2016-03-17 18:33:01', '2016-03-17 18:33:01', NULL, NULL, NULL, 0),
(8, 'ExampleDataModel', '2016-03-17 18:33:08', '2016-03-17 18:33:08', NULL, NULL, NULL, 0),
(9, 'ExampleDataModel', '2016-03-17 18:33:09', '2016-03-17 18:33:09', NULL, NULL, NULL, 0),
(10, 'ExampleDataModelChild', '2016-03-17 18:33:15', '2016-03-17 18:33:15', NULL, NULL, NULL, 0),
(11, 'ExampleDataModelChild', '2016-03-17 18:33:19', '2016-03-17 18:33:19', NULL, NULL, NULL, 0),
(12, 'ExampleDataModelChild', '2016-03-17 18:33:44', '2016-03-17 18:33:44', NULL, NULL, NULL, 0),
(13, 'ExampleDataModelChild', '2016-03-17 18:34:46', '2016-03-17 18:33:44', 'Jane', 'Smith', 'What''s Up!', 12),
(14, 'ExampleDataModelChild', '2016-03-17 18:33:45', '2016-03-17 18:33:45', NULL, NULL, NULL, 0),
(15, 'ExampleDataModelChild', '2016-03-17 18:33:46', '2016-03-17 18:33:46', NULL, NULL, NULL, 0),
(16, 'ExampleDataModelChild', '2016-03-17 18:33:50', '2016-03-17 18:33:50', NULL, NULL, NULL, 0),
(17, 'ExampleDataModelChild', '2016-03-17 18:33:51', '2016-03-17 18:33:51', NULL, NULL, NULL, 0),
(18, 'ExampleDataModelChild', '2016-03-17 18:34:21', '2016-03-17 18:34:21', NULL, NULL, NULL, 0),
(19, 'ExampleDataModelChild', '2016-03-17 18:34:45', '2016-03-17 18:34:45', NULL, NULL, NULL, 0),
(20, 'ExampleDataModelChild', '2016-03-17 18:34:47', '2016-03-17 18:34:47', NULL, NULL, NULL, 0),
(21, 'ExampleDataModelChild', '2016-03-17 18:38:41', '2016-03-17 18:38:41', NULL, NULL, NULL, 0),
(22, 'ExampleDataModelChild', '2016-03-17 18:38:42', '2016-03-17 18:38:42', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `exampledatamodelchild`
--

CREATE TABLE IF NOT EXISTS `exampledatamodelchild` (
`ID` int(11) NOT NULL,
  `ClassName` enum('ExampleDataModelChild') CHARACTER SET utf8 DEFAULT 'ExampleDataModelChild',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Extra` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `exampledatamodelchild`
--

INSERT INTO `exampledatamodelchild` (`ID`, `ClassName`, `LastEdited`, `Created`, `Extra`) VALUES
(2, 'ExampleDataModelChild', NULL, NULL, '...and don''t forget about the child!'),
(10, 'ExampleDataModelChild', NULL, NULL, NULL),
(11, 'ExampleDataModelChild', NULL, NULL, NULL),
(12, 'ExampleDataModelChild', NULL, NULL, NULL),
(13, 'ExampleDataModelChild', NULL, NULL, ' ... I''m a child class.'),
(14, 'ExampleDataModelChild', NULL, NULL, NULL),
(15, 'ExampleDataModelChild', NULL, NULL, NULL),
(16, 'ExampleDataModelChild', NULL, NULL, NULL),
(17, 'ExampleDataModelChild', NULL, NULL, NULL),
(18, 'ExampleDataModelChild', NULL, NULL, NULL),
(19, 'ExampleDataModelChild', NULL, NULL, NULL),
(20, 'ExampleDataModelChild', NULL, NULL, NULL),
(21, 'ExampleDataModelChild', NULL, NULL, NULL),
(22, 'ExampleDataModelChild', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exampleloopingitem`
--

CREATE TABLE IF NOT EXISTS `exampleloopingitem` (
`ID` int(11) NOT NULL,
  `ClassName` enum('ExampleLoopingItem') CHARACTER SET utf8 DEFAULT 'ExampleLoopingItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` mediumtext CHARACTER SET utf8,
  `LastName` mediumtext CHARACTER SET utf8,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `AvatarID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `exampleloopingitem`
--

INSERT INTO `exampleloopingitem` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `LastName`, `SortOrder`, `AvatarID`, `PageID`) VALUES
(1, 'ExampleLoopingItem', '2016-03-24 14:53:57', '2016-03-17 14:22:43', 'John', 'Smith', 2, 4, 8),
(2, 'ExampleLoopingItem', '2016-03-24 14:53:57', '2016-03-17 14:23:44', 'Jane', 'Smith', 1, 5, 8),
(3, 'ExampleLoopingItem', '2016-05-13 23:27:46', '2016-03-17 19:28:43', 'George', 'Washington', 1, 6, 14),
(4, 'ExampleLoopingItem', '2016-05-13 23:27:46', '2016-03-17 19:29:01', 'Abraham', 'Lincoln', 2, 7, 14),
(5, 'ExampleLoopingItem', '2016-05-13 23:27:46', '2016-03-18 19:43:16', 'Mr.', 'Fluffy', 3, 10, 14);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
`ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2016-03-16 12:56:58', '2016-03-16 12:56:58', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(2, 'Image', '2016-03-16 12:56:59', '2016-03-16 12:56:59', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 1, 1, 0),
(3, 'Folder', '2016-03-17 14:22:39', '2016-03-17 14:22:39', '02-template-controls', '02-template-controls', 'assets/Uploads/02-template-controls/', NULL, 1, 1, 1),
(4, 'Image', '2016-03-17 14:22:39', '2016-03-17 14:22:39', '140272627-grooming-needs-senior-cat-632x475.jpg', '140272627 grooming needs senior cat 632x475', 'assets/Uploads/02-template-controls/140272627-grooming-needs-senior-cat-632x475.jpg', NULL, 1, 3, 1),
(5, 'Image', '2016-03-17 14:23:41', '2016-03-17 14:23:41', 'o-CATS-KILL-BILLIONS-facebook.jpg', 'o CATS KILL BILLIONS facebook', 'assets/Uploads/02-template-controls/o-CATS-KILL-BILLIONS-facebook.jpg', NULL, 1, 3, 1),
(6, 'Image', '2016-03-17 19:28:41', '2016-03-17 19:28:41', 'georgew.jpg', 'georgew', 'assets/Uploads/02-template-controls/georgew.jpg', NULL, 1, 3, 1),
(7, 'Image', '2016-03-17 19:28:54', '2016-03-17 19:28:54', 'Abraham-Lincoln-Hero-Chair-AB.jpeg', 'Abraham Lincoln Hero Chair AB', 'assets/Uploads/02-template-controls/Abraham-Lincoln-Hero-Chair-AB.jpeg', NULL, 1, 3, 1),
(8, 'Folder', '2016-03-18 19:30:04', '2016-03-18 19:30:04', '10-image-setwidth', '10-image-setwidth', 'assets/Uploads/10-image-setwidth/', NULL, 1, 1, 1),
(9, 'Image', '2016-03-18 19:30:05', '2016-03-18 19:30:05', 'bird.jpg', 'bird', 'assets/Uploads/10-image-setwidth/bird.jpg', NULL, 1, 8, 1),
(10, 'Image', '2016-03-18 19:43:10', '2016-03-18 19:43:10', '140272627-grooming-needs-senior-cat-632x476.jpg', '140272627 grooming needs senior cat 632x476', 'assets/Uploads/02-template-controls/140272627-grooming-needs-senior-cat-632x476.jpg', NULL, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2016-03-16 16:56:54', '2016-03-16 16:56:54', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2016-03-16 16:56:55', '2016-03-16 16:56:55', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE IF NOT EXISTS `group_members` (
`ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`ID`, `GroupID`, `MemberID`) VALUES
(3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `group_roles`
--

CREATE TABLE IF NOT EXISTS `group_roles` (
`ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `icon`
--

CREATE TABLE IF NOT EXISTS `icon` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Icon') CHARACTER SET utf8 DEFAULT 'Icon',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` mediumtext CHARACTER SET utf8,
  `FontAwesomeClass` mediumtext CHARACTER SET utf8,
  `FontAwesomeAnimation` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `icon`
--

INSERT INTO `icon` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `FontAwesomeClass`, `FontAwesomeAnimation`) VALUES
(1, 'Icon', '2016-03-21 14:12:04', '2016-03-21 14:12:04', 'Facebook', 'fa-facebook', NULL),
(2, 'Icon', '2016-03-21 14:12:04', '2016-03-21 14:12:04', 'Twitter', 'fa-twitter', NULL),
(3, 'Icon', '2016-03-21 14:12:04', '2016-03-21 14:12:04', 'YouTube', 'fa-youtube', NULL),
(4, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'LinkedIn', 'fa-linkedin', NULL),
(5, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'Chevron Up', 'fa-chevron-up', NULL),
(6, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'Chevron Down', 'fa-chevron-down', NULL),
(7, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'Chevron Left', 'fa-chevron-left', NULL),
(8, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'Chevron Right', 'fa-chevron-right', NULL),
(9, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'Long Arrow Up', 'fa-long-arrow-up', NULL),
(10, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'Long Arrow Down', 'fa-long-arrow-down', NULL),
(11, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'Long Arrow Left', 'fa-long-arrow-left', NULL),
(12, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'Long Arrow Right', 'fa-long-arrow-right', NULL),
(13, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'Spinner Default', 'fa-spinner', 'fa-spin'),
(14, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'Spinner Refresh', 'fa-refresh', 'fa-spin'),
(15, 'Icon', '2016-03-21 14:12:05', '2016-03-21 14:12:05', 'Menu', 'fa-navicon', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loginattempt`
--

CREATE TABLE IF NOT EXISTS `loginattempt` (
`ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(3, 'Member', '2016-05-14 00:10:18', '2016-05-14 00:10:18', 'Default Admin', NULL, 'admin', '781133b83916fbfd8e902896ddbc02d1b7d85c75', '2016-05-17 00:10:18', NULL, NULL, 1, '2016-05-14 00:12:27', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberpassword`
--

CREATE TABLE IF NOT EXISTS `memberpassword` (
`ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `pdfviewerdirective`
--

CREATE TABLE IF NOT EXISTS `pdfviewerdirective` (
`ID` int(11) NOT NULL,
  `URLPageID` int(11) NOT NULL DEFAULT '0',
  `URLCustomURL` varchar(2000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pdfviewerdirective`
--

INSERT INTO `pdfviewerdirective` (`ID`, `URLPageID`, `URLCustomURL`) VALUES
(2, 0, 'http://humaneloudoun.org/MailInPurcahseForm-SN.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2016-03-16 16:56:54', '2016-03-16 16:56:54', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2016-03-16 16:56:55', '2016-03-16 16:56:55', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2016-03-16 16:56:55', '2016-03-16 16:56:55', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2016-03-16 16:56:55', '2016-03-16 16:56:55', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2016-03-16 16:56:55', '2016-03-16 16:56:55', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissionrole`
--

CREATE TABLE IF NOT EXISTS `permissionrole` (
`ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissionrolecode`
--

CREATE TABLE IF NOT EXISTS `permissionrolecode` (
`ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage`
--

CREATE TABLE IF NOT EXISTS `redirectorpage` (
`ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_live`
--

CREATE TABLE IF NOT EXISTS `redirectorpage_live` (
`ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_versions`
--

CREATE TABLE IF NOT EXISTS `redirectorpage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

CREATE TABLE IF NOT EXISTS `siteconfig` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `StyleSheetCustomCSS` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `StyleSheetCustomCSS`) VALUES
(1, 'SiteConfig', '2016-05-14 00:11:10', '2016-03-16 16:56:57', 'SS Demonstration', 'SilverStripe Examples', 'simple', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_createtoplevelgroups`
--

CREATE TABLE IF NOT EXISTS `siteconfig_createtoplevelgroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_editorgroups`
--

CREATE TABLE IF NOT EXISTS `siteconfig_editorgroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_viewergroups`
--

CREATE TABLE IF NOT EXISTS `siteconfig_viewergroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree`
--

CREATE TABLE IF NOT EXISTS `sitetree` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','DemonstrationHolder','DemonstrationPage','DP_TemplateControlsPage','DP_DataModelPage','DP_DataModelChildPage','DP_DataModelDynamicPage','DP_DataModelLoopingPage','DP_ControllerActionsPage','DP_Image_SetWidthPage','DP_DeveloperAssistancePage','DP_ModuleExample_GeneratedCSS','DP_ModuleExample_AngularDirectivesPage','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `sitetree`
--

INSERT INTO `sitetree` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Page', '2016-03-16 16:56:59', '2016-03-16 16:56:55', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(2, 'Page', '2016-03-16 16:56:59', '2016-03-16 16:56:56', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(3, 'Page', '2016-03-16 16:56:59', '2016-03-16 16:56:56', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(4, 'ErrorPage', '2016-03-16 16:56:59', '2016-03-16 16:56:56', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-03-16 16:56:59', '2016-03-16 16:56:57', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'DemonstrationHolder', '2016-03-16 17:57:04', '2016-03-16 17:56:40', 'demonstrations', 'Demonstrations', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(7, 'DemonstrationPage', '2016-03-24 14:15:09', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include ''header.php'' ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include ''footer.php'' ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;$Layout&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits:</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy <span class="fa fa-smile-o"> </span></p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 19, 6),
(8, 'DP_TemplateControlsPage', '2016-03-24 14:53:59', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 23, 6),
(11, 'DP_DataModelPage', '2016-03-21 14:55:32', '2016-03-16 18:27:12', '03-data-model', '03_data-model', NULL, '<p>Data Objects are objects which hold properties and functions. It is possible to define relationships between Data Objects using:</p><pre>private static $has_one = array();<br>\nprivate static $has_many = array();<br>\nprivate static $many_many = array();<br>\nprivate static $belongs_to = array();<br>\nprivate static $belongs_many_many = array();\n</pre><p>We can interact with these objects using SilverStripe''s ORM.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 7, 6),
(12, 'DP_DataModelChildPage', '2016-03-23 10:39:31', '2016-03-16 18:27:33', '04-data-model-inheritance', '04_data-model_inheritance', NULL, '<p>Inheritance is very powerful in SilverStripe. We can perform different data transformations, add extra fields, and add functions.</p><p>Here we are performing a very simple change to the previous Data Object class. We are adding the field "Extra" and then doing a data transformation on the function "DoGreeting" to append "Extra" to the end.</p><p>What''s really cool is that because this Page_Controller extends from the previous Page_Controller, it will naturally use the inherited template $Layout until we specific a new one.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 10, 6),
(13, 'DP_DataModelDynamicPage', '2016-03-23 10:40:15', '2016-03-16 18:28:03', '05-data-model-dynamic', '05_data-model_dynamic', NULL, '<p>It is possible to send custom data objects to the view. This is extremely helpful when making a server side request to a different data source. The response can be transformed into a custom object and then sent to the view to be rendered as normal using the ORM.</p><p>Here, we are building an object based off of fields from the page rather than an object from the database.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 11, 6),
(14, 'DP_DataModelLoopingPage', '2016-05-13 23:27:52', '2016-03-16 18:28:38', '06-data-model-looping', '06_data-model_looping', NULL, '<p>Looping through items on the view is a very common task that is made easy in SilverStripe. Any ArrayList of ArrayData can be looped through and interacted with using the ORM.</p><p>Here we are looping through data objects and displaying their properties.</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 9, 6),
(15, 'DP_ControllerActionsPage', '2016-03-24 15:03:29', '2016-03-16 18:28:56', '07-controller-actions', '07_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered template.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 38, 6),
(16, 'DP_Image_SetWidthPage', '2016-03-21 14:57:04', '2016-03-16 18:30:17', '08-image-setwidth', '08_image_setwidth', NULL, '<p>SilverStripe''s base classes have quite a few utility functions baked in. Image''s have the ability to generate a resampled version with max dimensions determined per the view''s implementation.</p><p>Below we have a 3.5 MB image. It''s maximum possible width is really only 815 px. This means that a lot of extra space is being wasted because it is being scaled down. If we use Image.setWidth(815), then a resampled version of the image is generated saving the user a tremendous amount of request data while having no impact on the quality of the image.</p><p>The resampled image is automatically updated if the source image is ever changed. This allows the CMS Admin to only need to manage the high resolution versions of the image as the view will automatically optimize them.</p>', NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 7, 6),
(17, 'DP_DeveloperAssistancePage', '2016-03-24 09:40:52', '2016-03-16 18:30:36', '09-developer-assistance', '09_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 100%; margin: 0 auto;">\n<p>SilverStripe is not a prepackaged solution, but rather a solid base framework with the flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right-click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 19, 6),
(18, 'DP_ModuleExample_GeneratedCSS', '2016-03-24 09:43:49', '2016-03-16 18:31:05', '10-module-example-generated-css', '10_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>A key point to remember here is that we have very granular control over what options are exposed to the CMS Admin.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 15, 6),
(19, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-24 10:19:05', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One problem with directives is statically-typed options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><p>Because SilverStripe is object-oriented, it also means that we can take advantage of code-reuse by defining the Super Class "Angular Directive". Here on this page we have a "has_one" relationship with "Angular Directive". We can use a multi-class grid-field editor to create any type of Directive that is a child of "Angular Directive" and link it to this page.</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n	&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 19, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_editorgroups`
--

CREATE TABLE IF NOT EXISTS `sitetree_editorgroups` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_imagetracking`
--

CREATE TABLE IF NOT EXISTS `sitetree_imagetracking` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_linktracking`
--

CREATE TABLE IF NOT EXISTS `sitetree_linktracking` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_live`
--

CREATE TABLE IF NOT EXISTS `sitetree_live` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','DemonstrationHolder','DemonstrationPage','DP_TemplateControlsPage','DP_DataModelPage','DP_DataModelChildPage','DP_DataModelDynamicPage','DP_DataModelLoopingPage','DP_ControllerActionsPage','DP_Image_SetWidthPage','DP_DeveloperAssistancePage','DP_ModuleExample_GeneratedCSS','DP_ModuleExample_AngularDirectivesPage','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `sitetree_live`
--

INSERT INTO `sitetree_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Page', '2016-03-16 16:56:56', '2016-03-16 16:56:55', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(2, 'Page', '2016-03-16 16:56:56', '2016-03-16 16:56:56', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(3, 'Page', '2016-03-16 16:56:56', '2016-03-16 16:56:56', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(4, 'ErrorPage', '2016-03-16 16:58:44', '2016-03-16 16:56:56', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-03-16 16:56:58', '2016-03-16 16:56:57', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'DemonstrationHolder', '2016-03-16 17:57:05', '2016-03-16 17:56:40', 'demonstrations', 'Demonstrations', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(7, 'DemonstrationPage', '2016-03-24 14:15:09', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include ''header.php'' ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include ''footer.php'' ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;$Layout&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits:</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy <span class="fa fa-smile-o"> </span></p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 19, 6),
(8, 'DP_TemplateControlsPage', '2016-03-24 14:53:59', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 23, 6),
(11, 'DP_DataModelPage', '2016-03-21 14:55:33', '2016-03-16 18:27:12', '03-data-model', '03_data-model', NULL, '<p>Data Objects are objects which hold properties and functions. It is possible to define relationships between Data Objects using:</p><pre>private static $has_one = array();<br>\nprivate static $has_many = array();<br>\nprivate static $many_many = array();<br>\nprivate static $belongs_to = array();<br>\nprivate static $belongs_many_many = array();\n</pre><p>We can interact with these objects using SilverStripe''s ORM.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 7, 6),
(12, 'DP_DataModelChildPage', '2016-03-23 10:39:31', '2016-03-16 18:27:33', '04-data-model-inheritance', '04_data-model_inheritance', NULL, '<p>Inheritance is very powerful in SilverStripe. We can perform different data transformations, add extra fields, and add functions.</p><p>Here we are performing a very simple change to the previous Data Object class. We are adding the field "Extra" and then doing a data transformation on the function "DoGreeting" to append "Extra" to the end.</p><p>What''s really cool is that because this Page_Controller extends from the previous Page_Controller, it will naturally use the inherited template $Layout until we specific a new one.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 10, 6),
(13, 'DP_DataModelDynamicPage', '2016-03-23 10:40:15', '2016-03-16 18:28:03', '05-data-model-dynamic', '05_data-model_dynamic', NULL, '<p>It is possible to send custom data objects to the view. This is extremely helpful when making a server side request to a different data source. The response can be transformed into a custom object and then sent to the view to be rendered as normal using the ORM.</p><p>Here, we are building an object based off of fields from the page rather than an object from the database.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 11, 6),
(14, 'DP_DataModelLoopingPage', '2016-05-13 23:27:52', '2016-03-16 18:28:38', '06-data-model-looping', '06_data-model_looping', NULL, '<p>Looping through items on the view is a very common task that is made easy in SilverStripe. Any ArrayList of ArrayData can be looped through and interacted with using the ORM.</p><p>Here we are looping through data objects and displaying their properties.</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 9, 6),
(15, 'DP_ControllerActionsPage', '2016-03-24 10:40:22', '2016-03-16 18:28:56', '07-controller-actions', '07_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered template.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 36, 6),
(16, 'DP_Image_SetWidthPage', '2016-03-21 14:57:05', '2016-03-16 18:30:17', '08-image-setwidth', '08_image_setwidth', NULL, '<p>SilverStripe''s base classes have quite a few utility functions baked in. Image''s have the ability to generate a resampled version with max dimensions determined per the view''s implementation.</p><p>Below we have a 3.5 MB image. It''s maximum possible width is really only 815 px. This means that a lot of extra space is being wasted because it is being scaled down. If we use Image.setWidth(815), then a resampled version of the image is generated saving the user a tremendous amount of request data while having no impact on the quality of the image.</p><p>The resampled image is automatically updated if the source image is ever changed. This allows the CMS Admin to only need to manage the high resolution versions of the image as the view will automatically optimize them.</p>', NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 7, 6),
(17, 'DP_DeveloperAssistancePage', '2016-03-24 09:40:52', '2016-03-16 18:30:36', '09-developer-assistance', '09_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 100%; margin: 0 auto;">\n<p>SilverStripe is not a prepackaged solution, but rather a solid base framework with the flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right-click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 19, 6),
(18, 'DP_ModuleExample_GeneratedCSS', '2016-03-24 09:43:49', '2016-03-16 18:31:05', '10-module-example-generated-css', '10_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>A key point to remember here is that we have very granular control over what options are exposed to the CMS Admin.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 15, 6),
(19, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-24 10:19:05', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One problem with directives is statically-typed options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><p>Because SilverStripe is object-oriented, it also means that we can take advantage of code-reuse by defining the Super Class "Angular Directive". Here on this page we have a "has_one" relationship with "Angular Directive". We can use a multi-class grid-field editor to create any type of Directive that is a child of "Angular Directive" and link it to this page.</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n	&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 19, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_versions`
--

CREATE TABLE IF NOT EXISTS `sitetree_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','DemonstrationHolder','DemonstrationPage','DP_TemplateControlsPage','DP_DataModelPage','DP_DataModelChildPage','DP_DataModelDynamicPage','DP_DataModelLoopingPage','DP_ControllerActionsPage','DP_Image_SetWidthPage','DP_DeveloperAssistancePage','DP_ModuleExample_GeneratedCSS','DP_ModuleExample_AngularDirectivesPage','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=189 ;

--
-- Dumping data for table `sitetree_versions`
--

INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2016-03-16 16:56:55', '2016-03-16 16:56:55', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2016-03-16 16:56:56', '2016-03-16 16:56:56', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2016-03-16 16:56:56', '2016-03-16 16:56:56', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2016-03-16 16:56:56', '2016-03-16 16:56:56', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2016-03-16 16:56:57', '2016-03-16 16:56:57', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 6, 1, 0, 1, 0, 'DemonstrationHolder', '2016-03-16 17:56:40', '2016-03-16 17:56:40', 'new-demonstration-holder', 'New Demonstration Holder', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 6, 2, 1, 1, 1, 'DemonstrationHolder', '2016-03-16 17:57:04', '2016-03-16 17:56:40', 'demonstrations', 'Demonstrations', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 7, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:04:52', '2016-03-16 18:04:52', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(9, 7, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:05:49', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(10, 8, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:25:56', '2016-03-16 18:25:56', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(11, 8, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:26:21', '2016-03-16 18:25:56', '02', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(12, 9, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:26:31', '2016-03-16 18:26:31', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(13, 9, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:26:41', '2016-03-16 18:26:31', '03-controller', '03_controller', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(14, 10, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:26:50', '2016-03-16 18:26:50', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(15, 10, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:27:02', '2016-03-16 18:26:50', '04-controller-inheritance', '04_controller_inheritance', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(16, 11, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:27:12', '2016-03-16 18:27:12', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(17, 11, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:27:24', '2016-03-16 18:27:12', '05-data-model', '05_data-model', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(18, 12, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:27:33', '2016-03-16 18:27:33', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(19, 12, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:27:54', '2016-03-16 18:27:33', '06-data-model-looping', '06_data-model_looping', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(20, 13, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:28:03', '2016-03-16 18:28:03', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(21, 13, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:28:30', '2016-03-16 18:28:03', '07-data-model-dynamic', '07_data-model_dynamic', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(22, 14, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:28:38', '2016-03-16 18:28:38', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(23, 14, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:28:49', '2016-03-16 18:28:38', '08-controller-actions', '08_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(24, 15, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:28:56', '2016-03-16 18:28:56', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(25, 15, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:29:27', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(26, 14, 3, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:29:45', '2016-03-16 18:28:38', '08-controller-actions', '08_data-model_looping', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(27, 14, 4, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:30:02', '2016-03-16 18:28:38', '08-data-model-looping', '08_data-model_looping', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(28, 16, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:30:17', '2016-03-16 18:30:17', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(29, 16, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:30:29', '2016-03-16 18:30:17', '10-image-setwidth', '10_image_setwidth', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(30, 17, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:30:36', '2016-03-16 18:30:36', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(31, 17, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:30:49', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(32, 18, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:31:05', '2016-03-16 18:31:05', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(33, 18, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:31:22', '2016-03-16 18:31:05', '12-module-example-generated-css', '12_module-example_generated-css', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(34, 19, 1, 0, 1, 0, 'DemonstrationPage', '2016-03-16 18:31:34', '2016-03-16 18:31:34', 'new-demonstration-page', 'New Demonstration Page', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(35, 19, 2, 1, 1, 1, 'DemonstrationPage', '2016-03-16 18:31:51', '2016-03-16 18:31:34', '13-module-example-angular-directives', '13_module-example_angular-directives', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(36, 8, 3, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 18:48:31', '2016-03-16 18:25:56', '02', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(37, 8, 4, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 18:49:54', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(38, 8, 5, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 19:14:27', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(39, 8, 6, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 19:23:52', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(40, 8, 7, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 19:24:07', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(41, 8, 8, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 19:49:58', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(42, 8, 9, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 19:50:42', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(43, 8, 10, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 19:51:08', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(44, 8, 11, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 19:52:30', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(45, 8, 12, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 19:59:04', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(46, 8, 13, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 20:04:18', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(47, 8, 14, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 20:05:21', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(48, 8, 15, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 20:05:42', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(49, 8, 16, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-16 20:07:29', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(50, 8, 17, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-17 14:33:03', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(51, 7, 3, 1, 1, 1, 'DemonstrationPage', '2016-03-17 14:48:07', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><p>Rather than having to do something awkward like this:</p><div><strong>header.php</strong></div><pre>&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;\n\n&lt;!-- CONTENT GOES HERE --&gt;\n\n&lt;?php include(''footer.php'') ?&gt;\n</pre><p> </p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(52, 7, 4, 1, 1, 1, 'DemonstrationPage', '2016-03-17 14:50:10', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><p>Rather than having to do something awkward like this:</p><div><strong>header.php</strong></div><pre style="white-space: pre;">&lt;html&gt;<br>\n&lt;head&gt;<br>\n&lt;/head&gt;\n</pre><div><strong>footer.php</strong></div><pre style="white-space: pre;">&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n\n&lt;?php include(''footer.php'') ?&gt;\n</pre><p> </p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(53, 7, 5, 1, 1, 1, 'DemonstrationPage', '2016-03-17 14:51:03', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><p>Rather than having to do something awkward like this:</p><div><strong>header.php</strong></div><pre style="white-space: pre;">&lt;html&gt;<br>\n&lt;head&gt;<br>\n&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre style="white-space: pre;">&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><p> </p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(54, 7, 6, 1, 1, 1, 'DemonstrationPage', '2016-03-17 14:53:41', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><p>Rather than having to do something awkward like this:</p><div><strong>header.php</strong></div><pre style="white-space: pre;">&lt;html&gt;<br>\n&lt;head&gt;<br>\n&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre style="white-space: pre;">&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre style="white-space: pre;">&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><p>We can do this:</p><div><strong>Page.ss</strong></div><pre style="white-space: pre;">&lt;html&gt;<br>\n&lt;head&gt;<br>\n&lt;/head&gt;<br>\n&lt;body&gt;<br>\n$Layout<br>\n&lt;/body&gt;<br>\n&lt;/html&gt;<br></pre>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(55, 7, 7, 1, 1, 1, 'DemonstrationPage', '2016-03-17 14:58:15', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h4>Rather than having to do something awkward like this:</h4><div><strong>header.php</strong></div><pre style="white-space: pre;">&lt;html&gt;<br>\n&lt;head&gt;<br>\n&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre style="white-space: pre;">&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre style="white-space: pre;">&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h4>We can do this:</h4><div><strong>Page.ss</strong></div><pre style="white-space: pre;">&lt;html&gt;<br>\n&lt;head&gt;<br>\n&lt;/head&gt;<br>\n&lt;body&gt;<br>\n$Layout<br>\n&lt;/body&gt;<br>\n&lt;/html&gt;</pre><p>This keeps our html clean and obvious as well as our syntax highlighters happy.<br> :)</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(56, 7, 8, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:04:47', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre style="white-space: pre;">&lt;html&gt;<br>\n&lt;head&gt;<br>\n&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre style="white-space: pre;">&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre style="white-space: pre;">&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre style="white-space: pre;">&lt;html&gt;<br>\n&lt;head&gt;<br>\n&lt;/head&gt;<br>\n&lt;body&gt;<br>\n$Layout<br>\n&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy.<br> :)</p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(57, 7, 9, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:07:55', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre style="white-space: pre;">&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;<br>\n$Layout<br>\n&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy.<br> :)</p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(58, 7, 10, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:08:51', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;<br>\n$Layout<br>\n&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy.<br> :)</p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(59, 7, 11, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:10:07', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;<br>\n$Layout<br>\n&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits:</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy.<br> :)</p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(60, 8, 18, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-17 15:11:00', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(61, 12, 3, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:19:02', '2016-03-16 18:27:33', '06-data-model-inheritance', '06_data-model_inheritance', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(62, 7, 12, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:29:12', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n	&lt;head&gt;&lt;/head&gt;<br>\n	&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n	&lt;head&gt;&lt;/head&gt;<br>\n	&lt;body&gt;<br>\n		$Layout<br>\n	&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits:</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy.<br> :)</p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(63, 7, 13, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:30:37', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;$Layout&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits:</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy.<br> :)</p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(64, 7, 14, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:31:22', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;$Layout&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits:</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy. :)</p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(65, 7, 15, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:32:05', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;$Layout&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits:</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy.</p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(66, 7, 16, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:34:56', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;$Layout&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits:</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy.<span class="fa fa-smile-o"> </span></p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(67, 7, 17, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:35:31', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;$Layout&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits:</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy &amp;nb<span class="fa fa-smile-o"> </span></p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(68, 7, 18, 1, 1, 1, 'DemonstrationPage', '2016-03-17 15:35:55', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include(''header.php'') ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include(''footer.php'') ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;$Layout&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits:</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy <span class="fa fa-smile-o"> </span></p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(69, 11, 3, 1, 1, 1, 'DP_DataModelPage', '2016-03-17 15:54:17', '2016-03-16 18:27:12', '05-data-model', '05_data-model', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(70, 11, 4, 1, 1, 1, 'DP_DataModelPage', '2016-03-17 17:25:34', '2016-03-16 18:27:12', '05-data-model', '05_data-model', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(71, 11, 5, 1, 1, 1, 'DP_DataModelPage', '2016-03-17 17:30:14', '2016-03-16 18:27:12', '05-data-model', '05_data-model', NULL, '<p>Data Objects are objects which hold properties and functions. It is possible to define relationships between Data Objects using:</p><pre>private static $has_one = array();<br>\nprivate static $has_many = array();<br>\nprivate static $many_many = array();<br>\nprivate static $belongs_to = array();<br>\nprivate static $belongs_many_many = array();\n</pre><p>We can interact with these objects using SilverStripe''s ORM.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(72, 12, 4, 1, 1, 1, 'DP_DataModelChildPage', '2016-03-17 17:47:04', '2016-03-16 18:27:33', '06-data-model-inheritance', '06_data-model_inheritance', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(73, 12, 5, 1, 1, 1, 'DP_DataModelChildPage', '2016-03-17 17:47:18', '2016-03-16 18:27:33', '06-data-model-inheritance', '06_data-model_inheritance', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(74, 11, 6, 1, 1, 1, 'DP_DataModelPage', '2016-03-17 18:33:08', '2016-03-16 18:27:12', '05-data-model', '05_data-model', NULL, '<p>Data Objects are objects which hold properties and functions. It is possible to define relationships between Data Objects using:</p><pre>private static $has_one = array();<br>\nprivate static $has_many = array();<br>\nprivate static $many_many = array();<br>\nprivate static $belongs_to = array();<br>\nprivate static $belongs_many_many = array();\n</pre><p>We can interact with these objects using SilverStripe''s ORM.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(75, 12, 6, 1, 1, 1, 'DP_DataModelChildPage', '2016-03-17 18:33:51', '2016-03-16 18:27:33', '06-data-model-inheritance', '06_data-model_inheritance', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(76, 12, 7, 1, 1, 1, 'DP_DataModelChildPage', '2016-03-17 18:38:41', '2016-03-16 18:27:33', '06-data-model-inheritance', '06_data-model_inheritance', NULL, '<p>Inheritance is very powerful in SilverStripe. We can perform different data transformations, add extra fields, and add functions.</p><p>Here we are performing a very simple change to the previous Data Object. We are adding the field "Extra" and then doing a data transformation on the function "DoGreeting" to append "Extra" to the end.</p><p>What''s really cool is that because this Page_Controller extends from the previous Page_Controller, it will naturally use the inherited template Layout until we specific a new one.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(77, 12, 8, 1, 1, 1, 'DP_DataModelChildPage', '2016-03-17 18:39:34', '2016-03-16 18:27:33', '06-data-model-inheritance', '06_data-model_inheritance', NULL, '<p>Inheritance is very powerful in SilverStripe. We can perform different data transformations, add extra fields, and add functions.</p><p>Here we are performing a very simple change to the previous Data Object. We are adding the field "Extra" and then doing a data transformation on the function "DoGreeting" to append "Extra" to the end.</p><p>What''s really cool is that because this Page_Controller extends from the previous Page_Controller, it will naturally use the inherited template $Layout until we specific a new one.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(78, 13, 3, 1, 1, 1, 'DP_DataModelDynamicPage', '2016-03-17 18:47:45', '2016-03-16 18:28:03', '07-data-model-dynamic', '07_data-model_dynamic', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(79, 13, 4, 1, 1, 1, 'DP_DataModelDynamicPage', '2016-03-17 18:47:57', '2016-03-16 18:28:03', '07-data-model-dynamic', '07_data-model_dynamic', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(80, 13, 5, 1, 1, 1, 'DP_DataModelDynamicPage', '2016-03-17 18:51:56', '2016-03-16 18:28:03', '07-data-model-dynamic', '07_data-model_dynamic', NULL, '<p>It is possible to send custom data models to the view. This is extremely helpful when making a server side request to a different data source. The response can be transformed into a custom object and then sent to the view to be rendered as normal using the ORM syntax.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(81, 13, 6, 1, 1, 1, 'DP_DataModelDynamicPage', '2016-03-17 18:52:58', '2016-03-16 18:28:03', '07-data-model-dynamic', '07_data-model_dynamic', NULL, '<p>It is possible to send custom data models to the view. This is extremely helpful when making a server side request to a different data source. The response can be transformed into a custom object and then sent to the view to be rendered as normal using the ORM syntax.</p><p>Here, we are building an object based off of fields from the page rather than an object from the data base.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(82, 13, 7, 1, 1, 1, 'DP_DataModelDynamicPage', '2016-03-17 19:00:40', '2016-03-16 18:28:03', '07-data-model-dynamic', '07_data-model_dynamic', NULL, '<p>It is possible to send custom data objects to the view. This is extremely helpful when making a server side request to a different data source. The response can be transformed into a custom object and then sent to the view to be rendered as normal using the ORM syntax.</p><p>Here, we are building an object based off of fields from the page rather than an object from the database.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(83, 14, 5, 1, 1, 1, 'DP_DataModelLoopingPage', '2016-03-17 19:22:54', '2016-03-16 18:28:38', '08-data-model-looping', '08_data-model_looping', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(84, 14, 6, 1, 1, 1, 'DP_DataModelLoopingPage', '2016-03-17 19:26:22', '2016-03-16 18:28:38', '08-data-model-looping', '08_data-model_looping', NULL, '<p>Looping through items on the view is a very common task that is made easy in SilverStripe. Any ArrayList of ArrayData can be looped through and interacted with using dot operator synax.</p><p>Here we are looping through data objects and displaying their properties.</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(85, 13, 8, 1, 1, 1, 'DP_DataModelDynamicPage', '2016-03-17 19:26:38', '2016-03-16 18:28:03', '07-data-model-dynamic', '07_data-model_dynamic', NULL, '<p>It is possible to send custom data objects to the view. This is extremely helpful when making a server side request to a different data source. The response can be transformed into a custom object and then sent to the view to be rendered as normal using the dot operator synax.</p><p>Here, we are building an object based off of fields from the page rather than an object from the database.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(86, 15, 3, 1, 1, 1, 'DP_ControllerActionsPage', '2016-03-17 19:34:31', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(87, 15, 4, 1, 1, 1, 'DP_ControllerActionsPage', '2016-03-17 19:49:04', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(88, 8, 19, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-17 20:14:19', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(89, 15, 5, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-17 20:36:08', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(90, 15, 6, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 14:13:29', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(91, 15, 7, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 14:21:45', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(92, 15, 8, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 14:27:29', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(93, 15, 9, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 14:27:39', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(94, 15, 10, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 14:27:52', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(95, 15, 11, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 14:28:01', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(96, 15, 12, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 14:58:16', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(97, 15, 13, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 15:03:57', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(98, 15, 14, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 15:26:27', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(99, 15, 15, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 15:36:48', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(100, 15, 16, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 16:29:40', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(101, 15, 17, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 16:29:53', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(102, 15, 18, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 18:18:55', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(103, 15, 19, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 18:22:15', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(104, 15, 20, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 18:23:44', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(105, 15, 21, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 18:23:47', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(106, 15, 22, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 18:23:49', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(107, 15, 23, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 18:23:51', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(108, 15, 24, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 18:24:48', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(109, 15, 25, 1, 1, 1, 'DP_ControllerActionsPage', '2016-03-18 18:44:54', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(110, 14, 7, 1, 1, 1, 'DP_DataModelLoopingPage', '2016-03-18 18:46:01', '2016-03-16 18:28:38', '08-data-model-looping', '08_data-model_looping', NULL, '<p>Looping through items on the view is a very common task that is made easy in SilverStripe. Any ArrayList of ArrayData can be looped through and interacted with using dot operator syntax.</p><p>Here we are looping through data objects and displaying their properties.</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(111, 15, 26, 1, 1, 1, 'DP_ControllerActionsPage', '2016-03-18 18:51:29', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered include.</p><div><strong>Action:</strong></div><pre>public function getobj() {\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"\n</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(112, 15, 27, 1, 1, 1, 'DP_ControllerActionsPage', '2016-03-18 18:52:09', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered include.</p><div><strong>Action:</strong></div><pre>public function getobj() { &lt;br/ &gt;\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');&lt;br/ &gt;\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(113, 15, 28, 1, 1, 1, 'DP_ControllerActionsPage', '2016-03-18 18:55:03', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered include.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(114, 16, 3, 1, 1, 1, 'DP_Image_SetWidthPage', '2016-03-18 19:25:54', '2016-03-16 18:30:17', '10-image-setwidth', '10_image_setwidth', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(115, 16, 4, 1, 1, 1, 'DP_Image_SetWidthPage', '2016-03-18 19:30:08', '2016-03-16 18:30:17', '10-image-setwidth', '10_image_setwidth', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(116, 15, 29, 0, 1, 0, 'DP_ControllerActionsPage', '2016-03-18 19:38:43', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered include.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(117, 16, 5, 1, 1, 1, 'DP_Image_SetWidthPage', '2016-03-21 13:36:42', '2016-03-16 18:30:17', '10-image-setwidth', '10_image_setwidth', NULL, '<p>SilverStripe''s base classes have quite a few utility functions baked in. Image''s have the ability to generate a resampled version with max dimensions determined per the view''s implementation.</p><p>Below we have a 3.5 MB image. It''s maximum possible width is really only 805 px. This means that a lot of extra space is being wasted because it is being scaled down. If we use Image.setWidth(805), then a resampled version of the image is generated saving the user a tremendous amount of request data while having no impact on the quality of the image.</p><p>The resampled image is automatically updated if the source image is ever changed. This allows the CMS Admin to only need to manage the high resolution versions of the image as the view will automatically optimize them.</p>', NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(118, 16, 6, 1, 1, 1, 'DP_Image_SetWidthPage', '2016-03-21 13:38:06', '2016-03-16 18:30:17', '10-image-setwidth', '10_image_setwidth', NULL, '<p>SilverStripe''s base classes have quite a few utility functions baked in. Image''s have the ability to generate a resampled version with max dimensions determined per the view''s implementation.</p><p>Below we have a 3.5 MB image. It''s maximum possible width is really only 815 px. This means that a lot of extra space is being wasted because it is being scaled down. If we use Image.setWidth(815), then a resampled version of the image is generated saving the user a tremendous amount of request data while having no impact on the quality of the image.</p><p>The resampled image is automatically updated if the source image is ever changed. This allows the CMS Admin to only need to manage the high resolution versions of the image as the view will automatically optimize them.</p>', NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(119, 15, 30, 1, 1, 1, 'DP_ControllerActionsPage', '2016-03-21 13:40:13', '2016-03-16 18:28:56', '09-controller-actions', '09_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered include.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(120, 8, 20, 1, 1, 1, 'DP_TemplateControlsPage', '2016-03-21 13:42:48', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6);
INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(121, 17, 3, 1, 1, 1, 'DemonstrationPage', '2016-03-21 13:50:16', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developer will maintain the readability of raw resource files.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(122, 17, 4, 1, 1, 1, 'DemonstrationPage', '2016-03-21 13:50:34', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<blockquote>\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developer will maintain the readability of raw resource files.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(123, 17, 5, 1, 1, 1, 'DemonstrationPage', '2016-03-21 13:50:58', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<div>\n<blockquote>\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developer will maintain the readability of raw resource files.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(124, 17, 6, 1, 1, 1, 'DemonstrationPage', '2016-03-21 13:53:03', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 90%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developer will maintain the readability of raw resource files.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(125, 17, 7, 1, 1, 1, 'DemonstrationPage', '2016-03-21 13:55:03', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 90%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(126, 17, 8, 1, 1, 1, 'DemonstrationPage', '2016-03-21 11:30:08', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 90%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><div><strong>Example: [Right-click -&gt; Inspect Element]</strong></div><div class="developer-assistance-demonstration"> </div>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(127, 17, 9, 1, 1, 1, 'DemonstrationPage', '2016-03-21 13:33:54', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 90%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p><div><strong>Example:</strong></div><div class="developer-assistance-demonstration"> </div>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(128, 17, 10, 1, 1, 1, 'DemonstrationPage', '2016-03-21 13:35:40', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 90%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p><div><strong>Example:</strong></div><div class="developer-assistance-demonstration"> </div><p><a title="Log Out" href="Security/logout" target="_self">Log Out</a></p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(129, 17, 11, 1, 1, 1, 'DemonstrationPage', '2016-03-21 13:36:46', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 90%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p><div><strong>Example:</strong></div><div class="developer-assistance-demonstration"> </div><p><a title="Log Out" href="admin" target="_blank">Log Out</a> / <a title="Log Out" href="Security/logout" target="_self">Log Out</a></p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(130, 17, 12, 1, 1, 1, 'DemonstrationPage', '2016-03-21 13:36:57', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 90%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p><div><strong>Example:</strong></div><div class="developer-assistance-demonstration"> </div><p><a title="Log In" href="admin" target="_blank">Log Out</a> / <a title="Log Out" href="Security/logout" target="_self">Log Out</a></p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(131, 17, 13, 1, 1, 1, 'DemonstrationPage', '2016-03-21 13:37:10', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 90%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p><div><strong>Example:</strong></div><div class="developer-assistance-demonstration"> </div><p><a title="Log In" href="admin" target="_blank">Log In</a> / <a title="Log Out" href="Security/logout" target="_self">Log Out</a></p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(132, 18, 3, 1, 1, 1, 'DP_ModuleExample_GeneratedCSS', '2016-03-21 14:21:20', '2016-03-16 18:31:05', '12-module-example-generated-css', '12_module-example_generated-css', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(133, 18, 4, 1, 1, 1, 'DP_ModuleExample_GeneratedCSS', '2016-03-21 14:22:50', '2016-03-16 18:31:05', '12-module-example-generated-css', '12_module-example_generated-css', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(134, 18, 5, 1, 1, 1, 'DP_ModuleExample_GeneratedCSS', '2016-03-21 14:29:58', '2016-03-16 18:31:05', '12-module-example-generated-css', '12_module-example_generated-css', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(135, 18, 6, 1, 1, 1, 'DP_ModuleExample_GeneratedCSS', '2016-03-21 14:33:01', '2016-03-16 18:31:05', '12-module-example-generated-css', '12_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as a Data Object and storing the class name in the database, the CMD Admin will be able to modify it as they see fit.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(136, 18, 7, 1, 1, 1, 'DP_ModuleExample_GeneratedCSS', '2016-03-21 14:34:07', '2016-03-16 18:31:05', '12-module-example-generated-css', '12_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as a Data Object and storing the class name in the database, the CMD Admin will be able to modify it as they see fit.</p><p>A key point to remember here is that we have very granular control over what options are exposed to the CMS Admin.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(137, 18, 8, 1, 1, 1, 'DP_ModuleExample_GeneratedCSS', '2016-03-21 14:34:41', '2016-03-16 18:31:05', '12-module-example-generated-css', '12_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to push a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as a Data Object and storing the class name in the database, the CMD Admin will be able to modify it as they see fit.</p><p>A key point to remember here is that we have very granular control over what options are exposed to the CMS Admin.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(138, 17, 14, 1, 1, 1, 'DemonstrationPage', '2016-03-21 14:48:05', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 90%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(139, 17, 15, 1, 1, 1, 'DP_DeveloperAssistancePage', '2016-03-21 14:49:39', '2016-03-16 18:30:36', '11-developer-assistance', '11_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 90%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(140, 11, 7, 1, 1, 1, 'DP_DataModelPage', '2016-03-21 14:55:32', '2016-03-16 18:27:12', '03-data-model', '03_data-model', NULL, '<p>Data Objects are objects which hold properties and functions. It is possible to define relationships between Data Objects using:</p><pre>private static $has_one = array();<br>\nprivate static $has_many = array();<br>\nprivate static $many_many = array();<br>\nprivate static $belongs_to = array();<br>\nprivate static $belongs_many_many = array();\n</pre><p>We can interact with these objects using SilverStripe''s ORM.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(141, 12, 9, 1, 1, 1, 'DP_DataModelChildPage', '2016-03-21 14:55:42', '2016-03-16 18:27:33', '04-data-model-inheritance', '04_data-model_inheritance', NULL, '<p>Inheritance is very powerful in SilverStripe. We can perform different data transformations, add extra fields, and add functions.</p><p>Here we are performing a very simple change to the previous Data Object. We are adding the field "Extra" and then doing a data transformation on the function "DoGreeting" to append "Extra" to the end.</p><p>What''s really cool is that because this Page_Controller extends from the previous Page_Controller, it will naturally use the inherited template $Layout until we specific a new one.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(142, 13, 9, 1, 1, 1, 'DP_DataModelDynamicPage', '2016-03-21 14:55:53', '2016-03-16 18:28:03', '05-data-model-dynamic', '05_data-model_dynamic', NULL, '<p>It is possible to send custom data objects to the view. This is extremely helpful when making a server side request to a different data source. The response can be transformed into a custom object and then sent to the view to be rendered as normal using the dot operator synax.</p><p>Here, we are building an object based off of fields from the page rather than an object from the database.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(143, 14, 8, 1, 1, 1, 'DP_DataModelLoopingPage', '2016-03-21 14:56:02', '2016-03-16 18:28:38', '06-data-model-looping', '06_data-model_looping', NULL, '<p>Looping through items on the view is a very common task that is made easy in SilverStripe. Any ArrayList of ArrayData can be looped through and interacted with using dot operator syntax.</p><p>Here we are looping through data objects and displaying their properties.</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(144, 15, 31, 1, 1, 1, 'DP_ControllerActionsPage', '2016-03-21 14:56:16', '2016-03-16 18:28:56', '09-controller-actions', '07_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered include.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(145, 15, 32, 1, 1, 1, 'DP_ControllerActionsPage', '2016-03-21 14:56:55', '2016-03-16 18:28:56', '07-controller-actions', '07_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered include.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(146, 16, 7, 1, 1, 1, 'DP_Image_SetWidthPage', '2016-03-21 14:57:04', '2016-03-16 18:30:17', '08-image-setwidth', '08_image_setwidth', NULL, '<p>SilverStripe''s base classes have quite a few utility functions baked in. Image''s have the ability to generate a resampled version with max dimensions determined per the view''s implementation.</p><p>Below we have a 3.5 MB image. It''s maximum possible width is really only 815 px. This means that a lot of extra space is being wasted because it is being scaled down. If we use Image.setWidth(815), then a resampled version of the image is generated saving the user a tremendous amount of request data while having no impact on the quality of the image.</p><p>The resampled image is automatically updated if the source image is ever changed. This allows the CMS Admin to only need to manage the high resolution versions of the image as the view will automatically optimize them.</p>', NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(147, 17, 16, 1, 1, 1, 'DP_DeveloperAssistancePage', '2016-03-21 14:57:14', '2016-03-16 18:30:36', '09-developer-assistance', '09_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 90%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(148, 18, 9, 1, 1, 1, 'DP_ModuleExample_GeneratedCSS', '2016-03-21 14:57:24', '2016-03-16 18:31:05', '10-module-example-generated-css', '10_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to push a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as a Data Object and storing the class name in the database, the CMD Admin will be able to modify it as they see fit.</p><p>A key point to remember here is that we have very granular control over what options are exposed to the CMS Admin.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(149, 19, 3, 1, 1, 1, 'DemonstrationPage', '2016-03-21 14:57:33', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(150, 13, 10, 1, 1, 1, 'DP_DataModelDynamicPage', '2016-03-21 15:04:36', '2016-03-16 18:28:03', '05-data-model-dynamic', '05_data-model_dynamic', NULL, '<p>It is possible to send custom data objects to the view. This is extremely helpful when making a server side request to a different data source. The response can be transformed into a custom object and then sent to the view to be rendered as normal using ORM.</p><p>Here, we are building an object based off of fields from the page rather than an object from the database.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(151, 14, 9, 1, 1, 2, 'DP_DataModelLoopingPage', '2016-03-21 15:04:50', '2016-03-16 18:28:38', '06-data-model-looping', '06_data-model_looping', NULL, '<p>Looping through items on the view is a very common task that is made easy in SilverStripe. Any ArrayList of ArrayData can be looped through and interacted with using the ORM.</p><p>Here we are looping through data objects and displaying their properties.</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(152, 17, 17, 1, 1, 1, 'DP_DeveloperAssistancePage', '2016-03-21 15:06:48', '2016-03-16 18:30:36', '09-developer-assistance', '09_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 100%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with the flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(153, 17, 18, 1, 1, 1, 'DP_DeveloperAssistancePage', '2016-03-21 15:07:59', '2016-03-16 18:30:36', '09-developer-assistance', '09_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 100%; margin: 0 auto;">\n<p>SilverStripe is not a prepacked solution, but rather a solid base framework with the flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right-click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(154, 19, 4, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 15:38:42', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(155, 19, 5, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 15:45:34', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(156, 19, 6, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 16:41:53', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(157, 19, 7, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 17:33:01', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One real problem with them in standard development is static options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()\n&lt;% loop $Options %&gt;\n$Key="$Value"\n&lt;% end_loop %&gt;\n&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(158, 19, 8, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 17:33:32', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One real problem with them in standard development is static options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n&lt;% loop $Options %&gt;<br>\n$Key="$Value"<br>\n&lt;% end_loop %&gt;<br>\n&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(159, 19, 9, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 17:34:23', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One real problem with them in standard development is static options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n&lt;% loop $Options %&gt;$Key="$Value"<br>&lt;% end_loop %&gt;&gt;<br>&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(160, 19, 10, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 17:34:51', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One real problem with them in standard development is static options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;<br>&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(161, 19, 11, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 17:35:21', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One real problem with them in standard development is static options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(162, 19, 12, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 17:38:46', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One real problem with them in standard development is static options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><p>Because SilverStripe is object-oriented, it also means that we can take advantage of code-reuse by defining the Super Class "Angular Directive". Here on this page we have a "has_one" relationship with "Angular Directive". We can use a multi-class grid-field editor to create any type of Directive that is a child of "Angular Directive" and link it to this page.</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(163, 19, 13, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 17:39:05', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One real problem with them in standard development is static options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><p>Because SilverStripe is object-oriented, it also means that we can take advantage of code-reuse by defining the Super Class "Angular Directive". Here on this page we have a "has_one" relationship with "Angular Directive". We can use a multi-class grid-field editor to create any type of Directive that is a child of "Angular Directive" and link it to this page.</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(164, 19, 14, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 17:39:18', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One real problem with them in standard development is static options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><p>Because SilverStripe is object-oriented, it also means that we can take advantage of code-reuse by defining the Super Class "Angular Directive". Here on this page we have a "has_one" relationship with "Angular Directive". We can use a multi-class grid-field editor to create any type of Directive that is a child of "Angular Directive" and link it to this page.</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(165, 19, 15, 1, 1, 1, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-21 17:40:34', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One real problem with them in standard development is static options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><p>Because SilverStripe is object-oriented, it also means that we can take advantage of code-reuse by defining the Super Class "Angular Directive". Here on this page we have a "has_one" relationship with "Angular Directive". We can use a multi-class grid-field editor to create any type of Directive that is a child of "Angular Directive" and link it to this page.</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n	&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6);
INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(166, 15, 33, 0, 0, 0, 'DP_ControllerActionsPage', '2016-03-22 10:34:58', '2016-03-16 18:28:56', '07-controller-actions', '07_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered include.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(167, 15, 34, 0, 0, 0, 'DP_ControllerActionsPage', '2016-03-22 10:35:06', '2016-03-16 18:28:56', '07-controller-actions', '07_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered include.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(168, 19, 16, 1, 2, 2, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-22 10:38:55', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One real problem with them in standard development is static options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><p>Because SilverStripe is object-oriented, it also means that we can take advantage of code-reuse by defining the Super Class "Angular Directive". Here on this page we have a "has_one" relationship with "Angular Directive". We can use a multi-class grid-field editor to create any type of Directive that is a child of "Angular Directive" and link it to this page.</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n	&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(169, 19, 17, 1, 2, 2, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-23 10:16:22', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One problem with directives is statically-typed options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><p>Because SilverStripe is object-oriented, it also means that we can take advantage of code-reuse by defining the Super Class "Angular Directive". Here on this page we have a "has_one" relationship with "Angular Directive". We can use a multi-class grid-field editor to create any type of Directive that is a child of "Angular Directive" and link it to this page.</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n	&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(170, 18, 10, 1, 2, 2, 'DP_ModuleExample_GeneratedCSS', '2016-03-23 10:23:52', '2016-03-16 18:31:05', '10-module-example-generated-css', '10_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>Here we are generating a CSS file based off of records set in the database. This allows the CMS Admin to change certain style properties without having to push a source code update. Because the generated file is stored on the server, we can still take advantage of caching.</p><p>Likewise, we can use the same sort of methodology when it comes to certain icons. By setting Icons up as a Data Object and storing the class name in the database, the CMS Admin will be able to modify it as they see fit.</p><p>A key point to remember here is that we have very granular control over what options are exposed to the CMS Admin.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(171, 18, 11, 1, 2, 2, 'DP_ModuleExample_GeneratedCSS', '2016-03-23 10:33:45', '2016-03-16 18:31:05', '10-module-example-generated-css', '10_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>A key point to remember here is that we have very granular control over what options are exposed to the CMS Admin.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(172, 18, 12, 1, 2, 2, 'DP_ModuleExample_GeneratedCSS', '2016-03-23 10:36:19', '2016-03-16 18:31:05', '10-module-example-generated-css', '10_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>A key point to remember here is that we have very granular control over what options are exposed to the CMS Admin.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(173, 12, 10, 1, 2, 2, 'DP_DataModelChildPage', '2016-03-23 10:39:31', '2016-03-16 18:27:33', '04-data-model-inheritance', '04_data-model_inheritance', NULL, '<p>Inheritance is very powerful in SilverStripe. We can perform different data transformations, add extra fields, and add functions.</p><p>Here we are performing a very simple change to the previous Data Object class. We are adding the field "Extra" and then doing a data transformation on the function "DoGreeting" to append "Extra" to the end.</p><p>What''s really cool is that because this Page_Controller extends from the previous Page_Controller, it will naturally use the inherited template $Layout until we specific a new one.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(174, 13, 11, 1, 2, 2, 'DP_DataModelDynamicPage', '2016-03-23 10:40:15', '2016-03-16 18:28:03', '05-data-model-dynamic', '05_data-model_dynamic', NULL, '<p>It is possible to send custom data objects to the view. This is extremely helpful when making a server side request to a different data source. The response can be transformed into a custom object and then sent to the view to be rendered as normal using the ORM.</p><p>Here, we are building an object based off of fields from the page rather than an object from the database.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(175, 15, 35, 1, 2, 2, 'DP_ControllerActionsPage', '2016-03-23 10:41:32', '2016-03-16 18:28:56', '07-controller-actions', '07_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered template.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(176, 18, 13, 1, 2, 2, 'DP_ModuleExample_GeneratedCSS', '2016-03-23 11:11:15', '2016-03-16 18:31:05', '10-module-example-generated-css', '10_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>A key point to remember here is that we have very granular control over what options are exposed to the CMS Admin.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(177, 17, 19, 1, 2, 2, 'DP_DeveloperAssistancePage', '2016-03-24 09:40:52', '2016-03-16 18:30:36', '09-developer-assistance', '09_developer_assistance', NULL, '<div>\n<blockquote style="float: none; width: 100%; margin: 0 auto;">\n<p>SilverStripe is not a prepackaged solution, but rather a solid base framework with the flexibility to enable custom implementations.</p>\n</blockquote>\n</div><p>One real advantage of this aspect is when it comes to assisted development. As a CMS Architect, I have the power to create tools to assist and enable CMS Developers. An example of this is how we handle minified files.</p><p>Minified files are essential for web page performance. They keep the request pay loads down to a smaller size and also typically combine multiple requests into one. Although this is perfect for a production environment, it is absolutely terrible for Developers when debugging.</p><p>With a small amount of code, I can deviate from the minified versions of resource files when a CMS Developer is logged in. This means that for the end-user, they will have all the advantages of minified files; but Developers will maintain the readability of raw resource files.</p><p>Below is a square with some CSS rules being set. If we right-click on it and inspect element, we can see the CSS rules in the top-right. Click on the source file. This source file is minified to the public and unminified to CMS Admins.</p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(178, 18, 14, 1, 2, 2, 'DP_ModuleExample_GeneratedCSS', '2016-03-24 09:43:32', '2016-03-16 18:31:05', '10-module-example-generated-css', '10_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>A key point to remember here is that we have very granular control over what options are exposed to the CMS Admin.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(179, 18, 15, 1, 2, 2, 'DP_ModuleExample_GeneratedCSS', '2016-03-24 09:43:49', '2016-03-16 18:31:05', '10-module-example-generated-css', '10_module-example_generated-css', NULL, '<p>SilverStripe is very flexible. It allows the developer the opportunity to really do what we want in order to meet the use case that presents itself.</p><p>A key point to remember here is that we have very granular control over what options are exposed to the CMS Admin.</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(180, 19, 18, 1, 2, 2, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-24 10:16:59', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One problem with directives is statically-typed options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><p>Because SilverStripe is object-oriented, it also means that we can take advantage of code-reuse by defining the Super Class "Angular Directive". Here on this page we have a "has_one" relationship with "Angular Directive". We can use a multi-class grid-field editor to create any type of Directive that is a child of "Angular Directive" and link it to this page.</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n	&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(181, 19, 19, 1, 2, 2, 'DP_ModuleExample_AngularDirectivesPage', '2016-03-24 10:19:05', '2016-03-16 18:31:34', '11-module-example-angular-directives', '11_module-example_angular-directives', NULL, '<p>Directives are very powerful in Angular. Let let us reuse pieces of code all across our website. One problem with directives is statically-typed options. We would normally set up options by hard coding in attributes in the view as below.</p><div><strong>My Static Directive:</strong></div><pre>&lt;my-static-directive option-a="value" option-b="value"&gt;&lt;/my-static-directive&gt;\n</pre><p>This becomes very tedious to update across multiple views if we ever need to change what options are set.</p><p>SilverStripe empowers directive to be more dynamic. Instead of hard coding values into the view, we can expose options to the CMS Administrator. This means that if we ever need to update which options are set, the CMS Administrator can do so from the Administration panel without the need for a source code push. Because we are not changing code, there is little to no risk of introducing a new bug!</p><p>Because SilverStripe is object-oriented, it also means that we can take advantage of code-reuse by defining the Super Class "Angular Directive". Here on this page we have a "has_one" relationship with "Angular Directive". We can use a multi-class grid-field editor to create any type of Directive that is a child of "Angular Directive" and link it to this page.</p><div><strong>My Dynamic Directive Super Class Include:</strong></div><pre>&lt;$ClassName.AngularCase()<br>\n	&lt;% loop $Options %&gt;$Key="$Value"&lt;% end_loop %&gt;<br>&gt;&lt;/$ClassName.AngularCase()&gt;\n</pre>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(182, 15, 36, 0, 0, 0, 'DP_ControllerActionsPage', '2016-03-24 10:40:22', '2016-03-16 18:28:56', '07-controller-actions', '07_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered template.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(183, 7, 19, 1, 2, 2, 'DemonstrationPage', '2016-03-24 14:15:09', '2016-03-16 18:04:52', '01-template-wrapper', '01_template_wrapper', NULL, '<p>SilverStripe makes it very easy to create a Template Wrapper for all of your views.</p><h3>Rather than having to do something awkward like this:</h3><div><strong>header.php</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;\n</pre><div><strong>footer.php</strong></div><pre>&lt;/body&gt;<br>\n&lt;/html&gt;\n</pre><div><strong>index.php</strong></div><pre>&lt;?php include ''header.php'' ?&gt;<br>\n&lt;!-- CONTENT GOES HERE --&gt;<br>\n&lt;?php include ''footer.php'' ?&gt;\n</pre><h3>We can do this:</h3><div><strong>Page.ss</strong></div><pre>&lt;html&gt;<br>\n&lt;head&gt;&lt;/head&gt;<br>\n&lt;body&gt;$Layout&lt;/body&gt;<br>\n&lt;/html&gt;</pre><h3>Benefits:</h3><p>This keeps our html clean and obvious as well as our syntax highlighters happy <span class="fa fa-smile-o"> </span></p><p>It also is great for code reuse because $Layout is relative to the current Controller output which means that our wrapper for Page.php will be used for any Controller that extends from Page_Controller.php</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(184, 8, 21, 1, 2, 2, 'DP_TemplateControlsPage', '2016-03-24 14:47:24', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(185, 8, 22, 1, 2, 2, 'DP_TemplateControlsPage', '2016-03-24 14:52:37', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(186, 8, 23, 1, 2, 2, 'DP_TemplateControlsPage', '2016-03-24 14:52:49', '2016-03-16 18:25:56', '02-template-controls', '02_template_controls', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(187, 15, 37, 0, 2, 0, 'DP_ControllerActionsPage', '2016-03-24 15:03:19', '2016-03-16 18:28:56', '07-controller-actions', '07_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered template.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(188, 15, 38, 0, 2, 0, 'DP_ControllerActionsPage', '2016-03-24 15:03:29', '2016-03-16 18:28:56', '07-controller-actions', '07_controller_actions', NULL, '<p>Controller actions are routes that a request can be sent to and interacted with on the Controller level.</p><p>Using the form below, we can do a simple POST to this Controller''s "setobj" action. The refresh button will do a GET request to this Controller''s "getobj" action.</p><p>What is really awesome is how we can control the return values of each action. The "getobj" action is actually returning a rendered template.</p><div><strong>Action:</strong></div><pre>public function getobj() { <br>\nreturn $this-&gt;renderWith(''DP_ControllerActions_Result'');<br>\n}\n</pre><div><strong>DP_ControllerActions_Result.ss:</strong></div><pre>$FirstName $LastName says,"$Greeting"</pre>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_viewergroups`
--

CREATE TABLE IF NOT EXISTS `sitetree_viewergroups` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `styleobject`
--

CREATE TABLE IF NOT EXISTS `styleobject` (
`ID` int(11) NOT NULL,
  `ClassName` enum('StyleObject','Color') CHARACTER SET utf8 DEFAULT 'StyleObject',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `styleobject`
--

INSERT INTO `styleobject` (`ID`, `ClassName`, `LastEdited`, `Created`) VALUES
(1, 'Color', '2016-03-21 14:04:24', '2016-03-21 14:04:24'),
(2, 'Color', '2016-03-21 14:04:24', '2016-03-21 14:04:24'),
(3, 'Color', '2016-03-21 14:04:25', '2016-03-21 14:04:25'),
(4, 'Color', '2016-03-21 14:04:25', '2016-03-21 14:04:25'),
(5, 'Color', '2016-03-21 14:04:25', '2016-03-21 14:04:25'),
(6, 'Color', '2016-03-21 14:04:25', '2016-03-21 14:04:25'),
(7, 'Color', '2016-03-21 14:04:26', '2016-03-21 14:04:26'),
(8, 'Color', '2016-03-21 14:04:26', '2016-03-21 14:04:26'),
(9, 'Color', '2016-03-21 14:04:26', '2016-03-21 14:04:26'),
(10, 'Color', '2016-03-21 14:04:27', '2016-03-21 14:04:27'),
(11, 'Color', '2016-03-21 14:04:27', '2016-03-21 14:04:27'),
(12, 'Color', '2016-03-21 14:04:28', '2016-03-21 14:04:28'),
(13, 'Color', '2016-03-21 14:04:28', '2016-03-21 14:04:28'),
(14, 'Color', '2016-03-21 14:04:28', '2016-03-21 14:04:28'),
(15, 'Color', '2016-03-21 14:04:29', '2016-03-21 14:04:29'),
(16, 'Color', '2016-03-21 14:04:29', '2016-03-21 14:04:29'),
(17, 'Color', '2016-03-21 14:04:30', '2016-03-21 14:04:30'),
(18, 'Color', '2016-03-21 14:04:30', '2016-03-21 14:04:30'),
(19, 'Color', '2016-03-21 14:04:31', '2016-03-21 14:04:31'),
(20, 'Color', '2016-03-21 14:04:31', '2016-03-21 14:04:31'),
(21, 'Color', '2016-03-21 14:04:32', '2016-03-21 14:04:32'),
(22, 'Color', '2016-03-21 14:04:32', '2016-03-21 14:04:32'),
(23, 'Color', '2016-03-21 14:04:33', '2016-03-21 14:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `toggledirective`
--

CREATE TABLE IF NOT EXISTS `toggledirective` (
`ID` int(11) NOT NULL,
  `PrimaryContent` mediumtext CHARACTER SET utf8,
  `SecondaryContent` mediumtext CHARACTER SET utf8,
  `IconID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `toggledirective`
--

INSERT INTO `toggledirective` (`ID`, `PrimaryContent`, `SecondaryContent`, `IconID`) VALUES
(1, '<p>Hello, this is example text to demonstrate an Angular Directive.</p>', '<p>Hola, este es un ejemplo de texto para demostrar una Directiva angular.</p>', 14);

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage`
--

CREATE TABLE IF NOT EXISTS `virtualpage` (
`ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_live`
--

CREATE TABLE IF NOT EXISTS `virtualpage_live` (
`ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_versions`
--

CREATE TABLE IF NOT EXISTS `virtualpage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angulardirective`
--
ALTER TABLE `angulardirective`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`), ADD KEY `PageID` (`PageID`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dp_controlleractionspage`
--
ALTER TABLE `dp_controlleractionspage`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dp_controlleractionspage_live`
--
ALTER TABLE `dp_controlleractionspage_live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dp_controlleractionspage_versions`
--
ALTER TABLE `dp_controlleractionspage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `dp_datamodelchildpage`
--
ALTER TABLE `dp_datamodelchildpage`
 ADD PRIMARY KEY (`ID`), ADD KEY `ActiveItemID` (`ActiveItemID`);

--
-- Indexes for table `dp_datamodelchildpage_live`
--
ALTER TABLE `dp_datamodelchildpage_live`
 ADD PRIMARY KEY (`ID`), ADD KEY `ActiveItemID` (`ActiveItemID`);

--
-- Indexes for table `dp_datamodelchildpage_versions`
--
ALTER TABLE `dp_datamodelchildpage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ActiveItemID` (`ActiveItemID`);

--
-- Indexes for table `dp_datamodeldynamicpage`
--
ALTER TABLE `dp_datamodeldynamicpage`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dp_datamodeldynamicpage_live`
--
ALTER TABLE `dp_datamodeldynamicpage_live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dp_datamodeldynamicpage_versions`
--
ALTER TABLE `dp_datamodeldynamicpage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `dp_datamodelpage`
--
ALTER TABLE `dp_datamodelpage`
 ADD PRIMARY KEY (`ID`), ADD KEY `ActiveItemID` (`ActiveItemID`);

--
-- Indexes for table `dp_datamodelpage_live`
--
ALTER TABLE `dp_datamodelpage_live`
 ADD PRIMARY KEY (`ID`), ADD KEY `ActiveItemID` (`ActiveItemID`);

--
-- Indexes for table `dp_datamodelpage_versions`
--
ALTER TABLE `dp_datamodelpage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ActiveItemID` (`ActiveItemID`);

--
-- Indexes for table `dp_image_setwidthpage`
--
ALTER TABLE `dp_image_setwidthpage`
 ADD PRIMARY KEY (`ID`), ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `dp_image_setwidthpage_live`
--
ALTER TABLE `dp_image_setwidthpage_live`
 ADD PRIMARY KEY (`ID`), ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `dp_image_setwidthpage_versions`
--
ALTER TABLE `dp_image_setwidthpage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `dp_moduleexample_angulardirectivespage`
--
ALTER TABLE `dp_moduleexample_angulardirectivespage`
 ADD PRIMARY KEY (`ID`), ADD KEY `ActiveDirectiveID` (`ActiveDirectiveID`);

--
-- Indexes for table `dp_moduleexample_angulardirectivespage_live`
--
ALTER TABLE `dp_moduleexample_angulardirectivespage_live`
 ADD PRIMARY KEY (`ID`), ADD KEY `ActiveDirectiveID` (`ActiveDirectiveID`);

--
-- Indexes for table `dp_moduleexample_angulardirectivespage_versions`
--
ALTER TABLE `dp_moduleexample_angulardirectivespage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ActiveDirectiveID` (`ActiveDirectiveID`);

--
-- Indexes for table `dp_moduleexample_generatedcss`
--
ALTER TABLE `dp_moduleexample_generatedcss`
 ADD PRIMARY KEY (`ID`), ADD KEY `MyColorID` (`MyColorID`), ADD KEY `MyIconID` (`MyIconID`);

--
-- Indexes for table `dp_moduleexample_generatedcss_live`
--
ALTER TABLE `dp_moduleexample_generatedcss_live`
 ADD PRIMARY KEY (`ID`), ADD KEY `MyColorID` (`MyColorID`), ADD KEY `MyIconID` (`MyIconID`);

--
-- Indexes for table `dp_moduleexample_generatedcss_versions`
--
ALTER TABLE `dp_moduleexample_generatedcss_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `MyColorID` (`MyColorID`), ADD KEY `MyIconID` (`MyIconID`);

--
-- Indexes for table `dp_templatecontrolspage`
--
ALTER TABLE `dp_templatecontrolspage`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dp_templatecontrolspage_live`
--
ALTER TABLE `dp_templatecontrolspage_live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dp_templatecontrolspage_versions`
--
ALTER TABLE `dp_templatecontrolspage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `errorpage`
--
ALTER TABLE `errorpage`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `errorpage_live`
--
ALTER TABLE `errorpage_live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `errorpage_versions`
--
ALTER TABLE `errorpage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `exampledatamodel`
--
ALTER TABLE `exampledatamodel`
 ADD PRIMARY KEY (`ID`), ADD KEY `PageID` (`PageID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `exampledatamodelchild`
--
ALTER TABLE `exampledatamodelchild`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `exampleloopingitem`
--
ALTER TABLE `exampleloopingitem`
 ADD PRIMARY KEY (`ID`), ADD KEY `AvatarID` (`AvatarID`), ADD KEY `PageID` (`PageID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `OwnerID` (`OwnerID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `group_roles`
--
ALTER TABLE `group_roles`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `icon`
--
ALTER TABLE `icon`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `loginattempt`
--
ALTER TABLE `loginattempt`
 ADD PRIMARY KEY (`ID`), ADD KEY `MemberID` (`MemberID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
 ADD PRIMARY KEY (`ID`), ADD KEY `Email` (`Email`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `memberpassword`
--
ALTER TABLE `memberpassword`
 ADD PRIMARY KEY (`ID`), ADD KEY `MemberID` (`MemberID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `pdfviewerdirective`
--
ALTER TABLE `pdfviewerdirective`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `Code` (`Code`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `permissionrole`
--
ALTER TABLE `permissionrole`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `permissionrolecode`
--
ALTER TABLE `permissionrolecode`
 ADD PRIMARY KEY (`ID`), ADD KEY `RoleID` (`RoleID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `redirectorpage`
--
ALTER TABLE `redirectorpage`
 ADD PRIMARY KEY (`ID`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `redirectorpage_live`
--
ALTER TABLE `redirectorpage_live`
 ADD PRIMARY KEY (`ID`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `redirectorpage_versions`
--
ALTER TABLE `redirectorpage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `siteconfig`
--
ALTER TABLE `siteconfig`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `siteconfig_createtoplevelgroups`
--
ALTER TABLE `siteconfig_createtoplevelgroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `siteconfig_editorgroups`
--
ALTER TABLE `siteconfig_editorgroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `siteconfig_viewergroups`
--
ALTER TABLE `siteconfig_viewergroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `sitetree`
--
ALTER TABLE `sitetree`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `sitetree_editorgroups`
--
ALTER TABLE `sitetree_editorgroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `sitetree_imagetracking`
--
ALTER TABLE `sitetree_imagetracking`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `sitetree_linktracking`
--
ALTER TABLE `sitetree_linktracking`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `sitetree_live`
--
ALTER TABLE `sitetree_live`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `sitetree_versions`
--
ALTER TABLE `sitetree_versions`
 ADD PRIMARY KEY (`ID`), ADD KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `AuthorID` (`AuthorID`), ADD KEY `PublisherID` (`PublisherID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `sitetree_viewergroups`
--
ALTER TABLE `sitetree_viewergroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `styleobject`
--
ALTER TABLE `styleobject`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `toggledirective`
--
ALTER TABLE `toggledirective`
 ADD PRIMARY KEY (`ID`), ADD KEY `IconID` (`IconID`);

--
-- Indexes for table `virtualpage`
--
ALTER TABLE `virtualpage`
 ADD PRIMARY KEY (`ID`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `virtualpage_live`
--
ALTER TABLE `virtualpage_live`
 ADD PRIMARY KEY (`ID`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `virtualpage_versions`
--
ALTER TABLE `virtualpage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `angulardirective`
--
ALTER TABLE `angulardirective`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `dp_controlleractionspage`
--
ALTER TABLE `dp_controlleractionspage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `dp_controlleractionspage_live`
--
ALTER TABLE `dp_controlleractionspage_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `dp_controlleractionspage_versions`
--
ALTER TABLE `dp_controlleractionspage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `dp_datamodelchildpage`
--
ALTER TABLE `dp_datamodelchildpage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dp_datamodelchildpage_live`
--
ALTER TABLE `dp_datamodelchildpage_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dp_datamodelchildpage_versions`
--
ALTER TABLE `dp_datamodelchildpage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dp_datamodeldynamicpage`
--
ALTER TABLE `dp_datamodeldynamicpage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `dp_datamodeldynamicpage_live`
--
ALTER TABLE `dp_datamodeldynamicpage_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `dp_datamodeldynamicpage_versions`
--
ALTER TABLE `dp_datamodeldynamicpage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `dp_datamodelpage`
--
ALTER TABLE `dp_datamodelpage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dp_datamodelpage_live`
--
ALTER TABLE `dp_datamodelpage_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dp_datamodelpage_versions`
--
ALTER TABLE `dp_datamodelpage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dp_image_setwidthpage`
--
ALTER TABLE `dp_image_setwidthpage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `dp_image_setwidthpage_live`
--
ALTER TABLE `dp_image_setwidthpage_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `dp_image_setwidthpage_versions`
--
ALTER TABLE `dp_image_setwidthpage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dp_moduleexample_angulardirectivespage`
--
ALTER TABLE `dp_moduleexample_angulardirectivespage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `dp_moduleexample_angulardirectivespage_live`
--
ALTER TABLE `dp_moduleexample_angulardirectivespage_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `dp_moduleexample_angulardirectivespage_versions`
--
ALTER TABLE `dp_moduleexample_angulardirectivespage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `dp_moduleexample_generatedcss`
--
ALTER TABLE `dp_moduleexample_generatedcss`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `dp_moduleexample_generatedcss_live`
--
ALTER TABLE `dp_moduleexample_generatedcss_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `dp_moduleexample_generatedcss_versions`
--
ALTER TABLE `dp_moduleexample_generatedcss_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `dp_templatecontrolspage`
--
ALTER TABLE `dp_templatecontrolspage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `dp_templatecontrolspage_live`
--
ALTER TABLE `dp_templatecontrolspage_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `dp_templatecontrolspage_versions`
--
ALTER TABLE `dp_templatecontrolspage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `errorpage`
--
ALTER TABLE `errorpage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `errorpage_live`
--
ALTER TABLE `errorpage_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `errorpage_versions`
--
ALTER TABLE `errorpage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exampledatamodel`
--
ALTER TABLE `exampledatamodel`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `exampledatamodelchild`
--
ALTER TABLE `exampledatamodelchild`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `exampleloopingitem`
--
ALTER TABLE `exampleloopingitem`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `group_roles`
--
ALTER TABLE `group_roles`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `icon`
--
ALTER TABLE `icon`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `loginattempt`
--
ALTER TABLE `loginattempt`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `memberpassword`
--
ALTER TABLE `memberpassword`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pdfviewerdirective`
--
ALTER TABLE `pdfviewerdirective`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permissionrole`
--
ALTER TABLE `permissionrole`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissionrolecode`
--
ALTER TABLE `permissionrolecode`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `redirectorpage`
--
ALTER TABLE `redirectorpage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `redirectorpage_live`
--
ALTER TABLE `redirectorpage_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `redirectorpage_versions`
--
ALTER TABLE `redirectorpage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `siteconfig`
--
ALTER TABLE `siteconfig`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `siteconfig_createtoplevelgroups`
--
ALTER TABLE `siteconfig_createtoplevelgroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `siteconfig_editorgroups`
--
ALTER TABLE `siteconfig_editorgroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `siteconfig_viewergroups`
--
ALTER TABLE `siteconfig_viewergroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sitetree`
--
ALTER TABLE `sitetree`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `sitetree_editorgroups`
--
ALTER TABLE `sitetree_editorgroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sitetree_imagetracking`
--
ALTER TABLE `sitetree_imagetracking`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sitetree_linktracking`
--
ALTER TABLE `sitetree_linktracking`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sitetree_live`
--
ALTER TABLE `sitetree_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `sitetree_versions`
--
ALTER TABLE `sitetree_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `sitetree_viewergroups`
--
ALTER TABLE `sitetree_viewergroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `styleobject`
--
ALTER TABLE `styleobject`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `toggledirective`
--
ALTER TABLE `toggledirective`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `virtualpage`
--
ALTER TABLE `virtualpage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `virtualpage_live`
--
ALTER TABLE `virtualpage_live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `virtualpage_versions`
--
ALTER TABLE `virtualpage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
