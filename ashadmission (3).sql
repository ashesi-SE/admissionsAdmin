-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2014 at 09:48 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ashadmission`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE IF NOT EXISTS `admissions` (
  `admission_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `major` varchar(255) NOT NULL,
  `applied_before` tinyint(1) NOT NULL,
  `applied_before_year` date DEFAULT NULL,
  `wants_housing` tinyint(1) NOT NULL,
  `wants_fin_aid` tinyint(1) NOT NULL,
  `has_ashesi_siblings` tinyint(1) NOT NULL,
  `has_sponsor` tinyint(1) NOT NULL,
  `dismissed_before` tinyint(1) NOT NULL,
  `dismissed_institution_name` varchar(255) DEFAULT NULL,
  `dismissed_institution_location` varchar(255) DEFAULT NULL,
  `dismissed_explanation` text,
  `primary_language` text NOT NULL,
  `scholastic_distinction` text,
  `career` text NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`admission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='admission details needed from applicant';

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`admission_id`, `application_id`, `major`, `applied_before`, `applied_before_year`, `wants_housing`, `wants_fin_aid`, `has_ashesi_siblings`, `has_sponsor`, `dismissed_before`, `dismissed_institution_name`, `dismissed_institution_location`, `dismissed_explanation`, `primary_language`, `scholastic_distinction`, `career`, `creator`, `created`, `modified`) VALUES
('1414423769710', '1414423729155', 'Business Administration', 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, '3whjesd', '', 'dxxs', '1414408457505', '2014-11-11 11:43:18', '2014-11-11 11:43:18'),
('1414428826753', '1414428115098', 'Business Administration', 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'jkjk', '', 'jk', '1414404550867', '2014-10-28 16:30:31', '2014-10-28 16:30:31'),
('1414488761637', '1414424134786', 'Management Information Systems', 1, NULL, 1, 1, 1, 1, 0, NULL, NULL, NULL, 'English', '', 'Astronaut', '1414405980170', '2014-11-12 09:32:16', '2014-11-12 09:32:16'),
('1415187399350', '1415182561814', 'Engineering', 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, 'TWI', 'OUTSTANDING STUDENT PRIZE, ENTERTAINMENT PREFECT', 'LAWYER', '1415184962726', '2014-11-05 16:41:33', '2014-11-05 16:41:33'),
('1415874816941', '1415873761343', 'Computer Science', 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'English', '', 'Computer scientist', '1415879377257', '2014-11-13 10:34:13', '2014-11-13 10:34:13'),
('1416418097430', '1416417330382', 'Business Administration', 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, 'English', 'I have a UACE certificate that is awarded in my country to a candidate who finishes High school.', 'I want to become an economic doctor, so that i can treat any Economy of any country in the world.', '1416416464432', '2014-11-19 17:28:16', '2014-11-19 17:28:16'),
('1416418836613', '1416418137702', 'Business Administration', 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, 'English', 'In 2010, I received an award as the best accounting student in Wesley Girls'' High School. I also received an award and for obtaining 8A1s in the West African Senior Secondary Certificate Examination', 'Enterpreneur', '1416424201932', '2014-11-19 17:40:36', '2014-11-19 17:40:36'),
('1416565603888', '1416394706038', 'Business Administration', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, 'sd', '', 'sad', '1414404550867', '2014-11-28 16:56:02', '2014-11-28 16:56:02'),
('1416846050755', '1416844886581', 'Business Administration', 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, 'English', 'Best Overall Student\r\nProvincial Merit Award\r\nAcademic Honors', 'Investment Banking\r\nPolitics\r\nInternational diplomacy', '1416849383061', '2014-11-24 16:20:50', '2014-11-24 16:20:50'),
('1417196401907', '1417195595410', 'Business Administration', 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, 'English', 'Top Girl-Narok North District Kenya Certificate of Secondary Education', 'I want to work to work in a global investment bank', '1417201533240', '2014-11-28 17:40:01', '2014-11-28 17:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE IF NOT EXISTS `applicants` (
  `applicant_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `first_names` varchar(255) NOT NULL,
  `middle_names` varchar(255) DEFAULT NULL,
  `last_names` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` set('FEMALE','MALE') NOT NULL,
  `citizenship_primary` varchar(120) NOT NULL,
  `citizenship_secondary` varchar(120) DEFAULT NULL,
  `passport_primary` varchar(120) DEFAULT NULL,
  `passport_primary_expiration` date DEFAULT NULL,
  `passport_secondary` varchar(120) DEFAULT NULL,
  `passport_secondary_expiration` date DEFAULT NULL,
  `phone_primary` varchar(20) NOT NULL,
  `phone_secondary` varchar(20) DEFAULT NULL,
  `email_primary` varchar(120) NOT NULL,
  `email_secondary` varchar(120) DEFAULT NULL,
  `street_address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postal_address` varchar(255) DEFAULT NULL,
  `lives_with` set('Myself','Parents/Guardians','Orphanage') NOT NULL DEFAULT 'Myself',
  `picture_url` varchar(255) NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`applicant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='applicant personal info db';

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`applicant_id`, `application_id`, `first_names`, `middle_names`, `last_names`, `dob`, `gender`, `citizenship_primary`, `citizenship_secondary`, `passport_primary`, `passport_primary_expiration`, `passport_secondary`, `passport_secondary_expiration`, `phone_primary`, `phone_secondary`, `email_primary`, `email_secondary`, `street_address`, `city`, `region`, `country`, `postal_address`, `lives_with`, `picture_url`, `creator`, `created`, `modified`) VALUES
('1414488080858', '1414424134786', 'Frederick', 'Nii', 'Welbeck', '1984-12-12', 'MALE', 'Georgia', '', '', NULL, '', NULL, '+2332028330214', '', 'fwelbeck@ashesi.edu.gh', '', 'Onion Close', 'Teshie-Nungua ', 'Greater Accra', 'Ghana', 'P.O.BOX TN 845', 'Myself', '../files/1414424134786/picture.jpg', '1414405980170', '2014-11-12 09:24:41', '2014-11-12 09:24:41'),
('1414493090242', '1414423729155', 'Zeina', 'Yamoaba', 'Kowalski', '1839-03-11', 'FEMALE', 'Haiti', 'Democratic Republic of Congo', '7689804379843', '4392-07-31', '', NULL, '34231234', '', 'zeina.kowalski@ashesi.edu.gh', '', '4532', '3245', '34', 'Gabon', 'sdfg', 'Parents/Guardians', '../files/1414423729155/picture.jpg', '1414408457505', '2014-11-11 15:05:29', '2014-11-11 15:05:29'),
('1414498617466', '1414428115098', 'Daniel', 'Nii Tettey', 'Botchway', '1992-02-07', 'MALE', 'Gambia', '', '', NULL, '', NULL, '0276879156', '', 'daniel.botchway@ashesi.edu.gh', '', '123', 'kejetia', 'ashanti', 'Ghana', '', 'Myself', '../files/1414428115098/picture.jpg', '1414404550867', '2014-11-13 12:42:25', '2014-11-13 12:42:25'),
('1415205521340', '1415182561814', 'Mavis ', 'Asieduwa', 'Jamena', '2014-11-15', 'FEMALE', 'Ghana', '', '', NULL, '', NULL, '02768791343', '', 'mjamena@ashesi.edu.gh', '', '123', 'SD', 'FD', 'Ghana', '', 'Myself', '../files/1415182561814/picture.jpg', '1415184962726', '2014-11-05 16:41:08', '2014-11-05 16:41:08'),
('1415874604593', '1415873761343', 'Daniel', 'Nii Tettey', 'Botchway', '2010-11-03', 'MALE', 'Georgia', '', '', NULL, '', NULL, '0276879156', '', 'botchwaydan@gmail.com', '', '123', 'kejetia', 'ashanti', 'Ghana', '', 'Parents/Guardians', '../files/1415873761343/picture.jpg', '1415879377257', '2014-11-13 11:21:23', '2014-11-13 11:21:23'),
('1416418600656', '1416418137702', 'Dorcas', 'Afia', 'Amoh-Mensah', '1993-11-19', 'FEMALE', 'Ghana', '', '', NULL, '', NULL, '+233274731797', '', 'mensahdorcas98@gmail.com', '', 'Nautical Road, Nungua-Kantamanto', 'Nungua', 'Accra', 'Ghana', 'P.O.Box 156, Kaneshie', 'Parents/Guardians', '../files/1416418137702/picture.jpg', '1416424201932', '2014-11-19 17:36:40', '2014-11-19 17:36:40'),
('1416566503985', '1416394706038', 'Daniel', 'Nii Tettey', 'Botchway', '2014-11-07', 'MALE', 'Gabon', '', '', NULL, '', NULL, '0276879156', '', 'daniel.botchway@ashesi.edu.gh', '', '23', 'kejetia', 'ashanti', 'Ghana', '', 'Myself', '../files/1416394706038/picture.jpg', '1414404550867', '2014-11-21 10:55:16', '2014-11-21 10:55:16'),
('1417196206042', '1417195595410', 'Damaris', 'Silantoi', 'Olting''idi', '1993-05-04', 'FEMALE', 'Kenya', 'Kenya', 'A2036488', '2023-09-30', '', NULL, '+233267172430', '', 'damarissilantoi@yahoo.com', '', 'none', 'Kajiado', 'Nairobi', 'Ghana', 'PMB CT3', 'Myself', '../files/1417195595410/picture.JPG', '1417201533240', '2014-11-28 17:36:45', '2014-11-28 17:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
  `application_id` varchar(120) NOT NULL,
  `season_id` varchar(120) NOT NULL,
  `applicant_id` varchar(120) DEFAULT NULL,
  `admission_id` varchar(120) DEFAULT NULL,
  `school_info_set` tinyint(1) DEFAULT NULL,
  `acceptance` set('UNDECIDED','ACCEPTED','DENIED','WAIT-LISTED') NOT NULL DEFAULT 'UNDECIDED',
  `document_info_set` tinyint(1) DEFAULT NULL,
  `extracurricular_info_set` tinyint(1) DEFAULT NULL,
  `fa_application_id` varchar(120) DEFAULT NULL,
  `relative_info_set` tinyint(1) DEFAULT NULL,
  `payment_id` varchar(120) DEFAULT NULL,
  `other_college_info_set` tinyint(1) DEFAULT NULL,
  `result_id` varchar(120) DEFAULT NULL,
  `travel_info_set` tinyint(1) DEFAULT NULL,
  `work_info_set` tinyint(1) DEFAULT NULL,
  `status` set('NEW','INCOMPLETE','COMPLETED','SUBMITTED') NOT NULL DEFAULT 'NEW',
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`application_id`, `season_id`, `applicant_id`, `admission_id`, `school_info_set`, `acceptance`, `document_info_set`, `extracurricular_info_set`, `fa_application_id`, `relative_info_set`, `payment_id`, `other_college_info_set`, `result_id`, `travel_info_set`, `work_info_set`, `status`, `creator`, `created`, `modified`) VALUES
('1414423729155', '1413463107940', '1414493090242', '1414423769710', NULL, 'UNDECIDED', 1, NULL, '1414493014472', NULL, NULL, NULL, NULL, NULL, NULL, 'NEW', '1414408457505', '2014-10-27 15:28:48', '2014-11-12 09:48:16'),
('1414424134786', '1413463107940', '1414488080858', '1414488761637', 1, 'UNDECIDED', 1, 1, '1414492003910', 1, NULL, NULL, NULL, 1, 0, 'NEW', '1414405980170', '2014-10-27 15:35:33', '2014-11-12 11:20:29'),
('1414428115098', '1413463107940', '1414498617466', '1414428826753', 1, 'UNDECIDED', NULL, 0, '1414428932319', NULL, NULL, NULL, NULL, NULL, 0, 'NEW', '1414404550867', '2014-10-27 16:41:54', '2014-10-29 10:38:37'),
('1415182561814', '1413463107940', '1415205521340', '1415187399350', NULL, 'UNDECIDED', NULL, 1, NULL, 1, NULL, NULL, NULL, 1, 1, 'NEW', '1415184962726', '2014-11-05 10:16:01', '2014-11-05 16:59:27'),
('1415873761343', '1413463107940', '1415874604593', '1415874816941', NULL, 'UNDECIDED', 1, NULL, '1415875482209', NULL, NULL, NULL, NULL, NULL, NULL, 'NEW', '1415879377257', '2014-11-13 10:16:00', '2014-11-13 10:44:42'),
('1416394706038', '1416327912207', '1416566503985', '1416565603888', NULL, 'UNDECIDED', NULL, NULL, '1417193777564', NULL, NULL, NULL, NULL, NULL, NULL, 'NEW', '1414404550867', '2014-11-19 10:58:26', '2014-11-28 16:56:17'),
('1416417330382', '1416327912207', '1416426557910', '1416418097430', 1, 'UNDECIDED', 1, 1, NULL, 1, NULL, NULL, NULL, 1, 1, 'NEW', '1416416464432', '2014-11-19 17:15:29', '2014-11-19 19:49:17'),
('1416418137702', '1416327912207', '1416418600656', '1416418836613', 1, 'UNDECIDED', 1, 1, '1416421801621', 1, NULL, NULL, NULL, NULL, 1, 'NEW', '1416424201932', '2014-11-19 17:28:57', '2014-11-19 18:52:19'),
('1416844886581', '1416327912207', '1416845224800', '1416846050755', NULL, 'UNDECIDED', NULL, NULL, '1416865019358', NULL, NULL, NULL, NULL, NULL, NULL, 'NEW', '1416849383061', '2014-11-24 16:01:25', '2014-11-24 21:36:58'),
('1417195595410', '1416327912207', '1417196206042', '1417196401907', NULL, 'UNDECIDED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NEW', '1417201533240', '2014-11-28 17:26:35', '2014-11-28 17:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `ashesi_siblings`
--

CREATE TABLE IF NOT EXISTS `ashesi_siblings` (
  `ashesi_sibling_id` varchar(120) NOT NULL,
  `admission_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `name` varchar(255) NOT NULL,
  `relationship` varchar(120) NOT NULL,
  `year` date DEFAULT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`ashesi_sibling_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ashesi students related to this applicant';

--
-- Dumping data for table `ashesi_siblings`
--

INSERT INTO `ashesi_siblings` (`ashesi_sibling_id`, `admission_id`, `application_id`, `name`, `relationship`, `year`, `creator`, `created`, `modified`) VALUES
('1415784736956', '1414488761637', '1414424134786', 'Mavis Jamena', 'Niece', '1969-02-03', '1414405980170', '2014-11-12 09:32:16', '2014-11-12 09:32:16'),
('1415784737396', '1414488761637', '1414424134786', 'Daniel Botchway', 'Cousin', '1975-04-30', '1414405980170', '2014-11-12 09:32:16', '2014-11-12 09:32:16'),
('1417193763091', '1416565603888', '1416394706038', 'asd', 'Aunt', '2014-11-11', '1414404550867', '2014-11-28 16:56:03', '2014-11-28 16:56:03'),
('1417193763422', '1416565603888', '1416394706038', 'sd', 'Step-father', '2014-11-04', '1414404550867', '2014-11-28 16:56:03', '2014-11-28 16:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE IF NOT EXISTS `campaigns` (
  `campaign_id` varchar(120) NOT NULL,
  `admission_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `newspaper` tinyint(1) NOT NULL,
  `television` tinyint(1) NOT NULL,
  `radio` tinyint(1) NOT NULL,
  `website` tinyint(1) NOT NULL,
  `social_media` tinyint(1) NOT NULL,
  `friend` tinyint(1) NOT NULL,
  `ashesi_parent` tinyint(1) NOT NULL,
  `teacher_counselor` tinyint(1) NOT NULL,
  `ashesi_student` tinyint(1) NOT NULL,
  `ashesi_alumni` tinyint(1) NOT NULL,
  `others` varchar(255) NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='which campaign avenue did the applicant get to know of ashes';

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`campaign_id`, `admission_id`, `application_id`, `newspaper`, `television`, `radio`, `website`, `social_media`, `friend`, `ashesi_parent`, `teacher_counselor`, `ashesi_student`, `ashesi_alumni`, `others`, `creator`, `created`, `modified`) VALUES
('1414423769443', '1414423769710', '1414423729155', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '1414408457505', '2014-11-11 11:43:18', '2014-11-11 11:43:18'),
('1414428827349', '1414428826753', '1414428115098', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '1414404550867', '2014-10-28 16:30:31', '2014-10-28 16:30:31'),
('1414488760979', '1414488761637', '1414424134786', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', '1414405980170', '2014-11-12 09:32:16', '2014-11-12 09:32:16'),
('1415187399077', '1415187399350', '1415182561814', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '1415184962726', '2014-11-05 16:41:33', '2014-11-05 16:41:33'),
('1415874816608', '1415874816941', '1415873761343', 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, '', '1415879377257', '2014-11-13 10:34:13', '2014-11-13 10:34:13'),
('1416418097559', '1416418097430', '1416417330382', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', '1416416464432', '2014-11-19 17:28:16', '2014-11-19 17:28:16'),
('1416418836855', '1416418836613', '1416418137702', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Ashesi Campus Presentation', '1416424201932', '2014-11-19 17:40:36', '2014-11-19 17:40:36'),
('1416565604666', '1416565603888', '1416394706038', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '1414404550867', '2014-11-28 16:56:02', '2014-11-28 16:56:02'),
('1416846051106', '1416846050755', '1416844886581', 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, '', '1416849383061', '2014-11-24 16:20:50', '2014-11-24 16:20:50'),
('1417196402083', '1417196401907', '1417195595410', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'equity college counselling program', '1417201533240', '2014-11-28 17:40:01', '2014-11-28 17:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `country_codes`
--

CREATE TABLE IF NOT EXISTS `country_codes` (
  `country_code_id` varchar(120) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `flag_code` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='country details';

--
-- Dumping data for table `country_codes`
--

INSERT INTO `country_codes` (`country_code_id`, `country`, `zone`, `flag_code`, `country_code`, `enabled`) VALUES
('1413383970', 'Georgia', 'East Europe', 'GEO', 'GE', 1),
('1413389282', 'Cape Verde', 'Africa', 'CPV', 'CV', 1),
('1413389812', 'Kiribati', 'Pacific', 'KIR', 'KI', 1),
('1413397606', 'Eritrea', 'Middle east', 'ERI', 'ER', 1),
('1413404515', 'Canada', 'North America', 'CAN', 'CA', 1),
('1413409889', 'Estonia', 'East Europe', 'EST', 'EE', 1),
('1413411677', 'Norfolk Island', 'Pacific', 'NFK', 'NF', 1),
('1413413955', 'New Caledonia', 'Pacific', 'NCL', 'NC', 1),
('1413422978', 'Malaysia', 'Asia', 'MYS', 'MY', 1),
('1413423996', 'Japan', 'Asia', 'JPN', 'JP', 1),
('1413424565', 'Guam (US)', 'Pacific', 'GUM', 'GU', 1),
('1413425371', 'Belize', 'Caraibes', 'BLZ', 'BZ', 1),
('1413459350', 'Papua New Guinea', 'Asia', 'PNG', 'PG', 1),
('1413460122', 'South Sudan', 'Africa', 'SSD', 'SS', 1),
('1413462582', 'Turks and Caicos Islands', 'Caraibes', 'TCA', 'TC', 1),
('1413468732', 'Bouvet Island', 'Antarctica', 'BVT', 'BV', 1),
('1413470207', 'Chad', 'Africa', 'TCD', 'TD', 1),
('1413472025', 'Thailand', 'Asia', 'THA', 'TH', 1),
('1413473424', 'Mexico', 'South and central America', 'MEX', 'MX', 1),
('1413474311', 'Finland', 'Occidental Europe', 'FIN', 'FI', 1),
('1413475983', 'Tokelau', 'Pacific', 'TKL', 'TK', 1),
('1413479532', 'Cuba', 'Caraibes', 'CUB', 'CU', 1),
('1413481979', 'Burundi', 'Africa', 'BDI', 'BI', 1),
('1413486577', 'Wallis and Futuna Islands', 'Pacific', 'WLF', 'WF', 1),
('1413494898', 'Anguilla', 'Caraibes', 'AIA', 'AI', 1),
('1413496064', 'South Africa', 'Africa', 'ZAF', 'ZA', 1),
('1413497897', 'Ecuador', 'South and central America', 'ECU', 'EC', 1),
('1413509461', 'Suriname', 'South and central America', 'SUR', 'SR', 1),
('1413527584', 'St.Vincent and Grenadines', 'Caraibes', 'VCT', 'VC', 1),
('1413528288', 'Peru', 'South and central America', 'PER', 'PE', 1),
('1413535655', 'Puerto Rico', 'Caraibes', 'PRI', 'PR', 1),
('1413536614', 'Russian Federation', 'East Europe', 'RUS', 'RU', 1),
('1413547821', 'Slovenia', 'East Europe', 'SVN', 'SI', 1),
('1413555814', 'Nauru', 'Pacific', 'NRU', 'NR', 1),
('1413557853', 'Mauritius', 'Africa', 'MUS', 'MU', 1),
('1413559574', 'France', 'Occidental Europe', 'FRA', 'FR', 1),
('1413561567', 'Guadaloupe', 'Caraibes', 'GLP', 'GP', 1),
('1413561975', 'St. Tome and Principe', 'Africa', 'STP', 'ST', 1),
('1413565145', 'Uganda', 'Africa', 'UGA', 'UG', 1),
('1413569990', 'Malawi', 'Africa', 'MWI', 'MW', 1),
('1413570720', 'Honduras', 'South and central America', 'HND', 'HN', 1),
('1413574668', 'Soviet Union', 'East Europe', 'SUN', 'RU', 1),
('1413576638', 'St. Helena', 'Africa', 'SHN', 'SH', 1),
('1413576846', 'Comoros', 'Africa', 'COM', 'KM', 1),
('1413578799', 'Oman', 'Middle east', 'OMN', 'OM', 1),
('1413591979', 'Ireland', 'Occidental Europe', 'IRL', 'IE', 1),
('1413592489', 'Iran', 'Middle east', 'IRN', 'IR', 1),
('1413594973', 'South Korea', 'Asia', 'KOR', 'KR', 1),
('1413609330', 'Lebanon', 'Middle east', 'LBN', 'LB', 1),
('1413612495', 'French Guiana', 'South and central America', 'GUF', 'GF', 1),
('1413616147', 'Bahamas', 'Caraibes', 'BHS', 'BS', 1),
('1413618790', 'Taiwan', 'Asia', 'TWN', 'TW', 1),
('1413619070', 'Niue', 'Pacific', 'NIU', 'NU', 1),
('1413620451', 'American Samoa', 'Pacific', 'ASM', 'AS', 1),
('1413622956', 'Nicaragua', 'South and central America', 'NIC', 'NI', 1),
('1413624410', 'Togo', 'Africa', 'TGO', 'TG', 1),
('1413625950', 'Algeria', 'Africa', 'DZA', 'DZ', 1),
('1413631673', 'French Polynesia', 'Pacific', 'PYF', 'PF', 1),
('1413634259', 'Venezuela', 'South and central America', 'VEN', 'VE', 1),
('1413641921', 'Serbia', 'East Europe', 'SRB', 'RS', 1),
('1413642709', 'Guinea Bissau', 'Africa', 'GNB', 'GW', 1),
('1413644208', 'Hungary', 'East Europe', 'HUN', 'HU', 1),
('1413644347', 'Yugoslavia', 'East Europe', 'YUG', 'YU', 1),
('1413663835', 'France, Metropolitan', 'Occidental Europe', 'FXX', 'FR', 1),
('1413664208', 'Christmas Island', 'Pacific', 'CXR', 'CX', 1),
('1413664353', 'Mauritania', 'Africa', 'MRT', 'MR', 1),
('1413664588', 'Libya', 'Africa', 'LBY', 'LY', 1),
('1413668857', 'Singapore', 'Asia', 'SGP', 'SG', 1),
('1413674890', 'Bahrain', 'Middle east', 'BHR', 'BH', 1),
('1413675083', 'Argentina', 'South and central America', 'ARG', 'AR', 1),
('1413676683', 'Iceland', 'Occidental Europe', 'ISL', 'IS', 1),
('1413680862', 'Montenegro', 'East Europe', 'MNE', 'ME', 1),
('1413685417', 'Slovakia', 'East Europe', 'SVK', 'SK', 1),
('1413688384', 'Maldives', 'Asia', 'MDV', 'MV', 1),
('1413688559', 'Azerbaijan', 'East Europe', 'AZE', 'AZ', 1),
('1413691970', 'Belgium', 'Occidental Europe', 'BEL', 'BE', 1),
('1413693533', 'El Salvador', 'South and central America', 'SLV', 'SV', 1),
('1413694489', 'Angola', 'Africa', 'AGO', 'AO', 1),
('1413702691', 'Israel', 'Middle east', 'ISR', 'IL', 1),
('1413702756', 'Jamaica', 'Caraibes', 'JAM', 'JM', 1),
('1413711424', 'Sierra Leone', 'Africa', 'SLE', 'SL', 1),
('1413713063', 'Nigeria', 'Africa', 'NGA', 'NG', 1),
('1413719836', 'Kenya', 'Africa', 'KEN', 'KE', 1),
('1413725690', 'Reunion', 'Africa', 'REU', 'RE', 1),
('1413736054', 'Croatia', 'East Europe', 'HRV', 'HR', 1),
('1413736302', 'British Indian O. Terr.', 'Asia', 'IOT', 'IO', 1),
('1413741530', 'Vanuatu', 'Pacific', 'VUT', 'VU', 1),
('1413746076', 'Sweden', 'Occidental Europe', 'SWE', 'SE', 1),
('1413750546', 'Western Sahara', 'Africa', 'ESH', 'EH', 1),
('1413765479', 'Turkey', 'East Europe', 'TUR', 'TR', 1),
('1413770515', 'Uruguay', 'South and central America', 'URY', 'UY', 1),
('1413776371', 'Jordan', 'Middle east', 'JOR', 'JO', 1),
('1413781685', 'Ukraine', 'East Europe', 'UKR', 'UA', 1),
('1413787525', 'Greece', 'Occidental Europe', 'GRC', 'GR', 1),
('1413787800', 'Namibia', 'Africa', 'NAM', 'NA', 1),
('1413788513', 'Vatican City State', 'Occidental Europe', 'VAT', 'VA', 1),
('1413793315', 'Italy', 'Occidental Europe', 'ITA', 'IT', 1),
('1413794914', 'Monaco', 'Occidental Europe', 'MCO', 'MC', 1),
('1413795392', 'Philippines', 'Asia', 'PHL', 'PH', 1),
('1413807540', 'Afghanistan', 'Asia', 'AFG', 'AF', 1),
('1413808450', 'East Timor', 'Asia', 'TMP', 'TP', 1),
('1413816463', 'Belarus', 'East Europe', 'BLR', 'BY', 1),
('1413817442', 'North Korea', 'Asia', 'PRK', 'KP', 1),
('1413822748', 'Pitcairn', 'Pacific', 'PCN', 'PN', 1),
('1413825255', 'Niger', 'Africa', 'NER', 'NE', 1),
('1413825558', 'Falkland Isl., Malvinas', 'Antarctica', 'FLK', 'FK', 1),
('1413831360', 'Moldova', 'Occidental Europe', 'MDA', 'MD', 1),
('1413839577', 'Djibouti', 'Africa', 'DJI', 'DJ', 1),
('1413850515', 'Tanzania', 'Africa', 'TZA', 'TZ', 1),
('1413867718', 'Faroe Islands', 'Occidental Europe', 'FRO', 'FO', 1),
('1413868864', 'United States', 'North America', 'USA', 'US', 1),
('1413871033', 'Brunei Darussalam', 'Middle east', 'BRN', 'BN', 1),
('1413874003', 'Banglades', 'Asia', 'BGD', 'BD', 1),
('1413874403', 'China', 'Asia', 'CHN', 'CN', 1),
('1413876900', 'Malta', 'Occidental Europe', 'MLT', 'MT', 1),
('1413879727', 'Cambodia', 'Asia', 'KHM', 'KH', 1),
('1413884812', 'Turkmenistan', 'Asia', 'TKM', 'TM', 1),
('1413890300', 'India', 'Asia', 'IND', 'IN', 1),
('1413903030', 'Portugal', 'Occidental Europe', 'PRT', 'PT', 1),
('1413904631', 'Madagascar', 'Africa', 'MDG', 'MG', 1),
('1413904927', 'Luxembourg', 'Occidental Europe', 'LUX', 'LU', 1),
('1413906048', 'Syria', 'Middle east', 'SYR', 'SY', 1),
('1413906080', 'Western Samoa', 'Pacific', 'WSM', 'WS', 1),
('1413915157', 'Panama', 'Pacific', 'PAN', 'PA', 1),
('1413925823', 'Ivory Coast', 'Africa', 'CIV', 'CI', 1),
('1413926737', 'Swaziland', 'Africa', 'SWZ', 'SZ', 1),
('1413926929', 'Mali', 'Africa', 'MLI', 'ML', 1),
('1413927619', 'Cook Islands', 'Pacific', 'COK', 'CK', 1),
('1413928723', 'Cocos (Keeling) Islands', 'Pacific', 'CCK', 'CC', 1),
('1413931843', 'Bermuda', 'Caraibes', 'BMU', 'BM', 1),
('1413938520', 'Poland', 'East Europe', 'POL', 'PL', 1),
('1413944445', 'Cyprus', 'Occidental Europe', 'CYP', 'CY', 1),
('1413945325', 'Palau', 'Pacific', 'PLW', 'PW', 1),
('1413946765', 'Colombia', 'South and central America', 'COL', 'CO', 1),
('1413948880', 'Austria', 'Occidental Europe', 'AUT', 'AT', 1),
('1413949775', 'Andorra', 'Occidental Europe', 'AND', 'AD', 1),
('1413950603', 'Great Britain - UK', 'Occidental Europe', 'GBR', 'UK', 1),
('1413951623', 'Paraguay', 'South and central America', 'PRY', 'PY', 1),
('1413959038', 'United Arab Emirates', 'Middle east', 'ARE', 'AE', 1),
('1413959292', 'Gambia', 'Africa', 'GMB', 'GM', 1),
('1413961967', 'Benin', 'Africa', 'BEN', 'BJ', 1),
('1413969282', 'Cayman Islands', 'Caraibes', 'CYM', 'KY', 1),
('1413973305', 'British Virgin Islands', 'Caraibes', 'VGB', 'VG', 1),
('1413974774', 'Australia', 'Pacific', 'AUS', 'AU', 1),
('1413975523', 'Seychelles', 'Africa', 'SYC', 'SC', 1),
('1413979307', 'Sudan', 'Africa', 'SDN', 'SD', 1),
('1413982927', 'Kuwait', 'Middle east', 'KWT', 'KW', 1),
('1413988080', 'Heard and McDonald Isl.', 'Pacific', 'HMD', 'HM', 1),
('1413994114', 'Saint Pierre and Miquelon', 'North America', 'SPM', 'PM', 1),
('1414001580', 'Albania', 'East Europe', 'ALB', 'AL', 1),
('1414020131', 'St.Kitts Nevis Anguilla', 'Caraibes', 'KNA', 'KN', 1),
('1414021475', 'Dominican Republic', 'Caraibes', 'DOM', 'DO', 1),
('1414023747', 'Aruba', 'Caraibes', 'ABW', 'AW', 1),
('1414026836', 'Barbados', 'Caraibes', 'BRB', 'BB', 1),
('1414030505', 'Liberia', 'Africa', 'LBR', 'LR', 1),
('1414037961', 'Burkina Faso', 'Africa', 'BFA', 'BF', 1),
('1414038460', 'Romania', 'East Europe', 'ROM', 'RO', 1),
('1414048818', 'Lesotho', 'Africa', 'LSO', 'LS', 1),
('1414050281', 'San Marino', 'Occidental Europe', 'SMR', 'SM', 1),
('1414052169', 'Spain', 'Occidental Europe', 'ESP', 'ES', 1),
('1414053882', 'Cameroon', 'Africa', 'CMR', 'CM', 1),
('1414055078', 'Saudi Arabia', 'Middle east', 'SAU', 'SA', 1),
('1414056758', 'US Minor outlying Isl.', 'North America', 'UMI', 'UM', 1),
('1414057394', 'Gibraltar', 'Occidental Europe', 'GIB', 'GI', 1),
('1414058085', 'Greenland (Denmark)', 'North America', 'GRL', 'GL', 1),
('1414062853', 'Rwanda', 'Africa', 'RWA', 'RW', 1),
('1414067884', 'Somalia', 'Africa', 'SOM', 'SO', 1),
('1414067958', 'Ethiopia', 'Africa', 'ETH', 'ET', 1),
('1414081178', 'Mongolia', 'Asia', 'MNG', 'MN', 1),
('1414082915', 'Gabon', 'Africa', 'GAB', 'GA', 1),
('1414090036', 'Antigua and Barbuda', 'Caraibes', 'ATG', 'AG', 1),
('1414094027', 'Macau', 'Asia', 'MAC', 'MO', 1),
('1414094880', 'Vietnam', 'Asia', 'VNM', 'VN', 1),
('1414100426', 'Pakistan', 'Asia', 'PAK', 'PK', 1),
('1414102367', 'Sri Lanka', 'Asia', 'LKA', 'LK', 1),
('1414102989', 'Kazachstan', 'Asia', 'KAZ', 'KZ', 1),
('1414104675', 'Macedonia', 'East Europe', 'MKD', 'MK', 1),
('1414108118', 'Latvia', 'East Europe', 'LVA', 'LV', 1),
('1414109493', 'New Zealand', 'Pacific', 'NZL', 'NZ', 1),
('1414114841', 'Central African Rep.', 'Africa', 'CAF', 'CF', 1),
('1414126185', 'Denmark', 'Occidental Europe', 'DNK', 'DK', 1),
('1414134703', 'Kyrgyz Republic', 'Asia', 'KGZ', 'KG', 1),
('1414136092', 'Zimbabwe', 'Africa', 'ZWE', 'ZW', 1),
('1414136450', 'Nepal', 'Asia', 'NPL', 'NP', 1),
('1414143101', 'Tunisia', 'Africa', 'TUN', 'TN', 1),
('1414147565', 'Morocco', 'Africa', 'MAR', 'MA', 1),
('1414153242', 'Ghana', 'Africa', 'GHA', 'GH', 1),
('1414178404', 'Iraq', 'Middle east', 'IRQ', 'IQ', 1),
('1414179388', 'US Virgin Islands', 'Caraibes', 'VIR', 'VI', 1),
('1414180281', 'Dominica', 'Caraibes', 'DMA', 'DM', 1),
('1414180572', 'Chile', 'South and central America', 'CHL', 'CL', 1),
('1414189792', 'Zambia', 'Africa', 'ZMB', 'ZM', 1),
('1414192335', 'French Southern Terr.', 'Antarctica', 'ATF', 'TF', 1),
('1414196024', 'Czech Republic', 'East Europe', 'CZE', 'CS', 1),
('1414198766', 'Netherland Antilles', 'Caraibes', 'ANT', 'AN', 1),
('1414199737', 'Haiti', 'Caraibes', 'HTI', 'HT', 1),
('1414203573', 'Tadjikistan', 'Asia', 'TJK', 'TJ', 1),
('1414206952', 'Bulgaria', 'East Europe', 'BGR', 'BG', 1),
('1414207487', 'Solomon Islands', 'Pacific', 'SLB', 'SB', 1),
('1414208952', 'Netherlands', 'Occidental Europe', 'NLD', 'NL', 1),
('1414218565', 'Armenia', 'East Europe', 'ARM', 'AM', 1),
('1414227441', 'Costa Rica', 'South and central America', 'CRI', 'CR', 1),
('1414244950', 'Indonesia', 'Asia', 'IDN', 'ID', 1),
('1414261664', 'Qatar', 'Middle east', 'QAT', 'QA', 1),
('1414265808', 'Laos', 'Asia', 'LAO', 'LA', 1),
('1414265875', 'Hong Kong', 'Asia', 'HKG', 'HK', 1),
('1414266794', 'Trinidad and Tobago', 'Caraibes', 'TTO', 'TT', 1),
('1414269338', 'Switzerland', 'Occidental Europe', 'CHE', 'CH', 1),
('1414269532', 'Uzbekistan', 'Asia', 'UZB', 'UZ', 1),
('1414279247', 'European Union', 'Occidental Europe', 'EUR', 'EU', 1),
('1414284367', 'Germany', 'Occidental Europe', 'DEU', 'DE', 1),
('1414295159', 'Micronesia', 'Pacific', 'FSM', 'FM', 1),
('1414307463', 'Fiji', 'Pacific', 'FJI', 'FJ', 1),
('1414313484', 'Grenada', 'Caraibes', 'GRD', 'GD', 1),
('1414317752', 'Yemen', 'Middle east', 'YEM', 'YE', 1),
('1414323828', 'Bosnia-Herzegovina', 'East Europe', 'BIH', 'BA', 1),
('1414325715', 'Lithuania', 'East Europe', 'LTU', 'LT', 1),
('1414354734', 'Guatemala', 'South and central America', 'GTM', 'GT', 1),
('1414355932', 'Guinea (Conakry)', 'Africa', 'GIN', 'GN', 1),
('1414359708', 'Guyana', 'South and central America', 'GUY', 'GY', 1),
('1414364391', 'Brazil', 'South and central America', 'BRA', 'BR', 1),
('1414364536', 'Norway', 'Occidental Europe', 'NOR', 'NO', 1),
('1414369721', 'Bolivia', 'South and central America', 'BOL', 'BO', 1),
('1414375576', 'Saint Lucia', 'Caraibes', 'LCA', 'LC', 1),
('1414375710', 'Egypt', 'Middle east', 'EGY', 'EG', 1),
('1414386137', 'Liechtenstein', 'Occidental Europe', 'LIE', 'LI', 1),
('1414387915', 'Bhutan', 'Asia', 'BTN', 'BT', 1),
('1414399916', 'Myanmar', 'Asia', 'MMR', 'MM', 1),
('1414402232', 'Tonga', 'Pacific', 'TON', 'TO', 1),
('1414417933', 'Martinique', 'Caraibes', 'MTQ', 'MQ', 1),
('1414419427', 'Senegal', 'Africa', 'SEN', 'SN', 1),
('1414427675', 'Mayotte', 'Africa', 'MYT', 'YT', 1),
('1414429646', 'Democratic Republic of Congo', 'Africa', 'COD', 'CD', 1),
('1414432037', 'Svalbard and Jan Mayen Is', 'Occidental Europe', 'SJM', 'SJ', 1),
('1414439514', 'Tuvalu', 'Pacific', 'TUV', 'TV', 1),
('1414439957', 'Botswana', 'Africa', 'BWA', 'BW', 1),
('1414444199', 'Montserrat', 'Caraibes', 'MSR', 'MS', 1),
('1414455599', 'Mozambique', 'Africa', 'MOZ', 'MZ', 1),
('1414457224', 'Congo (Brazzaville)', 'Africa', 'COG', 'CG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_codes`
--

CREATE TABLE IF NOT EXISTS `currency_codes` (
  `currency_code_id` varchar(120) NOT NULL,
  `country` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='currencies and currency code and the countries in which ther';

--
-- Dumping data for table `currency_codes`
--

INSERT INTO `currency_codes` (`currency_code_id`, `country`, `currency`, `currency_code`, `enabled`) VALUES
('1413377164', 'Netherlands', 'European euro', 'EUR', 1),
('1413389894', 'Korea South', 'South Korean won', 'KRW', 1),
('1413392796', 'Fiji', 'Fijian dollar', 'FJD', 1),
('1413396774', 'El Salvador', 'United States dollar', 'USD', 1),
('1413397932', 'Guatemala', 'Guatemalan quetzal', 'GTQ', 1),
('1413402732', 'Tanzania', 'Tanzanian shilling', 'TZS', 1),
('1413402741', 'Saint Lucia', 'East Caribbean dollar', 'XCD', 1),
('1413404956', 'Ethiopia', 'Ethiopian birr', 'ETB', 1),
('1413416722', 'Dominican Republic', 'Dominican peso', 'DOP', 1),
('1413420139', 'Czech Republic', 'Czech koruna', 'CZK', 1),
('1413426305', 'Malawi', 'Malawian kwacha', 'MWK', 1),
('1413428643', 'Nigeria', 'Nigerian naira', 'NGN', 1),
('1413429842', 'Iraq', 'Iraqi dinar', 'IQD', 1),
('1413431622', 'Slovenia', 'European euro', 'EUR', 1),
('1413431889', 'Seychelles', 'Seychellois rupee', 'SCR', 1),
('1413438980', 'Central African Republic', 'Central African CFA franc', 'XAF', 1),
('1413441563', 'Switzerland', 'Swiss franc', 'CHF', 1),
('1413449619', 'Korea North', 'North Korean won', 'KPW', 1),
('1413454844', 'China', 'Chinese renminbi', 'CNY', 1),
('1413457626', 'New Zealand', 'New Zealand dollar', 'NZD', 1),
('1413463486', 'South Sudan', 'Sudanese pound', 'SDG', 1),
('1413474371', 'Taiwan', 'New Taiwan dollar', 'TWD', 1),
('1413488822', 'Australia', 'Australian dollar', 'AUD', 1),
('1413491557', 'San Marino', 'European euro', 'EUR', 1),
('1413504203', 'Niger', 'West African CFA franc', 'XOF', 1),
('1413505987', 'Ireland', 'European euro', 'EUR', 1),
('1413506577', 'Ghana', 'Ghanaian cedi', 'GHS', 1),
('1413508716', 'Panama', 'Panamanian balboa', 'PAB', 1),
('1413517596', 'Romania', 'Romanian leu', 'RON', 1),
('1413518309', 'Chile', 'Chilean peso', 'CLP', 1),
('1413518563', 'Côte d''Ivoire', 'West African CFA franc', 'XOF', 1),
('1413521567', 'Falkland Islands', 'Falkland Islands pound', 'FKP', 1),
('1413521849', 'Chad', 'Central African CFA franc', 'XAF', 1),
('1413531609', 'Anguilla', 'East Caribbean dollar', 'XCD', 1),
('1413536216', 'Singapore', 'Singapore dollar', 'SGD', 1),
('1413537673', 'United Kingdom', 'British pound', 'GBP', 1),
('1413541670', 'Vietnam', 'Vietnamese dong', 'VND', 1),
('1413542403', 'Maldives', 'Maldivian rufiyaa', 'MVR', 1),
('1413543118', 'Haiti', 'Haitian gourde', 'HTG', 1),
('1413543551', 'Congo', 'Central African CFA franc', 'XAF', 1),
('1413544427', 'Bhutan', 'Bhutanese ngultrum', 'BTN', 1),
('1413554984', 'Colombia', 'Colombian peso', 'COP', 1),
('1413562578', 'Swaziland', 'Swazi lilangeni', 'SZL', 1),
('1413564035', 'Cyprus', 'European euro', 'EUR', 1),
('1413564451', 'French Polynesia', 'CFP franc', 'XPF', 1),
('1413568502', 'Laos', 'Lao kip', 'LAK', 1),
('1413575448', 'Montenegro', 'European Euro', 'EUR', 1),
('1413576557', 'New Caledonia', 'CFP franc', 'XPF', 1),
('1413583372', 'Senegal', 'West African CFA franc', 'XOF', 1),
('1413585759', 'Liechtenstein', 'Swiss Franc', 'CHF', 1),
('1413586844', 'Denmark', 'Danish krone', 'DKK', 1),
('1413592962', 'Pakistan', 'Pakistani rupee', 'PKR', 1),
('1413593760', 'Norway', 'Norwegian krone', 'NOK', 1),
('1413605001', 'United States of America', 'United States dollar', 'USD', 1),
('1413609043', 'International Monetary Fund', 'Special Drawing Rights', 'XDR', 1),
('1413610012', 'Peru', 'Peruvian nuevo sol', 'PEN', 1),
('1413621733', 'Suriname', 'Surinamese dollar', 'SRD', 1),
('1413624402', 'Mali', 'West African CFA franc', 'XOF', 1),
('1413625086', 'Afghanistan', 'Afghan afghani', 'AFN', 1),
('1413627083', 'Turkey', 'Turkish new lira', 'TRY', 1),
('1413630597', 'Dominica', 'East Caribbean dollar', 'XCD', 1),
('1413630604', 'Guinea-Bissau', 'West African CFA franc', 'XOF', 1),
('1413643108', 'Sweden', 'Swedish krona', 'SEK', 1),
('1413646729', 'Palau', 'United States dollar', 'USD', 1),
('1413653869', 'Angola', 'Angolan kwanza', 'AOA', 1),
('1413666379', 'Austria', 'European euro', 'EUR', 1),
('1413673054', 'Mozambique', 'Mozambican metical', 'MZM', 1),
('1413682244', 'Iran', 'Iranian rial', 'IRR', 1),
('1413682513', 'Nauru', 'Australian dollar', 'AUD', 1),
('1413683427', 'Iceland', 'Icelandic króna', 'ISK', 1),
('1413687384', 'Netherlands Antilles', 'Netherlands Antillean gulden', 'ANG', 1),
('1413689970', 'Syria', 'Syrian pound', 'SYP', 1),
('1413707564', 'Eritrea', 'Eritrean nakfa', 'ERN', 1),
('1413707831', 'Grenada', 'East Caribbean dollar', 'XCD', 1),
('1413709637', 'United Arab Emirates', 'UAE dirham', 'AED', 1),
('1413710554', 'Slovakia', 'Slovak koruna', 'SKK', 1),
('1413712302', 'Tonga', 'Paanga', 'TOP', 1),
('1413715525', 'Togo', 'West African CFA franc', 'XOF', 1),
('1413717360', 'Sao Tome and Principe', 'Sao Tome and Principe dobra', 'STD', 1),
('1413717565', 'Micronesia', 'United States dollar', 'USD', 1),
('1413717983', 'Italy', 'European euro', 'EUR', 1),
('1413725613', 'Bulgaria', 'Bulgarian lev', 'BGN', 1),
('1413725840', 'Luxembourg', 'European euro', 'EUR', 1),
('1413735636', 'Spain', 'European euro', 'EUR', 1),
('1413739109', 'Kuwait', 'Kuwaiti dinar', 'KWD', 1),
('1413742173', 'Hungary', 'Hungarian forint', 'HUF', 1),
('1413748872', 'Philippines', 'Philippine peso', 'PHP', 1),
('1413751046', 'Tuvalu', 'Australian dollar', 'AUD', 1),
('1413754876', 'Uruguay', 'Uruguayan peso', 'UYU', 1),
('1413756008', 'Rwanda', 'Rwandan franc', 'RWF', 1),
('1413760288', 'Cambodia', 'Cambodian riel', 'KHR', 1),
('1413762822', 'Serbia', 'Serbian dinar', 'RSD', 1),
('1413770764', 'Wallis and Futuna Islands', 'CFP franc', 'XPF', 1),
('1413772740', 'Comoros', 'Comorian franc', 'KMF', 1),
('1413774895', 'Argentina', 'Argentine peso', 'ARS', 1),
('1413779277', 'Malaysia', 'Malaysian ringgit', 'MYR', 1),
('1413790347', 'Oman', 'Omani rial', 'OMR', 1),
('1413791231', 'Ecuador', 'United States dollar', 'USD', 1),
('1413796234', 'Tunisia', 'Tunisian dinar', 'TND', 1),
('1413799940', 'Solomon Islands', 'Solomon Islands dollar', 'SBD', 1),
('1413800162', 'Belgium', 'European euro', 'EUR', 1),
('1413804562', 'Nepal', 'Nepalese rupee', 'NPR', 1),
('1413808148', 'Saint Kitts and Nevis', 'East Caribbean dollar', 'XCD', 1),
('1413810033', 'Kyrgyzstan', 'Kyrgyzstani som', 'KGS', 1),
('1413810783', 'Mauritania', 'Mauritanian ouguiya', 'MRO', 1),
('1413811354', 'Guyana', 'Guyanese dollar', 'GYD', 1),
('1413817222', 'Burundi', 'Burundi franc', 'BIF', 1),
('1413818555', 'Malta', 'European Euro', 'EUR', 1),
('1413825368', 'Djibouti', 'Djiboutian franc', 'DJF', 1),
('1413826391', 'Latvia', 'European euro', 'EUR', 1),
('1413828260', 'Bosnia-Herzegovina', 'Bosnia and Herzegovina konvertibilna marka', 'BAM', 1),
('1413828396', 'Uzbekistan', 'Uzbekistani som', 'UZS', 1),
('1413828859', 'Lebanon', 'Lebanese lira', 'LBP', 1),
('1413842670', 'Belize', 'Belize dollar', 'BZD', 1),
('1413846879', 'Croatia', 'Croatian kuna', 'HRK', 1),
('1413879711', 'France', 'European euro', 'EUR', 1),
('1413880968', 'Azerbaijan', 'Azerbaijani manat', 'AZN', 1),
('1413883887', 'Lesotho', 'Lesotho loti', 'LSL', 1),
('1413884397', 'Macedonia (Former Yug. Rep.)', 'Macedonian denar', 'MKD', 1),
('1413885284', 'Benin', 'West African CFA franc', 'XOF', 1),
('1413898152', 'Sierra Leone', 'Sierra Leonean leone', 'SLL', 1),
('1413908069', 'Saint Helena', 'Saint Helena pound', 'SHP', 1),
('1413914451', 'Cape Verde', 'Cape Verdean escudo', 'CVE', 1),
('1413922829', 'Gambia', 'Gambian dalasi', 'GMD', 1),
('1413924179', 'Costa Rica', 'Costa Rican colon', 'CRC', 1),
('1413926782', 'Belarus', 'Belarusian ruble', 'BYR', 1),
('1413935986', 'Bangladesh', 'Bangladeshi taka', 'BDT', 1),
('1413937637', 'Brunei', 'Brunei dollar', 'BND', 1),
('1413939080', 'Trinidad and Tobago', 'Trinidad and Tobago dollar', 'TTD', 1),
('1413939184', 'Georgia', 'Georgian lari', 'GEL', 1),
('1413941510', 'Finland', 'European euro', 'EUR', 1),
('1413947170', 'Russia', 'Russian ruble', 'RUB', 1),
('1413949426', 'Uganda', 'Ugandan shilling', 'UGX', 1),
('1413959559', 'Burkina Faso', 'West African CFA franc', 'XOF', 1),
('1413963782', 'Venezuela', 'Venezuelan bolivar', 'VEB', 1),
('1413966394', 'Poland', 'Polish zloty', 'PLN', 1),
('1413966635', 'Kenya', 'Kenyan shilling', 'KES', 1),
('1413966663', 'Madagascar', 'Malagasy ariary', 'MGA', 1),
('1413973828', 'Cuba', 'Cuban peso', 'CUC', 1),
('1413977954', 'Samoa (Western)', 'Samoan tala', 'WST', 1),
('1413985338', 'Japan', 'Japanese yen', 'JPY', 1),
('1413987220', 'Barbados', 'Barbadian dollar', 'BBD', 1),
('1413988840', 'Equatorial Guinea', 'Equitorial Guniea ekwele', 'GQE', 1),
('1413998632', 'Papua New Guinea', 'Papua New Guinean kina', 'PGK', 1),
('1414012967', 'Ukraine', 'Ukrainian hryvnia', 'UAH', 1),
('1414016576', 'East Timor', 'United States dollar', 'USD', 1),
('1414019792', 'Tajikistan', 'Tajikistani somoni', 'TJS', 1),
('1414026198', 'Gabon', 'Central African CFA franc', 'XAF', 1),
('1414033298', 'Indonesia', 'Indonesian rupiah', 'IDR', 1),
('1414034588', 'Montserrat', 'East Caribbean dollar', 'XCD', 1),
('1414041889', 'Bolivia', 'Bolivian boliviano', 'BOB', 1),
('1414045416', 'Andorra', 'European euro', 'EUR', 1),
('1414050704', 'Bahamas', 'Bahamian dollar', 'BSD', 1),
('1414051505', 'Albania', 'Albanian lek', 'ALL', 1),
('1414051668', 'Lithuania', 'Lithuanian litas', 'LTL', 1),
('1414052103', 'Turkmenistan', 'Turkmen manat', 'TMM', 1),
('1414060220', 'Honduras', 'Honduran lempira', 'HNL', 1),
('1414062408', 'Cameroon', 'Central African CFA franc', 'XAF', 1),
('1414063775', 'Kiribati', 'Australian dollar', 'AUD', 1),
('1414065965', 'Greece', 'European euro', 'EUR', 1),
('1414068891', 'Qatar', 'Qatari riyal', 'QAR', 1),
('1414074043', 'Yemen', 'Yemeni rial', 'YER', 1),
('1414090675', 'Namibia', 'Namibian dollar', 'NAD', 1),
('1414102915', 'Israel', 'Israeli new sheqel', 'ILS', 1),
('1414103363', 'Kazakhstan', 'Kazakhstani tenge', 'KZT', 1),
('1414113996', 'Zimbabwe', 'Zimbabwean dollar', 'ZWD', 1),
('1414120122', 'Egypt', 'Egyptian pound', 'EGP', 1),
('1414128932', 'Mongolia', 'Mongolian tugrik', 'MNT', 1),
('1414145858', 'Paraguay', 'Paraguayan guarani', 'PYG', 1),
('1414154598', 'Myanmar', 'Myanma kyat', 'MMK', 1),
('1414163224', 'Thailand', 'Thai baht', 'THB', 1),
('1414166255', 'Aruba', 'Aruban florin', 'AWG', 1),
('1414170239', 'Gibraltar', 'Gibraltar pound', 'GIP', 1),
('1414173796', 'Mauritius', 'Mauritian rupee', 'MUR', 1),
('1414174063', 'Nicaragua', 'Nicaraguan cordoba', 'NIO', 1),
('1414190827', 'India', 'Indian rupee', 'INR', 1),
('1414191154', 'Sri Lanka', 'Sri Lankan rupee', 'LKR', 1),
('1414196004', 'Jordan', 'Jordanian dinar', 'JOD', 1),
('1414196431', 'Panama Canal Zone', 'United States dollar', 'USD', 1),
('1414204225', 'Vanuatu', 'Vanuatu vatu', 'VUV', 1),
('1414204837', 'Congo, Democratic Republic', 'Congolese franc', 'CDF', 1),
('1414207366', 'Hong Kong', 'Hong Kong dollar', 'HKD', 1),
('1414216791', 'Sudan', 'Sudanese pound', 'SDG', 1),
('1414219231', 'Botswana', 'Botswana pula', 'BWP', 1),
('1414224531', 'Algeria', 'Algerian dinar', 'DZD', 1),
('1414227902', 'Armenia', 'Armenian dram', 'AMD', 1),
('1414236320', 'Vatican', 'European euro', 'EUR', 1),
('1414242047', 'Puerto Rico', 'United States dollar', 'USD', 1),
('1414255130', 'Brazil', 'Brazilian real', 'BRL', 1),
('1414258420', 'Libya', 'Libyan dinar', 'LYD', 1),
('1414259910', 'Estonia', 'Estonian kroon', 'EEK', 1),
('1414267238', 'Moldova', 'Moldovan leu', 'MDL', 1),
('1414291562', 'Morocco', 'Moroccan dirham', 'MAD', 1),
('1414292181', 'Bahrain', 'Bahraini dinar', 'BHD', 1),
('1414293629', 'Antigua and Barbuda', 'East Caribbean dollar', 'XCD', 1),
('1414295753', 'Somalia', 'Somali shilling', 'SOS', 1),
('1414306339', 'Canada', 'Canadian dollar', 'CAD', 1),
('1414306354', 'Cayman Islands', 'Cayman Islands dollar', 'KYD', 1),
('1414315345', 'South Africa', 'South African rand', 'ZAR', 1),
('1414327809', 'Zambia', 'Zambian kwacha', 'ZMK', 1),
('1414332320', 'Macau', 'Macanese pataca', 'MOP', 1),
('1414344387', 'Liberia', 'Liberian dollar', 'LRD', 1),
('1414348442', 'Mexico', 'Mexican peso', 'MXN', 1),
('1414360230', 'Monaco', 'European Euro', 'EUR', 1),
('1414361894', 'Saint Vincent and the Grenadines', 'East Caribbean dollar', 'XCD', 1),
('1414361975', 'Germany', 'European euro', 'EUR', 1),
('1414368184', 'Portugal', 'European euro', 'EUR', 1),
('1414370438', 'Saudi Arabia', 'Saudi riyal', 'SAR', 1),
('1414373587', 'Guinea', 'Guinean franc', 'GNF', 1),
('1414377607', 'Jamaica', 'Jamaican dollar', 'JMD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `document_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `order` int(11) NOT NULL COMMENT 'way of ordering documents',
  `description` varchar(255) NOT NULL,
  `type` varchar(120) NOT NULL,
  `category` varchar(120) NOT NULL,
  `document_url` varchar(255) NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='admission application documents';

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`document_id`, `application_id`, `name`, `order`, `description`, `type`, `category`, `document_url`, `creator`, `created`, `modified`) VALUES
('1415206113766', '1414424134786', 'application_essay', 0, 'General Application Essay', 'Document', 'Admission Application', '../files/1414424134786/application_essay.pdf', '1414405980170', '2014-11-05 16:48:32', '2014-11-05 16:48:32'),
('1415785696260', '1414423729155', 'application_essay', 0, 'General Application Essay', 'Document', 'Admission Application', '../files/1414423729155/application_essay.docx', '1414408457505', '2014-11-12 09:48:16', '2014-11-12 09:48:16'),
('1415791229975', '1414424134786', 'admission_document_5', 5, 'High School Transcript', 'application/pdf', 'Admission Application', '../files/1414424134786/admission_document_5.PDF', '1414405980170', '2014-11-12 11:20:29', '2014-11-12 11:20:29'),
('1415875159417', '1415873761343', 'application_essay', 0, 'Application Essay', 'application/pdf', 'Admission Application', '../files/1415873761343/application_essay.pdf', '1415879377257', '2014-11-13 10:39:18', '2014-11-13 10:39:18'),
('1416419864711', '1416417330382', 'school_certificate', 2, 'High School Certificate', 'image/jpeg', 'Admission Application', '../files/1416417330382/school_certificate.jpg', '1416416464432', '2014-11-19 17:57:44', '2014-11-19 17:57:44'),
('1416419864875', '1416417330382', 'admission_document_5', 5, 'Other', 'image/jpeg', 'Admission Application', '../files/1416417330382/admission_document_5.jpg', '1416416464432', '2014-11-19 17:57:44', '2014-11-19 17:57:44'),
('1416419864913', '1416417330382', 'application_essay', 0, 'Application Essay', 'application/msword', 'Admission Application', '../files/1416417330382/application_essay.doc', '1416416464432', '2014-11-19 17:57:44', '2014-11-19 17:57:44'),
('1416419864938', '1416417330382', 'school_transcript', 1, 'High School Transcript', 'image/jpeg', 'Admission Application', '../files/1416417330382/school_transcript.jpg', '1416416464432', '2014-11-19 17:57:44', '2014-11-19 17:57:44'),
('1416419864981', '1416417330382', '', 4, 'Result Slip (Nov-Dec)', 'image/jpeg', 'Admission Application', '../files/1416417330382/.jpg', '1416416464432', '2014-11-19 17:57:44', '2014-11-19 17:57:44'),
('1416423139695', '1416418137702', 'application_essay', 0, 'Application Essay', 'application/pdf', 'Admission Application', '../files/1416418137702/application_essay.pdf', '1416424201932', '2014-11-19 18:52:19', '2014-11-19 18:52:19'),
('1416423139980', '1416418137702', 'school_transcript', 1, 'High School Transcript', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'Admission Application', '../files/1416418137702/school_transcript.docx', '1416424201932', '2014-11-19 18:52:19', '2014-11-19 18:52:19'),
('1416423401429', '1416418137702', 'fa_application_essay', 0, 'Financial Aid Application Essay', 'application/pdf', 'Financial Aid Application', '../files/1416421801621/fa_application_essay.pdf', '1416424201932', '2014-11-19 18:56:40', '2014-11-19 18:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `document_codes`
--

CREATE TABLE IF NOT EXISTS `document_codes` (
  `document_code_id` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `category` varchar(120) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`document_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='default document types or categories expected to be uploaded';

--
-- Dumping data for table `document_codes`
--

INSERT INTO `document_codes` (`document_code_id`, `description`, `category`, `enabled`) VALUES
('1413389282', 'Other', 'Financial Aid Application', 1),
('1413423996', 'Application Essay', 'Admission Application', 1),
('1413424565', 'High School Transcript', 'Admission Application', 1),
('1413425371', 'High School Result Slip (primary)', 'Admission Application', 0),
('1413459350', 'High School Result Slip (secondary)', 'Admission Application', 0),
('1413460122', 'High School Certificate', 'Admission Application', 1),
('1413462582', 'FA Application Essay', 'Financial Aid Application', 1),
('1413468732', 'Bank Statement', 'Financial Aid Application', 1),
('1413470207', 'Loan Document', 'Financial Aid Application', 1),
('1413472025', 'Pay slips', 'Financial Aid Application', 1),
('1413473424', 'Utility Bills', 'Financial Aid Application', 1),
('1413474311', 'Birth Certificate', 'Financial Aid Application', 1),
('1413475983', 'Death Certificate', 'Financial Aid Application', 1),
('1413479532', 'School Bills', 'Financial Aid Application', 1),
('1413481979', 'Honours certificate', 'Admission Application', 1),
('1413486577', 'Other', 'Admission Application', 1);

-- --------------------------------------------------------

--
-- Table structure for table `extracurriculars`
--

CREATE TABLE IF NOT EXISTS `extracurriculars` (
  `extracurricular_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `activity` text NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `honours` text NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`extracurricular_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='extracurricular activities and interest of applicant';

--
-- Dumping data for table `extracurriculars`
--

INSERT INTO `extracurriculars` (`extracurricular_id`, `application_id`, `activity`, `start`, `end`, `honours`, `creator`, `created`, `modified`) VALUES
('1415206526746', '1415182561814', 'SCHOOL PREFECT', '1988-02-01', '1993-10-06', 'PRIZE\r\nCERTIFICATE', '1415184962726', '2014-11-05 16:55:25', '2014-11-05 16:55:25'),
('1415785217759', '1414424134786', 'Over-saw the sporting activities in the school', '2014-02-20', '2012-11-12', 'Sports Prefect', '1414405980170', '2014-11-12 09:40:17', '2014-11-12 09:40:17'),
('1416419325163', '1416417330382', 'Participated in MDD', '2010-09-02', '2011-08-24', 'Certificate', '1416416464432', '2014-11-19 17:48:44', '2014-11-19 17:48:44'),
('1416421522322', '1416418137702', 'Member of Child''s Right Club', '2009-09-03', '2012-05-20', 'Won the best teacher for Kakumdo kids', '1416424201932', '2014-11-19 18:25:22', '2014-11-19 18:25:22'),
('1416421522371', '1416418137702', 'School Athlete', '2011-09-05', '2011-11-29', 'School placed second in zonal competition', '1416424201932', '2014-11-19 18:25:22', '2014-11-19 18:25:22'),
('1416421522388', '1416418137702', 'Hockey Player', '2009-09-07', '2011-08-02', 'Participated in regional and zonal competions where the school was first and second respectively.', '1416424201932', '2014-11-19 18:25:22', '2014-11-19 18:25:22'),
('1416421522809', '1416418137702', 'Peer Motivator', '2008-10-15', '2011-10-15', 'Served as a peer advisor for students on the campus', '1416424201932', '2014-11-19 18:25:22', '2014-11-19 18:25:22'),
('1416421523045', '1416418137702', 'House Prefect', '2010-12-11', '2011-12-13', 'Secure victory in Inter-House competion, Led house to represent the school in the Mickey Sports Inaugration', '1416424201932', '2014-11-19 18:25:22', '2014-11-19 18:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `fa_applications`
--

CREATE TABLE IF NOT EXISTS `fa_applications` (
  `fa_application_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `fa_currency` varchar(3) DEFAULT NULL,
  `fa_exchange_rate` decimal(5,2) DEFAULT NULL,
  `fa_dependent_info_set` tinyint(1) DEFAULT NULL,
  `fa_income_id` varchar(120) DEFAULT NULL,
  `fa_expense_id` varchar(120) DEFAULT NULL,
  `fa_asset_id` varchar(120) DEFAULT NULL,
  `fa_debt_id` varchar(120) DEFAULT NULL,
  `fa_financier_id` varchar(120) DEFAULT NULL,
  `fa_reference_info_set` tinyint(1) DEFAULT NULL,
  `fa_scholarship_info_set` tinyint(1) DEFAULT NULL,
  `fa_document_info_set` tinyint(1) DEFAULT NULL,
  `status` set('DISABLED','ENABLED') NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`fa_application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FA Applications';

--
-- Dumping data for table `fa_applications`
--

INSERT INTO `fa_applications` (`fa_application_id`, `application_id`, `fa_currency`, `fa_exchange_rate`, `fa_dependent_info_set`, `fa_income_id`, `fa_expense_id`, `fa_asset_id`, `fa_debt_id`, `fa_financier_id`, `fa_reference_info_set`, `fa_scholarship_info_set`, `fa_document_info_set`, `status`, `creator`, `created`, `modified`) VALUES
('1414428932319', '1414428115098', 'GHS', 3.00, NULL, NULL, NULL, NULL, '1414486448479', NULL, 1, 0, NULL, 'ENABLED', '1414404550867', '2014-10-27 16:55:31', '2014-10-28 16:30:31'),
('1414492003910', '1414424134786', 'GHS', 3.20, 1, '1414492698311', '1414492876648', '1414492956080', '1414493032053', '1414493050582', 1, 1, NULL, 'ENABLED', '1414405980170', '2014-11-12 10:10:13', '2014-11-12 10:10:13'),
('1414493014472', '1414423729155', 'GHS', 3.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ENABLED', '1414408457505', '2014-10-28 10:43:33', '2014-11-11 11:43:18'),
('1415875482209', '1415873761343', 'BGN', 5.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ENABLED', '1415879377257', '2014-11-13 10:44:42', '0000-00-00 00:00:00'),
('1416421801621', '1416418137702', 'GHS', 3.00, 1, '1416422192655', '1416422456950', '1416422566013', '1416422644556', '1416422745333', 1, 1, 1, 'ENABLED', '1416424201932', '2014-11-19 18:52:46', '2014-11-19 18:56:41'),
('1416865019358', '1416844886581', 'USD', 3.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ENABLED', '1416849383061', '2014-11-24 21:36:58', '0000-00-00 00:00:00'),
('1417193777564', '1416394706038', 'GHS', 3.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ENABLED', '1414404550867', '2014-11-28 16:56:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fa_assets`
--

CREATE TABLE IF NOT EXISTS `fa_assets` (
  `fa_asset_id` varchar(120) NOT NULL,
  `fa_application_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `has_own_home` tinyint(1) NOT NULL,
  `has_land` tinyint(1) NOT NULL,
  `is_constructing_house` tinyint(1) NOT NULL,
  `roof_material` varchar(255) NOT NULL,
  `car_count` int(11) NOT NULL,
  `has_computer` tinyint(1) NOT NULL,
  `has_motor` tinyint(1) NOT NULL,
  `has_electricity` tinyint(1) NOT NULL,
  `has_phone` tinyint(1) NOT NULL,
  `has_radio` tinyint(1) NOT NULL,
  `has_television` tinyint(1) NOT NULL,
  `others` text,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`fa_asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='asset information for fa application';

--
-- Dumping data for table `fa_assets`
--

INSERT INTO `fa_assets` (`fa_asset_id`, `fa_application_id`, `application_id`, `has_own_home`, `has_land`, `is_constructing_house`, `roof_material`, `car_count`, `has_computer`, `has_motor`, `has_electricity`, `has_phone`, `has_radio`, `has_television`, `others`, `creator`, `created`, `modified`) VALUES
('1414492956080', '1414492003910', '1414424134786', 1, 0, 0, 'Zinc', 1, 1, 1, 1, 1, 1, 1, '', '1414405980170', '2014-11-12 10:11:14', '2014-11-12 10:11:14'),
('1416422566013', '1416421801621', '1416418137702', 0, 0, 0, 'Aluminium roofing sheet', 0, 1, 0, 1, 1, 1, 1, '', '1416424201932', '2014-11-19 18:42:45', '2014-11-19 18:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `fa_debts`
--

CREATE TABLE IF NOT EXISTS `fa_debts` (
  `fa_debt_id` varchar(120) NOT NULL,
  `fa_application_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `has_debt` tinyint(1) NOT NULL,
  `debt_amount` decimal(15,2) DEFAULT NULL,
  `debt_purpose` text,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`fa_debt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='debt information for fa application';

--
-- Dumping data for table `fa_debts`
--

INSERT INTO `fa_debts` (`fa_debt_id`, `fa_application_id`, `application_id`, `has_debt`, `debt_amount`, `debt_purpose`, `creator`, `created`, `modified`) VALUES
('1414486448479', '1414428932319', '1414428115098', 0, NULL, NULL, '1414404550867', '2014-10-28 08:54:07', '2014-10-28 08:54:07'),
('1414493032053', '1414492003910', '1414424134786', 0, NULL, NULL, '1414405980170', '2014-10-28 10:43:51', '2014-10-28 10:43:51'),
('1416422644556', '1416421801621', '1416418137702', 1, 4000.00, 'These are bank loans obtained for varied purposes like rent payment, school fees payment and for the support of the family''s daily needs', '1416424201932', '2014-11-19 18:44:03', '2014-11-19 18:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `fa_dependents`
--

CREATE TABLE IF NOT EXISTS `fa_dependents` (
  `fa_dependent_id` varchar(120) NOT NULL,
  `fa_application_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `order` int(11) NOT NULL COMMENT 'order in which fa dependents are entered',
  `age` int(3) NOT NULL,
  `relationship` varchar(120) NOT NULL,
  `school` varchar(255) NOT NULL,
  `year_in_school` date NOT NULL,
  `tuition` decimal(15,2) NOT NULL,
  `family_contribution` decimal(15,2) NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`fa_dependent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='family dependents information for fa application';

--
-- Dumping data for table `fa_dependents`
--

INSERT INTO `fa_dependents` (`fa_dependent_id`, `fa_application_id`, `application_id`, `fullname`, `order`, `age`, `relationship`, `school`, `year_in_school`, `tuition`, `family_contribution`, `creator`, `created`, `modified`) VALUES
('1415787024462', '1414492003910', '1414424134786', 'Welbeck, Frederick Nii', 0, 29, 'Myself', 'h', '2014-10-10', 9.00, 8.00, '1414405980170', '2014-11-12 10:10:24', '2014-11-12 10:10:24'),
('1415787024550', '1414492003910', '1414424134786', 'hj', 1, 6, 'Wife', 'gf', '2014-10-16', 8.00, 8.00, '1414405980170', '2014-11-12 10:10:24', '2014-11-12 10:10:24'),
('1416422104350', '1416421801621', '1416418137702', 'Amoh-Mensah, Dorcas Afia', 0, 21, 'Myself', 'Wesley Girls'' High School', '2008-10-10', 500.00, 200.00, '1416424201932', '2014-11-19 18:35:03', '2014-11-19 18:35:03'),
('1416422104398', '1416421801621', '1416418137702', 'Chalotte Fofie', 1, 20, 'Sister', 'Mfantiman Senior High School', '2008-10-12', 400.00, 0.00, '1416424201932', '2014-11-19 18:35:03', '2014-11-19 18:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `fa_expenses`
--

CREATE TABLE IF NOT EXISTS `fa_expenses` (
  `fa_expense_id` varchar(120) NOT NULL,
  `fa_application_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `taxes` decimal(15,2) NOT NULL,
  `tuition` decimal(15,2) NOT NULL,
  `entertainment` decimal(15,2) NOT NULL,
  `transportation` decimal(15,2) NOT NULL,
  `fuel` decimal(15,2) NOT NULL,
  `medical_bills` decimal(15,2) NOT NULL,
  `utility_bills` decimal(15,2) NOT NULL,
  `vacations` decimal(15,2) NOT NULL,
  `rent` decimal(15,2) NOT NULL,
  `insurance` decimal(15,2) NOT NULL,
  `food` decimal(15,2) NOT NULL,
  `house_help` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `exceed_explain` text,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`fa_expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='expense details for fa application';

--
-- Dumping data for table `fa_expenses`
--

INSERT INTO `fa_expenses` (`fa_expense_id`, `fa_application_id`, `application_id`, `taxes`, `tuition`, `entertainment`, `transportation`, `fuel`, `medical_bills`, `utility_bills`, `vacations`, `rent`, `insurance`, `food`, `house_help`, `total`, `exceed_explain`, `creator`, `created`, `modified`) VALUES
('1414492876648', '1414492003910', '1414424134786', 345.00, 34.00, 987.00, 89.00, 874.00, 7.00, 5.00, 56.00, 76.00, 87.00, 65.00, 90.00, 0.00, '', '1414405980170', '2014-11-12 10:11:03', '2014-11-12 10:11:03'),
('1416422456950', '1416421801621', '1416418137702', 100.00, 600.00, 100.00, 1000.00, 0.00, 500.00, 1500.00, 0.00, 1600.00, 200.00, 2000.00, 0.00, 7600.00, 'Donations and bank loans', '1416424201932', '2014-11-19 18:40:56', '2014-11-19 18:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `fa_financiers`
--

CREATE TABLE IF NOT EXISTS `fa_financiers` (
  `fa_financier_id` varchar(120) NOT NULL,
  `fa_application_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `relationship` varchar(120) NOT NULL,
  `details` varchar(255) NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`fa_financier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='details of the applicants previous education financier';

--
-- Dumping data for table `fa_financiers`
--

INSERT INTO `fa_financiers` (`fa_financier_id`, `fa_application_id`, `application_id`, `relationship`, `details`, `creator`, `created`, `modified`) VALUES
('1414493050582', '1414492003910', '1414424134786', 'Father', 'FNOW', '1414405980170', '2014-10-28 10:44:10', '2014-10-28 10:44:10'),
('1416422745333', '1416421801621', '1416418137702', 'Mother', 'Cocoa Board Scholarship and Mrs. Matilda Amoh-Mensah', '1416424201932', '2014-11-19 18:45:44', '2014-11-19 18:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `fa_incomes`
--

CREATE TABLE IF NOT EXISTS `fa_incomes` (
  `fa_income_id` varchar(120) NOT NULL,
  `fa_application_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `hoh_primary` decimal(15,2) NOT NULL,
  `hoh_secondary` decimal(15,2) NOT NULL,
  `family_business` decimal(15,2) NOT NULL,
  `investments` decimal(15,2) NOT NULL,
  `relatives` decimal(15,2) NOT NULL,
  `pensions` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `forecast` set('DECREASE','INCREASE','NO CHANGE') NOT NULL,
  `forecast_explain` text,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`fa_income_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='income details of fa application';

--
-- Dumping data for table `fa_incomes`
--

INSERT INTO `fa_incomes` (`fa_income_id`, `fa_application_id`, `application_id`, `hoh_primary`, `hoh_secondary`, `family_business`, `investments`, `relatives`, `pensions`, `total`, `forecast`, `forecast_explain`, `creator`, `created`, `modified`) VALUES
('1414492698311', '1414492003910', '1414424134786', 45.00, 5.00, 9.00, 6.00, 90.00, 89.00, 0.00, 'NO CHANGE', 'No change Ah!', '1414405980170', '2014-11-12 10:10:46', '2014-11-12 10:10:46'),
('1416422192655', '1416421801621', '1416418137702', 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'NO CHANGE', 'My mother who is my sole caretaker is almost going on pension.', '1416424201932', '2014-11-19 18:54:44', '2014-11-19 18:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `fa_references`
--

CREATE TABLE IF NOT EXISTS `fa_references` (
  `fa_reference_id` varchar(120) NOT NULL,
  `fa_application_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone_primary` varchar(20) NOT NULL,
  `phone_secondary` varchar(20) DEFAULT NULL,
  `email_primary` varchar(120) NOT NULL,
  `email_secondary` varchar(120) DEFAULT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`fa_reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='references for applicants fa application';

--
-- Dumping data for table `fa_references`
--

INSERT INTO `fa_references` (`fa_reference_id`, `fa_application_id`, `application_id`, `name`, `address`, `phone_primary`, `phone_secondary`, `email_primary`, `email_secondary`, `creator`, `created`, `modified`) VALUES
('1414487693660', '1414428932319', '1414428115098', 'as', 'sd', 'sd', '', 's@d.com', '', '1414404550867', '2014-10-28 09:14:53', '2014-10-28 09:14:53'),
('1414487693992', '1414428932319', '1414428115098', 'sd', 'sd', '2', '', 's@d.com', '', '1414404550867', '2014-10-28 09:14:53', '2014-10-28 09:14:53'),
('1414494288339', '1414492003910', '1414424134786', 'Dr. Botchway', 'P.O.BOX TN 845', '0302715385', '', 'abc@gmail.com', '', '1414405980170', '2014-10-28 11:04:48', '2014-10-28 11:04:48'),
('1414494288848', '1414492003910', '1414424134786', 'Botchway', 'P.O.BOX TN 445', '0302715385', '', 'abc@gmail.com', '', '1414405980170', '2014-10-28 11:04:48', '2014-10-28 11:04:48'),
('1416423047236', '1416421801621', '1416418137702', 'Mr Boama', 'Enterprise Life Assurance Company, Spintex Branch', '+233275859456', '', 'boama.adu@gmail.com', '', '1416424201932', '2014-11-19 18:50:46', '2014-11-19 18:50:46'),
('1416423047283', '1416421801621', '1416418137702', 'Miss Elizabeth Arthur', 'Wesley Girls'' High School', '+233265892356', '', 'lizzy.arur@gmail.com', '', '1416424201932', '2014-11-19 18:50:46', '2014-11-19 18:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `fa_scholarships`
--

CREATE TABLE IF NOT EXISTS `fa_scholarships` (
  `fa_scholarship_id` varchar(120) NOT NULL,
  `fa_application_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `type` set('Current','Expected') NOT NULL,
  `amount` decimal(9,2) DEFAULT NULL,
  `duration` varchar(120) DEFAULT NULL,
  `decision_date` date DEFAULT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`fa_scholarship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='other scholarships the applicant has or has applied for';

--
-- Dumping data for table `fa_scholarships`
--

INSERT INTO `fa_scholarships` (`fa_scholarship_id`, `fa_application_id`, `application_id`, `name`, `type`, `amount`, `duration`, `decision_date`, `creator`, `created`, `modified`) VALUES
('1414494013470', '1414492003910', '1414424134786', 'GVV', 'Expected', 5000.00, '', '2014-10-01', '1414405980170', '2014-10-28 11:00:13', '2014-10-28 11:00:13'),
('1416422842356', '1416421801621', '1416418137702', 'Cocoa Board Scholarship', 'Current', 400.00, 'Through out Senior High School', '2008-10-02', '1416424201932', '2014-11-19 18:47:21', '2014-11-19 18:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `file_codes`
--

CREATE TABLE IF NOT EXISTS `file_codes` (
  `file_code_id` varchar(120) NOT NULL,
  `category` varchar(120) NOT NULL,
  `mime` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`file_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='allowable file formats expected to be uploaded';

--
-- Dumping data for table `file_codes`
--


-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `message` text,
  `created` datetime DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `hostname` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `refer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  FULLTEXT KEY `message` (`message`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1090 ;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `type`, `message`, `created`, `ip`, `hostname`, `uri`, `refer`) VALUES
(1, 'user', '1414404550867: unable to login with unconfirmed account', '2014-10-27 15:14:35', '10.10.32.94', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(2, 'user', '1414404550867: unable to login with unconfirmed account', '2014-10-27 15:17:11', '10.10.32.94', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(3, 'email', 'Account activation email sent to e=daniel.botchway@ashesi.edu.gh', '2014-10-27 15:17:13', '10.10.32.94', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(4, 'user', '1414404550867: unable to login with unconfirmed account', '2014-10-27 15:18:00', '10.10.32.94', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(5, 'email', 'Account activation email sent to e=daniel.botchway@ashesi.edu.gh', '2014-10-27 15:18:01', '10.10.32.94', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(6, '1414404550867', 'Account activation successfully', '2014-10-27 15:18:15', '10.10.32.94', '10.10.26.47', '/admission/users/confirm/3c72b3e6023b32794e6543f6577b6a540dc6bb53/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a', NULL),
(7, '1414404550867', 'Successful logout', '2014-10-27 15:18:21', '10.10.32.94', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary'),
(8, '1414408457505', 'Successful login', '2014-10-27 15:28:43', '10.10.26.125', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(9, 'user', '1414405980170: unable to login with unconfirmed account', '2014-10-27 15:34:09', '10.10.26.150', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(10, 'email', 'Account activation email sent to e=fwelbeck@ashesi.edu.gh', '2014-10-27 15:34:10', '10.10.26.150', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(11, '1414405980170', 'Account activation successfully', '2014-10-27 15:35:04', '10.10.26.150', '10.10.26.47', '/admission/users/confirm/ebb27cb890c004962234b84d8187bf7d488cb09e/1414405980170/2574d774e930d875460f4b66d34a882c1df7c734', NULL),
(16, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin1 ', '2014-10-27 16:41:37', '10.10.26.152', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(17, '1414404550867', 'Successful login', '2014-10-27 16:41:44', '10.10.26.152', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(18, '1414404550867', 'Successful login', '2014-10-27 16:44:12', '10.10.26.150', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(19, '1414404550867', 'Successful logout', '2014-10-27 16:45:25', '10.10.26.150', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/admissions/add'),
(20, '1414404550867', 'Successful login', '2014-10-27 16:49:02', '10.10.26.152', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(21, 'user', 'Failed login attempt with u=daniel.botchway@gmail.com and p=admin 1', '2014-10-27 16:51:54', '10.10.26.152', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(22, '1414404550867', 'Successful login', '2014-10-27 16:52:04', '10.10.26.152', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(23, '1414404550867', 'Successful logout', '2014-10-27 16:59:22', '10.10.26.152', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/fa_expenses/add'),
(24, '1414404550867', 'Successful login', '2014-10-28 08:53:14', '10.10.30.32', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(25, '1414404550867', 'Successful login', '2014-10-28 09:14:13', '10.10.30.32', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(26, 'error', '[MissingControllerException] Controller class FaDocumentsController could not be found.\nException Attributes: array (\n  ''class'' => ''FaDocumentsController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/fa_documents/add\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 09:14:53', '10.10.30.32', '10.10.26.47', '/admission/fa_documents/add', 'http://10.10.26.47/admission/fa_references/add'),
(27, '1414405980170', 'Successful login', '2014-10-28 09:17:07', '10.10.26.150', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(28, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 09:36:53', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/fa_scholarships/add'),
(29, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 09:41:33', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/fa_scholarships/add'),
(30, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 09:52:10', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/fa_scholarships/add'),
(31, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 09:53:32', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/fa_scholarships/add'),
(32, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 09:56:43', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/fa_scholarships/add'),
(33, '1414408457505', 'Successful login', '2014-10-28 10:40:21', '10.10.26.125', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(34, '1414408457505', 'Successful login', '2014-10-28 10:42:37', '10.10.26.125', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(35, 'error', '[MissingControllerException] Controller class FaDocumentsController could not be found.\nException Attributes: array (\n  ''class'' => ''FaDocumentsController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/fa_documents/add\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 11:04:48', '10.10.26.150', '10.10.26.47', '/admission/fa_documents/add', 'http://10.10.26.47/admission/fa_references/add'),
(36, '1414404550867', 'Successful login', '2014-10-28 11:06:28', '10.10.30.32', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(37, '1414404550867', 'Successful logout', '2014-10-28 11:20:15', '10.10.30.32', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/fa_dependents/add'),
(38, '1414404550867', 'Successful login', '2014-10-28 12:00:15', '10.10.30.32', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(39, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 12:00:27', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/applicants/add'),
(40, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 12:07:17', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/users/add'),
(41, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 12:08:16', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/users/add'),
(42, 'error', '[MissingControllerException] Controller class ResetController could not be found.\nException Attributes: array (\n  ''class'' => ''ResetController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/reset\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 12:11:52', '10.10.30.32', '10.10.26.47', '/admission/reset', NULL),
(43, '1414404550867', 'Successful login', '2014-10-28 12:14:35', '10.10.30.32', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(44, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 12:17:34', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/applications/seasons'),
(45, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 12:20:11', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/applications/seasons'),
(46, '1414404550867', 'Successful logout', '2014-10-28 12:20:38', '10.10.30.32', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1414428115098'),
(47, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 13:03:23', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/'),
(48, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 13:04:09', '10.10.30.32', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/'),
(49, '1414404550867', 'Successful login', '2014-10-28 13:04:29', '10.10.30.32', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(50, '1414404550867', 'Successful login', '2014-10-28 13:15:27', '10.10.30.32', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(51, '1414408457505', 'Successful logout', '2014-10-28 13:39:57', '10.10.26.125', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/fa_expenses/add'),
(52, '1414408457505', 'Successful login', '2014-10-28 14:39:37', '10.10.26.125', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(53, '1414404550867', 'Successful login', '2014-10-28 15:03:57', '10.10.26.171', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(54, '1414404550867', 'Successful logout', '2014-10-28 15:14:06', '10.10.26.171', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/relatives/add'),
(55, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 15:17:41', '10.10.26.171', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/'),
(56, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-28 15:20:41', '10.10.26.171', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/'),
(57, '1414404550867', 'Successful login', '2014-10-28 15:55:14', '10.10.30.32', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(58, '1414404550867', 'Successful logout', '2014-10-28 15:55:43', '10.10.30.32', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1414428115098'),
(59, '1414404550867', 'Successful login', '2014-10-28 16:21:43', '10.10.30.32', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(60, 'error', '[MissingActionException] Action ApplicantsController::index() could not be found.\nException Attributes: array (\n  ''controller'' => ''ApplicantsController'',\n  ''action'' => ''index'',\n)\nRequest URL: /admission/applicants/\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(ApplicantsController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-10-28 16:31:49', '10.10.30.32', '10.10.26.47', '/admission/applicants/', 'http://10.10.26.47/admission/fa_applications/summary/1414428932319'),
(61, '1414404550867', 'Successful logout', '2014-10-28 16:43:07', '10.10.30.32', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1414428115098'),
(62, '1414404550867', 'Successful login', '2014-10-28 17:04:39', '10.10.27.58', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(63, '1414404550867', 'Successful login', '2014-10-29 08:35:36', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(64, '1414404550867', 'Successful logout', '2014-10-29 08:35:44', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons'),
(65, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-29 08:36:39', '10.10.30.38', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/'),
(66, '1414404550867', 'Successful login', '2014-10-29 08:44:10', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(67, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin1', '2014-10-29 10:04:04', '10.10.27.58', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(68, '1414404550867', 'Successful login', '2014-10-29 10:04:17', '10.10.27.58', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(69, '1414408457505', 'Successful login', '2014-10-29 10:04:57', '10.10.26.125', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(70, '1414404550867', 'Successful login', '2014-10-29 10:21:04', '10.10.26.152', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(71, '1414404550867', 'Successful logout', '2014-10-29 10:21:23', '10.10.26.152', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applicants/edit/1414498617466'),
(72, 'error', '[Requests_Exception] cURL error 28: Operation timed out after 10140 milliseconds with 0 out of 0 bytes received\nRequest URL: /admission/payments/add\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\Vendor\\MPower\\mpower\\libraries\\Requests.php(336): Requests_Transport_cURL->request(''https://app.mpo...'', Array, ''{"invoice_data"...'', Array)\n#1 C:\\server\\apache\\htdocs\\admission\\app\\Vendor\\MPower\\mpower\\libraries\\Requests.php(224): Requests::request(''https://app.mpo...'', Array, ''{"invoice_data"...'', ''POST'', Array)\n#2 C:\\server\\apache\\htdocs\\admission\\app\\Vendor\\MPower\\mpower\\utilities.php(24): Requests::post(''https://app.mpo...'', Array, ''{"invoice_data"...'', Array)\n#3 C:\\server\\apache\\htdocs\\admission\\app\\Vendor\\MPower\\mpower\\checkout\\onsite_invoice.php(74): MPower_Utilities::httpJsonRequest(''https://app.mpo...'', Array)\n#4 C:\\server\\apache\\htdocs\\admission\\app\\Controller\\PaymentsController.php(43): MPower_Onsite_Invoice->create(NULL)\n#5 [internal function]: PaymentsController->add()\n#6 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(486): ReflectionMethod->invokeArgs(Object(PaymentsController), Array)\n#7 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#8 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(PaymentsController), Object(CakeRequest), Object(CakeResponse))\n#9 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#10 {main}', '2014-10-29 10:32:28', '10.10.30.46', '10.10.26.47', '/admission/payments/add', 'http://10.10.26.47/admission/payments/add'),
(73, '1414404550867', 'Successful login', '2014-10-29 10:33:26', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(74, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-29 10:33:38', '10.10.30.38', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/applications/summary/1414428115098'),
(75, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-29 10:35:36', '10.10.30.38', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/applicants/edit/1414498617466'),
(76, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-29 10:35:48', '10.10.30.38', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/admissions/edit/1414428826753'),
(77, 'error', '[Requests_Exception] cURL error 28: Operation timed out after 10795 milliseconds with 0 out of 0 bytes received\nRequest URL: /admission/payments/add\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\Vendor\\MPower\\mpower\\libraries\\Requests.php(336): Requests_Transport_cURL->request(''https://app.mpo...'', Array, ''{"invoice_data"...'', Array)\n#1 C:\\server\\apache\\htdocs\\admission\\app\\Vendor\\MPower\\mpower\\libraries\\Requests.php(224): Requests::request(''https://app.mpo...'', Array, ''{"invoice_data"...'', ''POST'', Array)\n#2 C:\\server\\apache\\htdocs\\admission\\app\\Vendor\\MPower\\mpower\\utilities.php(24): Requests::post(''https://app.mpo...'', Array, ''{"invoice_data"...'', Array)\n#3 C:\\server\\apache\\htdocs\\admission\\app\\Vendor\\MPower\\mpower\\checkout\\onsite_invoice.php(74): MPower_Utilities::httpJsonRequest(''https://app.mpo...'', Array)\n#4 C:\\server\\apache\\htdocs\\admission\\app\\Controller\\PaymentsController.php(43): MPower_Onsite_Invoice->create(NULL)\n#5 [internal function]: PaymentsController->add()\n#6 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(486): ReflectionMethod->invokeArgs(Object(PaymentsController), Array)\n#7 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#8 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(PaymentsController), Object(CakeRequest), Object(CakeResponse))\n#9 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#10 {main}', '2014-10-29 10:36:27', '10.10.30.46', '10.10.26.47', '/admission/payments/add', 'http://10.10.26.47/admission/payments/add'),
(78, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-29 10:36:28', '10.10.30.38', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/applications/summary/1414428115098'),
(79, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-29 10:36:32', '10.10.30.38', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/applications/summary/1414428115098'),
(80, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-29 10:36:36', '10.10.30.38', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/applications/summary/1414428115098'),
(81, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-29 10:37:05', '10.10.30.38', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/applications/summary/1414428115098'),
(82, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-29 10:40:44', '10.10.30.38', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/fa_applications/summary/1414428932319'),
(83, 'error', '[MissingControllerException] Controller class FaDocumentsController could not be found.\nException Attributes: array (\n  ''class'' => ''FaDocumentsController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/fa_documents/add\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-29 10:41:55', '10.10.30.46', '10.10.26.47', '/admission/fa_documents/add', 'http://10.10.26.47/admission/fa_references/edit/1414428932319'),
(84, '1414404550867', 'Successful logout', '2014-10-29 10:44:14', '10.10.30.46', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/fa_references/edit/1414428932319'),
(85, '1414404550867', 'Successful login', '2014-10-29 10:44:30', '10.10.30.46', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(86, '1414404550867', 'Successful logout', '2014-10-29 10:45:34', '10.10.30.46', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/seasons'),
(87, '1414404550867', 'Successful login', '2014-10-29 10:45:54', '10.10.30.46', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(88, '1414404550867', 'Successful login', '2014-10-29 12:37:16', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(89, '1414404550867', 'Successful logout', '2014-10-29 12:50:13', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/admissions/edit/1414428826753'),
(90, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=ADMIN 1', '2014-10-29 12:50:19', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(91, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=ADMIN 1', '2014-10-29 12:50:25', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(92, 'email', 'Password reset email sent to e=daniel.botchway@ashesi.edu.gh', '2014-10-29 12:50:51', '10.10.30.38', '10.10.26.47', '/admission/users/send_password_reset_email', 'http://10.10.26.47/admission/users/forgot'),
(93, '1414404550867', 'Successful password reset', '2014-10-29 12:51:32', '10.10.30.38', '10.10.26.47', '/admission/users/reset/1d28025d32eeade6e11914a7446eb4e2fadb8987/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a', 'http://10.10.26.47/admission/users/reset/1d28025d32eeade6e11914a7446eb4e2fadb8987/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a'),
(94, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 12:51:37', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(95, '1414404550867', 'Successful logout', '2014-10-29 12:51:38', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(96, '1414404550867', 'Successful login', '2014-10-29 12:52:29', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(97, '1414404550867', 'Successful logout', '2014-10-29 12:52:43', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons'),
(98, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 12:52:47', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(99, '1414404550867', 'Successful logout', '2014-10-29 12:52:48', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(100, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin 1', '2014-10-29 12:55:08', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(101, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin 1', '2014-10-29 12:55:13', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(102, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin 1', '2014-10-29 12:55:18', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(103, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin 1', '2014-10-29 12:56:20', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(104, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin 1', '2014-10-29 12:57:29', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(105, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin 1', '2014-10-29 12:58:23', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(106, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin 1', '2014-10-29 12:59:49', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(107, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin 1', '2014-10-29 13:00:08', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(108, 'error', 'Fatal Error (4): syntax error, unexpected end of file, expecting ''('' in [C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Utility\\CakeTime.php, line 257]', '2014-10-29 13:00:12', '10.10.30.38', '10.10.26.47', '/admission/users/forgot', 'http://10.10.26.47/admission/'),
(109, 'error', '[FatalErrorException] syntax error, unexpected end of file, expecting ''(''\nRequest URL: /admission/users/forgot\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Error\\ErrorHandler.php(184): ErrorHandler::handleFatalError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 257)\n#1 [internal function]: ErrorHandler::handleError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 257, Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(926): call_user_func(''ErrorHandler::h...'', 4, ''syntax error, u...'', ''C:\\server\\apach...'', 257, Array)\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(899): App::_checkFatalError()\n#4 [internal function]: App::shutdown()\n#5 {main}', '2014-10-29 13:00:12', '10.10.30.38', '10.10.26.47', '/admission/users/forgot', 'http://10.10.26.47/admission/'),
(110, '1414404550867', 'Successful password reset', '2014-10-29 13:00:55', '10.10.30.38', '10.10.26.47', '/admission/users/reset/1d28025d32eeade6e11914a7446eb4e2fadb8987/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a', 'http://10.10.26.47/admission/users/reset/1d28025d32eeade6e11914a7446eb4e2fadb8987/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a'),
(111, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 13:01:44', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(112, '1414404550867', 'Successful logout', '2014-10-29 13:01:44', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(113, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 13:03:05', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(114, '1414404550867', 'Successful logout', '2014-10-29 13:03:06', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(115, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 13:03:26', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(116, '1414404550867', 'Successful logout', '2014-10-29 13:03:26', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(117, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=a', '2014-10-29 13:04:23', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(118, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 13:04:35', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(119, '1414404550867', 'Successful logout', '2014-10-29 13:04:37', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(120, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 13:04:50', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(121, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 13:05:05', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(122, '1414404550867', 'Successful logout', '2014-10-29 13:05:05', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(123, 'error', '[CakeException] CakeTime could not be found\nRequest URL: /admission/\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\View\\HelperCollection.php(136): TimeHelper->__construct(Object(View), Array)\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\View\\View.php(884): HelperCollection->load(''Time'', Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\View\\View.php(464): View->loadHelpers()\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(948): View->render(NULL, NULL)\n#4 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(194): Controller->render()\n#5 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#6 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#7 {main}', '2014-10-29 13:05:05', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(124, 'error', '[MissingControllerException] Controller class LogoutController could not be found.\nException Attributes: array (\n  ''class'' => ''LogoutController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/logout\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-10-29 13:05:32', '10.10.30.38', '10.10.26.47', '/admission/logout', NULL),
(125, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 13:06:03', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(126, '1414404550867', 'Successful logout', '2014-10-29 13:06:04', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(127, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 13:07:44', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(128, '1414404550867', 'Successful logout', '2014-10-29 13:07:45', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(129, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin ', '2014-10-29 13:10:46', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(130, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 13:10:52', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(131, '1414404550867', 'Successful logout', '2014-10-29 13:10:52', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(132, 'user', '1414404550867: unable to login with deleted or diabled account', '2014-10-29 13:13:09', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(133, '1414404550867', 'Successful logout', '2014-10-29 13:13:10', '10.10.30.38', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(134, '1414404550867', 'Successful login', '2014-10-29 13:13:54', '10.10.30.38', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(135, 'user', 'Failed login attempt with u=mjamena@ashesi.edu.gh and p=opendoor', '2014-11-05 10:12:34', '10.10.27.53', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(136, 'user', 'New account created with u=mjamena@ashesi.edu.gh', '2014-11-05 10:13:51', '10.10.27.53', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(137, 'user', '1415184962726: unable to login with unconfirmed account', '2014-11-05 10:14:27', '10.10.27.53', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(138, 'email', 'Account activation email sent to e=mjamena@ashesi.edu.gh', '2014-11-05 10:14:33', '10.10.27.53', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(139, '1415184962726', 'Account activation successfully', '2014-11-05 10:15:22', '10.10.27.53', '10.10.26.47', '/admission/users/confirm/e7ae70b703165863cc980f2f1fe7573a611e26d5/1415184962726/191350d535badbb6a558aac164f9f69c5059cf93', NULL),
(140, '1415184962726', 'Account activation successfully', '2014-11-05 10:15:22', '10.10.27.53', '10.10.26.47', '/admission/users/confirm/e7ae70b703165863cc980f2f1fe7573a611e26d5/1415184962726/191350d535badbb6a558aac164f9f69c5059cf93', NULL),
(141, '1415184962726', 'Account activation successfully', '2014-11-05 12:50:57', '10.10.27.53', '10.10.26.47', '/admission/users/confirm/e7ae70b703165863cc980f2f1fe7573a611e26d5/1415184962726/191350d535badbb6a558aac164f9f69c5059cf93', NULL),
(142, '1415184962726', 'Successful login', '2014-11-05 14:29:13', '10.10.26.160', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(150, '1415184962726', 'Successful logout', '2014-11-05 15:17:43', '10.10.26.160', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/documents/add'),
(203, '1414404550867', 'Successful login', '2014-11-05 15:58:40', '10.10.26.242', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(204, '1414404550867', 'Successful logout', '2014-11-05 15:59:26', '10.10.26.242', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1414428115098'),
(205, '1414404550867', 'Successful login', '2014-11-05 16:02:01', '10.10.26.242', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(206, '1414404550867', 'Successful logout', '2014-11-05 16:08:21', '10.10.26.242', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1414428115098'),
(207, '1414404550867', 'Successful login', '2014-11-05 16:08:32', '10.10.26.242', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(208, '1414404550867', 'Successful login', '2014-11-05 16:17:38', '10.10.26.242', '10.10.26.47', '/admission_new/', 'http://10.10.26.47/admission_new/'),
(209, '1415184962726', 'Successful login', '2014-11-05 16:36:53', '10.10.26.160', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(210, '1414405980170', 'Successful login', '2014-11-05 16:39:27', '10.10.27.175', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(212, '1415184962726', 'Successful logout', '2014-11-05 16:59:42', '10.10.26.160', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/payments/add'),
(213, '1414404550867', 'Successful logout', '2014-11-05 17:16:03', '10.10.31.67', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/fa_applications/summary/1414428932319'),
(214, '1414404550867', 'Successful login', '2014-11-07 10:52:34', '10.10.26.85', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(215, '1414404550867', 'Successful logout', '2014-11-07 10:53:48', '10.10.26.85', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/documents/edit'),
(216, 'user', 'New account created with u=ayawson@gmail.com', '2014-11-07 15:20:10', '192.168.1.46', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(217, 'user', '1415374959486: unable to login with unconfirmed account', '2014-11-07 15:20:31', '192.168.1.46', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(218, 'email', 'Account activation email sent to e=ayawson@gmail.com', '2014-11-07 15:20:34', '192.168.1.46', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(219, 'email', 'Account activation email sent to e=ayawson@gmail.com', '2014-11-07 15:23:43', '192.168.1.46', '10.10.26.47', '/admission/users/send_account_confirmation_email/1', 'http://10.10.26.47/admission/'),
(220, '1415374959486', 'Account activation successfully', '2014-11-07 15:24:52', '192.168.1.46', '10.10.26.47', '/admission/users/confirm/b20482069d88475d2da9a0627a848de9e92b0ccc/1415374959486/ac0d46ab815aa76609ac222b9b0c5af8e97314eb', NULL),
(221, '1415374959486', 'Successful logout', '2014-11-07 15:28:36', '192.168.1.46', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1415373926751'),
(222, 'email', 'Password reset email sent to e=zeina.kowalski@ashesi.edu.gh', '2014-11-11 08:38:19', '10.10.26.212', '10.10.26.47', '/admission/users/send_password_reset_email', 'http://10.10.26.47/admission/users/forgot'),
(223, '1414408457505', 'Successful password reset', '2014-11-11 08:39:41', '10.10.26.212', '10.10.26.47', '/admission/users/reset/7bf4960d7c3cc9d3b70316f4736ff0beb9a0d0e1/1414408457505/bcfa04cb6e8abc17244258ff746ca4100873e611', 'http://10.10.26.47/admission/users/reset/7bf4960d7c3cc9d3b70316f4736ff0beb9a0d0e1/1414408457505/bcfa04cb6e8abc17244258ff746ca4100873e611'),
(224, '1414408457505', 'Successful login', '2014-11-11 08:39:50', '10.10.26.212', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(225, '1414408457505', 'Successful login', '2014-11-11 11:24:17', '10.10.27.97', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(226, 'user', 'New account created with u=hudsontaylor3b@gmail.com', '2014-11-11 11:35:03', '10.10.27.82', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(227, 'user', '1415711284132: unable to login with unconfirmed account', '2014-11-11 11:35:16', '10.10.27.82', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(228, 'email', 'Account activation email sent to e=hudsontaylor3b@gmail.com', '2014-11-11 11:35:18', '10.10.27.82', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(229, 'user', '1415711284132: unable to login with unconfirmed account', '2014-11-11 11:38:01', '10.10.27.82', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(230, 'email', 'Account activation email sent to e=hudsontaylor3b@gmail.com', '2014-11-11 11:38:03', '10.10.27.82', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(231, '1415711284132', 'Account activation successfully', '2014-11-11 11:39:15', '10.10.27.82', '10.10.26.47', '/admission/users/confirm/5621759c9fa2d831bdb02b76ea8f1d1a64687542/1415711284132/29c1d52f0cff56cedde279bb532ffb803d5d29c0', NULL),
(232, '1414408457505', 'Successful login', '2014-11-11 13:33:11', '10.10.27.97', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(233, '1414408457505', 'Successful login', '2014-11-11 13:37:30', '10.10.27.97', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(234, 'user', 'Failed login attempt with u=fwelbeck@ashesi.edu.gh and p=dcderick27@', '2014-11-12 09:22:27', '10.10.26.215', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(235, '1414405980170', 'Successful login', '2014-11-12 09:22:40', '10.10.26.215', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(236, '1414408457505', 'Successful login', '2014-11-12 09:46:28', '10.10.27.66', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(237, '1414404550867', 'Successful login', '2014-11-12 10:37:49', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(238, 'error', 'Fatal Error (4): syntax error, unexpected end of file, expecting function (T_FUNCTION) in [C:\\server\\apache\\htdocs\\admission\\app\\Controller\\FaIncomesController.php, line 166]', '2014-11-12 11:21:27', '10.10.27.66', '10.10.26.47', '/admission/fa_incomes/add', 'http://10.10.26.47/admission/fa_applications/summary/1414493014472'),
(239, 'error', '[FatalErrorException] syntax error, unexpected end of file, expecting function (T_FUNCTION)\nRequest URL: /admission/fa_incomes/add\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Error\\ErrorHandler.php(184): ErrorHandler::handleFatalError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 166)\n#1 [internal function]: ErrorHandler::handleError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 166, Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(926): call_user_func(''ErrorHandler::h...'', 4, ''syntax error, u...'', ''C:\\server\\apach...'', 166, Array)\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(899): App::_checkFatalError()\n#4 [internal function]: App::shutdown()\n#5 {main}', '2014-11-12 11:21:27', '10.10.27.66', '10.10.26.47', '/admission/fa_incomes/add', 'http://10.10.26.47/admission/fa_applications/summary/1414493014472'),
(240, 'error', 'Fatal Error (4): syntax error, unexpected end of file, expecting function (T_FUNCTION) in [C:\\server\\apache\\htdocs\\admission\\app\\Controller\\FaIncomesController.php, line 166]', '2014-11-12 11:22:24', '10.10.27.66', '10.10.26.47', '/admission/fa_incomes/add', 'http://10.10.26.47/admission/fa_applications/summary/1414493014472'),
(241, 'error', '[FatalErrorException] syntax error, unexpected end of file, expecting function (T_FUNCTION)\nRequest URL: /admission/fa_incomes/add\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Error\\ErrorHandler.php(184): ErrorHandler::handleFatalError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 166)\n#1 [internal function]: ErrorHandler::handleError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 166, Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(926): call_user_func(''ErrorHandler::h...'', 4, ''syntax error, u...'', ''C:\\server\\apach...'', 166, Array)\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(899): App::_checkFatalError()\n#4 [internal function]: App::shutdown()\n#5 {main}', '2014-11-12 11:22:24', '10.10.27.66', '10.10.26.47', '/admission/fa_incomes/add', 'http://10.10.26.47/admission/fa_applications/summary/1414493014472'),
(242, 'error', 'Fatal Error (4): syntax error, unexpected end of file, expecting function (T_FUNCTION) in [C:\\server\\apache\\htdocs\\admission\\app\\Controller\\FaIncomesController.php, line 166]', '2014-11-12 11:22:33', '10.10.27.66', '10.10.26.47', '/admission/fa_incomes/add', 'http://10.10.26.47/admission/fa_applications/summary/1414493014472');
INSERT INTO `logs` (`id`, `type`, `message`, `created`, `ip`, `hostname`, `uri`, `refer`) VALUES
(243, 'error', '[FatalErrorException] syntax error, unexpected end of file, expecting function (T_FUNCTION)\nRequest URL: /admission/fa_incomes/add\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Error\\ErrorHandler.php(184): ErrorHandler::handleFatalError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 166)\n#1 [internal function]: ErrorHandler::handleError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 166, Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(926): call_user_func(''ErrorHandler::h...'', 4, ''syntax error, u...'', ''C:\\server\\apach...'', 166, Array)\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(899): App::_checkFatalError()\n#4 [internal function]: App::shutdown()\n#5 {main}', '2014-11-12 11:22:33', '10.10.27.66', '10.10.26.47', '/admission/fa_incomes/add', 'http://10.10.26.47/admission/fa_applications/summary/1414493014472'),
(244, 'error', 'Fatal Error (4): syntax error, unexpected end of file, expecting function (T_FUNCTION) in [C:\\server\\apache\\htdocs\\admission\\app\\Controller\\FaIncomesController.php, line 166]', '2014-11-12 11:22:38', '10.10.27.66', '10.10.26.47', '/admission/fa_incomes/add', 'http://10.10.26.47/admission/fa_applications/summary/1414493014472'),
(245, 'error', '[FatalErrorException] syntax error, unexpected end of file, expecting function (T_FUNCTION)\nRequest URL: /admission/fa_incomes/add\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Error\\ErrorHandler.php(184): ErrorHandler::handleFatalError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 166)\n#1 [internal function]: ErrorHandler::handleError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 166, Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(926): call_user_func(''ErrorHandler::h...'', 4, ''syntax error, u...'', ''C:\\server\\apach...'', 166, Array)\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(899): App::_checkFatalError()\n#4 [internal function]: App::shutdown()\n#5 {main}', '2014-11-12 11:22:38', '10.10.27.66', '10.10.26.47', '/admission/fa_incomes/add', 'http://10.10.26.47/admission/fa_applications/summary/1414493014472'),
(246, '1414408457505', 'Successful login', '2014-11-12 14:28:31', '10.10.27.66', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(247, '1414408457505', 'Successful logout', '2014-11-12 14:28:51', '10.10.27.66', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1414423729155'),
(248, 'user', 'Failed login attempt with u=abotchway@ahesi.edu.gh and p=Reuelah92', '2014-11-13 08:46:51', '10.10.27.234', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(249, 'user', 'New account created with u=abotchway@ahesi.edu.gh', '2014-11-13 08:48:51', '10.10.27.234', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(250, 'user', '1415868555792: unable to login with unconfirmed account', '2014-11-13 08:49:19', '10.10.27.234', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(251, 'email', 'Account activation email sent to e=abotchway@ahesi.edu.gh', '2014-11-13 08:49:26', '10.10.27.234', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(252, 'email', 'Account activation email sent to e=abotchway@ahesi.edu.gh', '2014-11-13 08:51:13', '10.10.27.234', '10.10.26.47', '/admission/users/send_account_confirmation_email/1', 'http://10.10.26.47/admission/'),
(253, '1414404550867', 'Successful login', '2014-11-13 09:41:29', '10.10.26.224', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(254, 'user', 'Failed login attempt with u=zeina.kowalski@gmail.com and p=baabs3', '2014-11-13 09:41:55', '10.10.26.198', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(255, 'user', 'Failed login attempt with u=zeina.kowalski@gmail.com and p=baabs3', '2014-11-13 09:42:26', '10.10.26.198', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(256, '1414408457505', 'Successful login', '2014-11-13 09:43:19', '10.10.26.198', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(257, '1414404550867', 'Successful logout', '2014-11-13 10:06:14', '10.10.27.128', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applicants/edit/1414498617466'),
(258, 'user', 'New account created with u=botchwaydan@gmail.com', '2014-11-13 10:11:33', '10.10.27.128', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(259, 'user', '1415879377257: unable to login with unconfirmed account', '2014-11-13 10:11:54', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(260, 'email', 'Account activation email sent to e=botchwaydan@gmail.com', '2014-11-13 10:11:56', '10.10.27.128', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(261, 'error', '[SocketException] SMTP server did not accept the connection or trying to connect to non TLS SMTP server using TLS.\nRequest URL: /admission/users/send_account_confirmation_email/1\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Network\\Email\\SmtpTransport.php(61): SmtpTransport->_connect()\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Network\\Email\\CakeEmail.php(1066): SmtpTransport->send(Object(CakeEmail))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\Controller\\UsersController.php(113): CakeEmail->send()\n#3 [internal function]: UsersController->send_account_confirmation_email(''1'')\n#4 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(486): ReflectionMethod->invokeArgs(Object(UsersController), Array)\n#5 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#6 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#7 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#8 {main}', '2014-11-13 10:12:59', '10.10.27.128', '10.10.26.47', '/admission/users/send_account_confirmation_email/1', 'http://10.10.26.47/admission/'),
(262, '1415879377257', 'Account activation successfully', '2014-11-13 10:12:59', '10.10.27.128', '10.10.26.47', '/admission/users/confirm/2a28a92c664c26559363b6b31f9c363c94e1cf75/1415879377257/b88698dfed91116e12887898d848063f5f969579', NULL),
(263, '1415879377257', 'Successful logout', '2014-11-13 10:52:23', '10.10.27.128', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1415873761343'),
(264, '1415879377257', 'Successful login', '2014-11-13 10:52:30', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(265, '1414404550867', 'Successful login', '2014-11-13 11:27:06', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(266, '1414405980170', 'Successful login', '2014-11-13 11:45:33', '10.10.26.202', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(267, 'user', 'Failed login attempt with u=botchwaydan@gmail.com and p=admin 1', '2014-11-14 10:07:01', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(268, 'user', 'New account created with u=botchwaydan@gmail.com', '2014-11-14 10:07:17', '10.10.27.128', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(269, 'user', 'Failed login attempt with u=botchwaydan@gmail.com and p=admin 1', '2014-11-14 10:11:15', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(270, 'user', 'New account created with u=botchwaydan@gmail.com', '2014-11-14 10:11:34', '10.10.27.128', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(271, 'user', 'Failed login attempt with u=botchwaydan@gmail.com and p=admin 1', '2014-11-14 10:14:19', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(272, 'user', 'New account created with u=botchwaydan@gmail.com', '2014-11-14 10:14:47', '10.10.27.128', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(273, 'user', '1415963626508: unable to login with unconfirmed account', '2014-11-14 10:15:16', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(274, 'email', 'Account activation email sent to e=botchwaydan@gmail.com', '2014-11-14 10:15:18', '10.10.27.128', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(275, 'user', '1415963626508: unable to login with unconfirmed account', '2014-11-14 10:17:08', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(276, 'email', 'Account activation email sent to e=botchwaydan@gmail.com', '2014-11-14 10:17:10', '10.10.27.128', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(277, '1415963626508', 'Account activation successfully', '2014-11-14 10:17:42', '10.10.27.128', '10.10.26.47', '/admission/users/confirm/a3cd67ab1129c94ab45a529d89de4a8f838e860b/1415963626508/0d9d2e9abfb4c2ed424e9cdf50dd32a19b5727fc', NULL),
(278, 'user', 'Account creation failed for u=botchwaydan@gmail.com', '2014-11-14 10:19:06', '10.10.27.128', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(279, 'user', 'Account creation failed for u=botchwaydan@gmail.com', '2014-11-14 10:19:57', '10.10.27.128', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(280, 'user', 'Account creation failed for u=botchwaydan@gmail.com', '2014-11-14 10:20:01', '10.10.27.128', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(281, 'user', 'Account creation failed for u=botchwaydan@gmail.com', '2014-11-14 10:20:04', '10.10.27.128', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(282, 'user', 'Account creation failed for u=botchwaydan@gmail.com', '2014-11-14 10:22:27', '10.10.27.128', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(283, 'user', 'New account created with u=botchwaydan@gmail.com', '2014-11-14 10:23:04', '10.10.27.128', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(284, 'email', 'Account activation email sent to e=botchwaydan@gmail.com', '2014-11-14 10:23:06', '10.10.27.128', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/users/add'),
(285, 'user', '1415963626508: unable to login with unconfirmed account', '2014-11-14 10:24:31', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(286, 'email', 'Account activation email sent to e=botchwaydan@gmail.com', '2014-11-14 10:24:32', '10.10.27.128', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(287, 'user', '1415963626508: unable to login with unconfirmed account', '2014-11-14 10:24:50', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(288, 'email', 'Account activation email sent to e=botchwaydan@gmail.com', '2014-11-14 10:24:52', '10.10.27.128', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(289, '1415963626508', 'Successful logout', '2014-11-14 10:33:09', '10.10.27.128', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary'),
(290, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=admin ', '2014-11-14 10:33:17', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(291, '1415879377257', 'Successful login', '2014-11-14 10:33:22', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(292, '1415879377257', 'Successful logout', '2014-11-14 10:33:37', '10.10.27.128', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1415873761343'),
(293, '1415879377257', 'Successful login', '2014-11-14 10:34:01', '10.10.27.128', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(294, '1414405980170', 'Successful login', '2014-11-17 09:53:56', '10.10.26.198', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(295, 'user', '1414408457505: unable to login with deleted or diabled account', '2014-11-17 10:00:31', '10.10.26.201', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(296, '1414408457505', 'Successful logout', '2014-11-17 10:00:31', '10.10.26.201', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(297, 'user', '1414408457505: unable to login with deleted or diabled account', '2014-11-17 10:00:40', '10.10.26.201', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(298, '1414408457505', 'Successful logout', '2014-11-17 10:00:40', '10.10.26.201', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(299, 'user', 'Failed login attempt with u=zeina.kowalski@ashesi.edu.gh and p=vfgnj', '2014-11-17 10:01:12', '10.10.26.201', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(300, 'user', '1414408457505: unable to login with deleted or diabled account', '2014-11-17 10:01:20', '10.10.26.201', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(301, '1414408457505', 'Successful logout', '2014-11-17 10:01:20', '10.10.26.201', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/'),
(339, '1414404550867', 'Successful login', '2014-11-17 13:21:23', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(340, 'error', 'Fatal Error (64): Cannot redeclare class Document in [C:\\server\\apache\\htdocs\\admission\\app\\Model\\FaDocument.php, line 50]', '2014-11-17 13:21:41', '10.10.27.170', '10.10.26.47', '/admission/fa_documents/add', 'http://10.10.26.47/admission/fa_applications/summary/1414428932319'),
(341, 'error', '[FatalErrorException] Cannot redeclare class Document\nRequest URL: /admission/fa_documents/add\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Error\\ErrorHandler.php(184): ErrorHandler::handleFatalError(64, ''Cannot redeclar...'', ''C:\\server\\apach...'', 50)\n#1 [internal function]: ErrorHandler::handleError(64, ''Cannot redeclar...'', ''C:\\server\\apach...'', 50, Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(926): call_user_func(''ErrorHandler::h...'', 64, ''Cannot redeclar...'', ''C:\\server\\apach...'', 50, Array)\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(899): App::_checkFatalError()\n#4 [internal function]: App::shutdown()\n#5 {main}', '2014-11-17 13:21:41', '10.10.27.170', '10.10.26.47', '/admission/fa_documents/add', 'http://10.10.26.47/admission/fa_applications/summary/1414428932319'),
(342, '1414404550867', 'Successful logout', '2014-11-17 13:23:55', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/fa_documents/add'),
(343, 'user', 'Failed login attempt with u=daniel.botchway@ashesi.edu.gh and p=DeBo"t1', '2014-11-17 13:42:42', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(344, '1414404550867', 'Successful login', '2014-11-17 13:44:53', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(345, '1414404550867', 'Successful logout', '2014-11-17 13:48:14', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons'),
(346, '1414405980170', 'Successful login', '2014-11-18 11:22:04', '10.10.26.191', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(347, '1415879377257', 'Successful login', '2014-11-18 16:22:20', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(348, 'error', 'Fatal Error (4): syntax error, unexpected ''<'' in [C:\\server\\apache\\htdocs\\admission\\app\\View\\Users\\find_disabled.ctp, line 69]', '2014-11-18 16:22:46', '10.10.27.170', '10.10.26.47', '/admission/users/findDisabled', 'http://10.10.26.47/admission/users'),
(349, 'error', '[FatalErrorException] syntax error, unexpected ''<''\nRequest URL: /admission/users/findDisabled\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Error\\ErrorHandler.php(184): ErrorHandler::handleFatalError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 69)\n#1 [internal function]: ErrorHandler::handleError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 69, Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(926): call_user_func(''ErrorHandler::h...'', 4, ''syntax error, u...'', ''C:\\server\\apach...'', 69, Array)\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(899): App::_checkFatalError()\n#4 [internal function]: App::shutdown()\n#5 {main}', '2014-11-18 16:22:46', '10.10.27.170', '10.10.26.47', '/admission/users/findDisabled', 'http://10.10.26.47/admission/users'),
(350, 'season', 'New Season saved from2014-11-18 till 2014-11-25', '2014-11-18 16:25:11', '10.10.27.170', '10.10.26.47', '/admission/seasons/add', 'http://10.10.26.47/admission/seasons/add'),
(351, '1415879377257', 'Successful logout', '2014-11-18 16:26:04', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/seasons'),
(352, '1414404550867', 'Successful login', '2014-11-18 16:26:09', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(353, '1414404550867', 'Successful logout', '2014-11-18 16:27:29', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons'),
(354, '1414404550867', 'Successful login', '2014-11-19 10:58:16', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(355, '1414404550867', 'Successful login', '2014-11-19 11:25:06', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(356, 'user', 'Failed login attempt with u=dambudzo.mabuza@ashesi.edu.gh and p=GODLOVESME', '2014-11-19 16:14:04', '10.10.28.243', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(357, 'user', 'Failed login attempt with u=dambudzo.mabuza@ashesi.edu.gh and p=GODLOVESME', '2014-11-19 16:14:38', '10.10.28.243', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(358, 'user', 'New account created with u=mabuza.dnatasha@gmail.com', '2014-11-19 16:16:05', '10.10.28.243', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(359, 'user', '1416418161894: unable to login with unconfirmed account', '2014-11-19 16:16:29', '10.10.28.243', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(360, 'email', 'Account activation email sent to e=mabuza.dnatasha@gmail.com', '2014-11-19 16:16:31', '10.10.28.243', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(361, 'user', 'daniel.botchway@ashesi.edu.gh : unable to login with unconfirmed account', '2014-11-19 16:28:53', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(362, 'email', 'account activation email sent to daniel.botchway@ashesi.edu.gh', '2014-11-19 16:28:54', '10.10.27.170', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(363, 'error', '[PDOException] SQLSTATE[23000]: Integrity constraint violation: 1048 Column ''type'' cannot be null\nRequest URL: /admission/users/send_account_confirmation_email\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(460): PDOStatement->execute(Array)\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(426): DboSource->_execute(''INSERT INTO `as...'', Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(1008): DboSource->execute(''INSERT INTO `as...'')\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Model.php(1744): DboSource->create(Object(Log), Array, Array)\n#4 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Model\\DatabaseLoggerAppModel.php(33): Model->save(Array, true, Array)\n#5 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Lib\\Log\\Engine\\DatabaseLog.php(49): DatabaseLoggerAppModel->save(Array)\n#6 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Log\\CakeLog.php(453): DatabaseLog->write(NULL, ''account activat...'')\n#7 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\Object.php(161): CakeLog::write(NULL, ''account activat...'')\n#8 C:\\server\\apache\\htdocs\\admission\\app\\Controller\\UsersController.php(118): Object->log(''account activat...'', NULL)\n#9 [internal function]: UsersController->send_account_confirmation_email()\n#10 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(486): ReflectionMethod->invokeArgs(Object(UsersController), Array)\n#11 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#12 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#13 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#14 {main}', '2014-11-19 16:28:54', '10.10.27.170', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(364, 'email', 'account activation email sent to daniel.botchway@ashesi.edu.gh', '2014-11-19 16:29:12', '10.10.27.170', '10.10.26.47', '/admission/users/send_account_confirmation_email', NULL),
(365, 'error', '[PDOException] SQLSTATE[23000]: Integrity constraint violation: 1048 Column ''type'' cannot be null\nRequest URL: /admission/users/send_account_confirmation_email\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(460): PDOStatement->execute(Array)\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(426): DboSource->_execute(''INSERT INTO `as...'', Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(1008): DboSource->execute(''INSERT INTO `as...'')\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Model.php(1744): DboSource->create(Object(Log), Array, Array)\n#4 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Model\\DatabaseLoggerAppModel.php(33): Model->save(Array, true, Array)\n#5 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Lib\\Log\\Engine\\DatabaseLog.php(49): DatabaseLoggerAppModel->save(Array)\n#6 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Log\\CakeLog.php(453): DatabaseLog->write(NULL, ''account activat...'')\n#7 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\Object.php(161): CakeLog::write(NULL, ''account activat...'')\n#8 C:\\server\\apache\\htdocs\\admission\\app\\Controller\\UsersController.php(118): Object->log(''account activat...'', NULL)\n#9 [internal function]: UsersController->send_account_confirmation_email()\n#10 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(486): ReflectionMethod->invokeArgs(Object(UsersController), Array)\n#11 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#12 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#13 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#14 {main}', '2014-11-19 16:29:12', '10.10.27.170', '10.10.26.47', '/admission/users/send_account_confirmation_email', NULL),
(366, 'user', 'daniel.botchway@ashesi.edu.gh : unable to login with unconfirmed account', '2014-11-19 16:29:21', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(367, 'email', 'account activation email sent to daniel.botchway@ashesi.edu.gh', '2014-11-19 16:29:22', '10.10.27.170', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(368, 'error', '[PDOException] SQLSTATE[23000]: Integrity constraint violation: 1048 Column ''type'' cannot be null\nRequest URL: /admission/users/send_account_confirmation_email\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(460): PDOStatement->execute(Array)\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(426): DboSource->_execute(''INSERT INTO `as...'', Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(1008): DboSource->execute(''INSERT INTO `as...'')\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Model.php(1744): DboSource->create(Object(Log), Array, Array)\n#4 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Model\\DatabaseLoggerAppModel.php(33): Model->save(Array, true, Array)\n#5 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Lib\\Log\\Engine\\DatabaseLog.php(49): DatabaseLoggerAppModel->save(Array)\n#6 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Log\\CakeLog.php(453): DatabaseLog->write(NULL, ''account activat...'')\n#7 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\Object.php(161): CakeLog::write(NULL, ''account activat...'')\n#8 C:\\server\\apache\\htdocs\\admission\\app\\Controller\\UsersController.php(118): Object->log(''account activat...'', NULL)\n#9 [internal function]: UsersController->send_account_confirmation_email()\n#10 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(486): ReflectionMethod->invokeArgs(Object(UsersController), Array)\n#11 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#12 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#13 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#14 {main}', '2014-11-19 16:29:22', '10.10.27.170', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(425, 'user', '1416418161894 : access denied to disable user account by daniel.botchway@ashesi.edu.gh', '2014-11-19 16:35:18', '10.10.27.170', '10.10.26.47', '/admission/users/disableUserItem/1416418161894', 'http://10.10.26.47/admission/users'),
(426, 'error', '[MissingViewException] View file "C:\\server\\apache\\htdocs\\admission\\app\\View\\Users\\disable_user_item.ctp" is missing.\nException Attributes: array (\n  ''file'' => ''C:\\\\server\\\\apache\\\\htdocs\\\\admission\\\\app\\\\View\\\\Users\\\\disable_user_item.ctp'',\n)\nRequest URL: /admission/users/disableUserItem/1416418161894\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\View\\View.php(468): View->_getViewFileName(NULL)\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(948): View->render(NULL, NULL)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(194): Controller->render()\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#4 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#5 {main}', '2014-11-19 16:35:18', '10.10.27.170', '10.10.26.47', '/admission/users/disableUserItem/1416418161894', 'http://10.10.26.47/admission/users'),
(427, 'error', '[MissingControllerException] Controller class AdController could not be found.\nException Attributes: array (\n  ''class'' => ''AdController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/ad\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-11-19 16:37:16', '10.10.27.170', '10.10.26.47', '/admission/ad', NULL),
(428, 'user', 'edrine.ssemwanga@ashesi.edu.gh : failed login attempt with and p=sonkopeter1', '2014-11-19 16:43:51', '10.10.43.80', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(429, 'user', 'edrinekayz18@gmail.com : failed login attempt with and p=jjembamasiko', '2014-11-19 16:44:33', '10.10.43.80', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(430, 'user', 'edrine.ssemwanga@ashesi.edu.gh : failed login attempt with and p=sonkopeter1', '2014-11-19 16:45:56', '10.10.43.80', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(431, 'user', 'edrine.ssemwanga@ashesi.edu.gh : failed login attempt with and p=sonkopeter1', '2014-11-19 16:47:12', '10.10.43.80', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(432, 'user', 'edrinekayz18@gmail.com : failed login attempt with and p=jjembamasiko', '2014-11-19 16:47:37', '10.10.43.80', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(433, 'user', 'edrinekayz18@gmail.com : failed login attempt with and p=jjembamasiko', '2014-11-19 16:47:58', '10.10.43.80', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(434, 'user', 'edrine.ssemwanga@ashesi.edu.gh : account creation successfully', '2014-11-19 16:49:59', '10.10.43.80', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(435, 'user', 'edrine.ssemwanga@ashesi.edu.gh : unable to login with unconfirmed account', '2014-11-19 16:51:20', '10.10.43.80', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(436, 'email', 'account activation email sent to edrine.ssemwanga@ashesi.edu.gh', '2014-11-19 16:51:21', '10.10.43.80', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(437, 'error', '[PDOException] SQLSTATE[23000]: Integrity constraint violation: 1048 Column ''type'' cannot be null\nRequest URL: /admission/users/send_account_confirmation_email\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(460): PDOStatement->execute(Array)\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(426): DboSource->_execute(''INSERT INTO `as...'', Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(1008): DboSource->execute(''INSERT INTO `as...'')\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Model.php(1744): DboSource->create(Object(Log), Array, Array)\n#4 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Model\\DatabaseLoggerAppModel.php(33): Model->save(Array, true, Array)\n#5 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Lib\\Log\\Engine\\DatabaseLog.php(49): DatabaseLoggerAppModel->save(Array)\n#6 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Log\\CakeLog.php(453): DatabaseLog->write(NULL, ''account activat...'')\n#7 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\Object.php(161): CakeLog::write(NULL, ''account activat...'')\n#8 C:\\server\\apache\\htdocs\\admission\\app\\Controller\\UsersController.php(118): Object->log(''account activat...'', NULL)\n#9 [internal function]: UsersController->send_account_confirmation_email()\n#10 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(486): ReflectionMethod->invokeArgs(Object(UsersController), Array)\n#11 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#12 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#13 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#14 {main}', '2014-11-19 16:51:22', '10.10.43.80', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(438, '1414404550867', 'logout successful', '2014-11-19 16:52:10', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(439, '1414404550867', 'daniel.botchway@ashesi.edu.gh : logout successful', '2014-11-19 16:52:10', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(440, 'user', 'botchwaydan@gmail.com : unable to login with unconfirmed account', '2014-11-19 16:52:15', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(441, 'email', 'account activation email sent to botchwaydan@gmail.com', '2014-11-19 16:52:17', '10.10.27.170', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(442, 'error', '[PDOException] SQLSTATE[23000]: Integrity constraint violation: 1048 Column ''type'' cannot be null\nRequest URL: /admission/users/send_account_confirmation_email\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(460): PDOStatement->execute(Array)\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(426): DboSource->_execute(''INSERT INTO `as...'', Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(1008): DboSource->execute(''INSERT INTO `as...'')\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Model.php(1744): DboSource->create(Object(Log), Array, Array)\n#4 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Model\\DatabaseLoggerAppModel.php(33): Model->save(Array, true, Array)\n#5 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Lib\\Log\\Engine\\DatabaseLog.php(49): DatabaseLoggerAppModel->save(Array)\n#6 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Log\\CakeLog.php(453): DatabaseLog->write(NULL, ''account activat...'')\n#7 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\Object.php(161): CakeLog::write(NULL, ''account activat...'')\n#8 C:\\server\\apache\\htdocs\\admission\\app\\Controller\\UsersController.php(118): Object->log(''account activat...'', NULL)\n#9 [internal function]: UsersController->send_account_confirmation_email()\n#10 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(486): ReflectionMethod->invokeArgs(Object(UsersController), Array)\n#11 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#12 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#13 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#14 {main}', '2014-11-19 16:52:17', '10.10.27.170', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(443, 'user', 'edrine.ssemwanga@ashesi.edu.gh : unable to login with unconfirmed account', '2014-11-19 16:53:58', '10.10.43.80', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(444, 'email', 'account activation email sent to edrine.ssemwanga@ashesi.edu.gh', '2014-11-19 16:54:00', '10.10.43.80', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(445, 'error', '[PDOException] SQLSTATE[23000]: Integrity constraint violation: 1048 Column ''type'' cannot be null\nRequest URL: /admission/users/send_account_confirmation_email\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(460): PDOStatement->execute(Array)\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(426): DboSource->_execute(''INSERT INTO `as...'', Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(1008): DboSource->execute(''INSERT INTO `as...'')\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Model.php(1744): DboSource->create(Object(Log), Array, Array)\n#4 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Model\\DatabaseLoggerAppModel.php(33): Model->save(Array, true, Array)\n#5 C:\\server\\apache\\htdocs\\admission\\app\\Plugin\\DatabaseLogger\\Lib\\Log\\Engine\\DatabaseLog.php(49): DatabaseLoggerAppModel->save(Array)\n#6 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Log\\CakeLog.php(453): DatabaseLog->write(NULL, ''account activat...'')\n#7 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\Object.php(161): CakeLog::write(NULL, ''account activat...'')\n#8 C:\\server\\apache\\htdocs\\admission\\app\\Controller\\UsersController.php(118): Object->log(''account activat...'', NULL)\n#9 [internal function]: UsersController->send_account_confirmation_email()\n#10 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(486): ReflectionMethod->invokeArgs(Object(UsersController), Array)\n#11 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#12 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#13 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#14 {main}', '2014-11-19 16:54:00', '10.10.43.80', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(446, 'user', 'botchwaydan@gmail.com : unable to login with unconfirmed account', '2014-11-19 16:54:56', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(447, 'email', 'account activation email sent to botchwaydan@gmail.com', '2014-11-19 16:55:00', '10.10.27.170', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(448, '1414404550867', 'account activation successful', '2014-11-19 16:56:59', '10.10.27.170', '10.10.26.47', '/admission/users/confirm/7380c64d0358396381cb4c4af323fa42163abe94/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a', NULL),
(449, 'user', 'botchwaydan@gmail.com : account activation successful', '2014-11-19 16:56:59', '10.10.27.170', '10.10.26.47', '/admission/users/confirm/7380c64d0358396381cb4c4af323fa42163abe94/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a', NULL),
(450, '1415879377257', 'logout successful', '2014-11-19 16:57:08', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons'),
(451, '1415879377257', 'botchwaydan@gmail.com : logout successful', '2014-11-19 16:57:08', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons'),
(452, '1414404550867', 'login successful', '2014-11-19 16:57:20', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(453, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-19 16:57:21', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(454, 'user', 'edrine.ssemwanga@ashesi.edu.gh : unable to login with unconfirmed account', '2014-11-19 17:01:15', '10.10.43.80', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(455, 'email', 'account activation email sent to edrine.ssemwanga@ashesi.edu.gh', '2014-11-19 17:01:23', '10.10.43.80', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(456, '1416416464432', 'account activation successful', '2014-11-19 17:05:46', '10.10.43.80', '10.10.26.47', '/admission/users/confirm/3ffaacd5b55d534de36ad5eb9cdcba52a90b9976/1416416464432/92447b41ca6fb7c5e288fcb2dfe771f286cf512d', NULL),
(457, 'user', 'edrine.ssemwanga@ashesi.edu.gh : account activation successful', '2014-11-19 17:05:46', '10.10.43.80', '10.10.26.47', '/admission/users/confirm/3ffaacd5b55d534de36ad5eb9cdcba52a90b9976/1416416464432/92447b41ca6fb7c5e288fcb2dfe771f286cf512d', NULL),
(458, '1416416464432', 'login successful', '2014-11-19 17:14:56', '10.10.43.80', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(459, 'user', 'edrine.ssemwanga@ashesi.edu.gh : login successful', '2014-11-19 17:14:56', '10.10.43.80', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(460, 'user', 'dorcas.mensah@ashesi.edu.gh : failed login attempt with and p=yesJesus', '2014-11-19 17:15:01', '10.10.27.74', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(461, 'user', 'mensahdorcas98@gmail.com : account creation successfully', '2014-11-19 17:15:54', '10.10.27.74', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(462, 'user', 'mensahdorcas98@gmail.com : unable to login with unconfirmed account', '2014-11-19 17:16:08', '10.10.27.74', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(463, 'email', 'account activation email sent to mensahdorcas98@gmail.com', '2014-11-19 17:16:10', '10.10.27.74', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(464, 'email', 'account activation email sent to mensahdorcas98@gmail.com', '2014-11-19 17:18:21', '10.10.27.74', '10.10.26.47', '/admission/users/send_account_confirmation_email/1', 'http://10.10.26.47/admission/'),
(465, 'user', 'mensahdorcas98@gmail.com : account creation failed', '2014-11-19 17:19:22', '10.10.27.74', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(466, 'user', 'mensahdorcas98@gmail.com : unable to login with unconfirmed account', '2014-11-19 17:19:41', '10.10.27.74', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(467, 'email', 'account activation email sent to mensahdorcas98@gmail.com', '2014-11-19 17:19:50', '10.10.27.74', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(468, 'email', 'account activation email sent to mensahdorcas98@gmail.com', '2014-11-19 17:20:06', '10.10.27.74', '10.10.26.47', '/admission/users/send_account_confirmation_email/1', 'http://10.10.26.47/admission/'),
(469, '1416424201932', 'account activation successful', '2014-11-19 17:27:58', '10.10.27.74', '10.10.26.47', '/admission/users/confirm/7d373397ea960fbab63e1a58c6372bd33ead7bbe/1416424201932/dfba4e3abd112b7a68f307f2125a9c369c9cfee2', NULL),
(470, 'user', 'mensahdorcas98@gmail.com : account activation successful', '2014-11-19 17:27:58', '10.10.27.74', '10.10.26.47', '/admission/users/confirm/7d373397ea960fbab63e1a58c6372bd33ead7bbe/1416424201932/dfba4e3abd112b7a68f307f2125a9c369c9cfee2', NULL),
(471, '1416424201932', 'login successful', '2014-11-19 17:28:33', '10.10.27.74', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(472, 'user', 'mensahdorcas98@gmail.com : login successful', '2014-11-19 17:28:33', '10.10.27.74', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(473, 'user', 'appiahbeatrice38@gmail.com : failed login attempt with and p=adventistsda', '2014-11-19 17:41:26', '10.10.29.10', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(474, 'user', 'beatrice.appiah@ashesi.edu.gh : failed login attempt with and p=today', '2014-11-19 17:41:55', '10.10.29.10', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(475, 'user', 'appiahbeatrice38@gmail.com : failed login attempt with and p=adventistsda', '2014-11-19 17:46:27', '10.10.29.10', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(476, 'user', 'khadija.bawah : failed login attempt with and p=sarafana', '2014-11-19 18:05:50', '10.10.33.48', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(477, 'user', 'khadija.bawah@ashesi.edu.gh : failed login attempt with and p=sarafana', '2014-11-19 18:06:50', '10.10.33.48', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(478, '1416424201932', 'logout successful', '2014-11-19 18:57:17', '10.10.27.74', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416418137702'),
(479, '1416424201932', 'mensahdorcas98@gmail.com : logout successful', '2014-11-19 18:57:17', '10.10.27.74', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416418137702'),
(480, 'error', '[PDOException] SQLSTATE[22003]: Numeric value out of range: 1264 Out of range value for column ''fa_exchange_rate'' at row 1\nRequest URL: /admission/fa_applications/add\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(460): PDOStatement->execute(Array)\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(426): DboSource->_execute(''INSERT INTO `as...'', Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Datasource\\DboSource.php(1008): DboSource->execute(''INSERT INTO `as...'')\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Model\\Model.php(1744): DboSource->create(Object(FaApplication), Array, Array)\n#4 C:\\server\\apache\\htdocs\\admission\\app\\Controller\\FaApplicationsController.php(62): Model->save(Array)\n#5 [internal function]: FaApplicationsController->add()\n#6 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Controller\\Controller.php(486): ReflectionMethod->invokeArgs(Object(FaApplicationsController), Array)\n#7 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#8 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(FaApplicationsController), Object(CakeRequest), Object(CakeResponse))\n#9 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#10 {main}', '2014-11-19 19:59:34', '10.10.29.196', '10.10.26.47', '/admission/fa_applications/add', 'http://10.10.26.47/admission/fa_applications/summary/none'),
(481, '1416416464432', 'logout successful', '2014-11-19 20:02:26', '10.10.29.196', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416417330382'),
(482, '1416416464432', 'edrine.ssemwanga@ashesi.edu.gh : logout successful', '2014-11-19 20:02:26', '10.10.29.196', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416417330382'),
(483, '1416416464432', 'login successful', '2014-11-19 20:06:59', '10.10.29.196', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(484, 'user', 'edrine.ssemwanga@ashesi.edu.gh : login successful', '2014-11-19 20:06:59', '10.10.29.196', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(485, 'user', 'prince.kwarase@ashesi.edu.gh : failed login attempt with and p=write1', '2014-11-19 21:10:14', '10.10.32.61', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(486, 'user', 'prince.kwarase@ashesi.edu.gh : failed login attempt with and p=write1', '2014-11-19 21:10:54', '10.10.32.61', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(487, 'user', 'prince.kwarase@ashesi.edu.gh : failed login attempt with and p=write1', '2014-11-19 21:12:37', '10.10.32.61', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(488, 'user', 'prince.kwarase@ashesi.edu.gh : failed login attempt with and p=write1', '2014-11-19 21:13:16', '10.10.32.61', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(489, 'user', 'prince.kwarase@ashesi.edu.gh : failed login attempt with and p=write1', '2014-11-19 21:21:23', '10.10.32.61', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(490, '1414404550867', 'login successful', '2014-11-20 09:55:25', '127.0.0.1', 'localhost', '/admission/', 'http://localhost/admission/'),
(491, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-20 09:55:26', '127.0.0.1', 'localhost', '/admission/', 'http://localhost/admission/'),
(492, '1414404550867', 'logout successful', '2014-11-20 10:13:15', '127.0.0.1', 'localhost', '/admission/users/logout', 'http://localhost/admission/applications/seasons'),
(493, '1414404550867', 'daniel.botchway@ashesi.edu.gh : logout successful', '2014-11-20 10:13:15', '127.0.0.1', 'localhost', '/admission/users/logout', 'http://localhost/admission/applications/seasons'),
(494, '1414408457505', 'login successful', '2014-11-20 10:30:55', '10.10.27.34', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(495, 'user', 'zeina.kowalski@ashesi.edu.gh : login successful', '2014-11-20 10:30:55', '10.10.27.34', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(496, '1414404550867', 'login successful', '2014-11-20 10:33:49', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(497, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-20 10:33:49', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(498, '1414404550867', 'logout successful', '2014-11-20 10:52:31', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons'),
(499, '1414404550867', 'daniel.botchway@ashesi.edu.gh : logout successful', '2014-11-20 10:52:31', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons');
INSERT INTO `logs` (`id`, `type`, `message`, `created`, `ip`, `hostname`, `uri`, `refer`) VALUES
(500, 'user', 'mensahdorcas98@gmail.com : failed login attempt with and p=yesjesus', '2014-11-20 10:52:43', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(501, '1414404550867', 'login successful', '2014-11-20 10:53:01', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(502, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-20 10:53:01', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(503, '1414404550867', 'logout successful', '2014-11-20 10:57:07', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons'),
(504, '1414404550867', 'daniel.botchway@ashesi.edu.gh : logout successful', '2014-11-20 10:57:08', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons'),
(505, 'user', 'lilian.awuor@ashesi.edu.gh : failed login attempt with and p=Rivieraumoja2', '2014-11-20 22:43:28', '10.10.30.119', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(506, 'user', 'lilian.awuor@ashesi.edu.gh : failed login attempt with and p=Rivieraumoja2', '2014-11-20 22:44:01', '10.10.30.119', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(507, 'user', 'lilian.awuor@ashesi.edu.gh : account creation successfully', '2014-11-20 22:50:40', '10.10.30.119', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(508, 'user', 'lilian.awuor@ashesi.edu.gh : unable to login with unconfirmed account', '2014-11-20 22:51:02', '10.10.30.119', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(509, 'email', 'account activation email sent to lilian.awuor@ashesi.edu.gh', '2014-11-20 22:51:04', '10.10.30.119', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(510, '1416530983962', 'account activation successful', '2014-11-20 22:54:42', '10.10.30.119', '10.10.26.47', '/admission/users/confirm/d6a776c5d7a6c0a7b9fa2f5d7008655ad6f24a69/1416530983962/844e2ceffcc692d1da02619e13297348474a0820', NULL),
(511, 'user', 'lilian.awuor@ashesi.edu.gh : account activation successful', '2014-11-20 22:54:43', '10.10.30.119', '10.10.26.47', '/admission/users/confirm/d6a776c5d7a6c0a7b9fa2f5d7008655ad6f24a69/1416530983962/844e2ceffcc692d1da02619e13297348474a0820', NULL),
(512, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 22:54:43', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', NULL),
(513, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-20 22:55:04', '10.10.30.119', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(514, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 22:55:04', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(515, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-20 22:55:08', '10.10.30.119', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(516, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 22:55:08', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(517, 'user', 'lilian.awuor@ashesi.edu.gh : unable to login with unconfirmed account', '2014-11-20 22:57:17', '10.10.30.119', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(518, 'email', 'account activation email sent to lilian.awuor@ashesi.edu.gh', '2014-11-20 22:57:18', '10.10.30.119', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(519, 'user', 'lilian.awuor@ashesi.edu.gh : unable to login with unconfirmed account', '2014-11-20 22:57:46', '10.10.30.119', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(520, 'email', 'account activation email sent to lilian.awuor@ashesi.edu.gh', '2014-11-20 22:57:47', '10.10.30.119', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(521, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 22:58:57', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(522, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 22:59:00', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(523, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-20 22:59:19', '10.10.30.119', '10.10.26.47', '/admission/applications/retrieve/1416327912207', NULL),
(524, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 22:59:21', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', NULL),
(525, '1416530983962', 'login successful', '2014-11-20 23:02:01', '10.10.30.119', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(526, 'user', 'lilian.awuor@ashesi.edu.gh : login successful', '2014-11-20 23:02:02', '10.10.30.119', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(527, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 23:02:02', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(528, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-20 23:02:08', '10.10.30.119', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(529, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 23:02:08', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(530, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-20 23:02:11', '10.10.30.119', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(531, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 23:02:11', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(532, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 23:02:13', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(533, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 23:02:16', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(534, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 23:02:17', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(535, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 23:02:18', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(536, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 23:02:26', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(537, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 23:02:27', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(538, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-20 23:02:30', '10.10.30.119', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(539, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-20 23:02:30', '10.10.30.119', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(540, '1414404550867', 'login successful', '2014-11-21 08:50:37', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(541, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-21 08:50:37', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(542, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-21 08:50:37', '10.10.27.170', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(543, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-11-21 08:52:08', '10.10.27.170', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(544, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-21 08:52:09', '10.10.27.170', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(545, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-21 08:53:23', '10.10.27.170', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(546, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-21 08:53:24', '10.10.27.170', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(547, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-21 08:53:24', '10.10.27.170', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(548, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-21 08:53:27', '10.10.27.170', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(549, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-21 08:53:27', '10.10.27.170', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(550, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-21 08:53:30', '10.10.27.170', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(551, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-21 08:53:30', '10.10.27.170', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(552, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-21 08:53:40', '10.10.27.170', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(553, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-21 08:53:40', '10.10.27.170', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(554, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-21 08:58:54', '10.10.27.170', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(555, 'application', 'daniel.botchway@ashesi.edu.gh : could not view summary of application [] because it could not be found', '2014-11-21 08:58:54', '10.10.27.170', '10.10.26.47', '/admission/applications/summary', 'http://10.10.26.47/admission/applications/seasons'),
(556, 'application', 'daniel.botchway@ashesi.edu.gh : new application creation failed because one already exists for season [1416327912207]', '2014-11-21 08:59:05', '10.10.27.170', '10.10.26.47', '/admission/applications/add', 'http://10.10.26.47/admission/applications/summary'),
(557, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-21 08:59:05', '10.10.27.170', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/summary'),
(558, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-21 09:07:57', '10.10.27.170', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(559, '1414404550867', 'logout successful', '2014-11-21 09:20:55', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(560, '1414404550867', 'daniel.botchway@ashesi.edu.gh : logout successful', '2014-11-21 09:20:55', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(561, '1414404550867', 'login successful', '2014-11-21 09:39:02', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(562, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-21 09:39:02', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(563, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-21 09:39:02', '10.10.27.5', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(564, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-11-21 10:26:19', '10.10.27.170', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(565, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-21 10:26:19', '10.10.27.170', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(566, 'admission', 'daniel.botchway@ashesi.edu.gh : has no sponsor information for admission details for application [1416394706038]', '2014-11-21 10:26:43', '10.10.27.170', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(567, 'admission', 'daniel.botchway@ashesi.edu.gh : has no ashesi siblings information for admission details for application [1416394706038]', '2014-11-21 10:26:43', '10.10.27.170', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(568, 'admission', 'daniel.botchway@ashesi.edu.gh : didn''t request for financial aid for application [1416394706038]', '2014-11-21 10:26:43', '10.10.27.170', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(569, 'admission', 'daniel.botchway@ashesi.edu.gh : added admission details for application [1416394706038]', '2014-11-21 10:26:43', '10.10.27.170', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(570, '1414404550867', 'Admission details added', '2014-11-21 10:26:44', '10.10.27.170', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(571, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed sponsor information for admission details for application [1416394706038]', '2014-11-21 10:27:18', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(572, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed ashesi siblings information for admission details for application [1416394706038]', '2014-11-21 10:27:18', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(573, 'admission', 'daniel.botchway@ashesi.edu.gh : has now activated a financial aid application for application [1416394706038]', '2014-11-21 10:27:18', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(574, '1414404550867', 'financial aid application activated now', '2014-11-21 10:27:19', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(575, 'admission', 'daniel.botchway@ashesi.edu.gh : updates admission details for application [1416394706038]', '2014-11-21 10:27:19', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(576, '1414404550867', 'Admission details updated', '2014-11-21 10:27:19', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(577, 'debug', 'Notice (8): Undefined variable: size in [C:\\server\\apache\\htdocs\\admission\\app\\Controller\\AdmissionsController.php, line 189]\nTrace:\nAdmissionsController::edit() - APP\\Controller\\AdmissionsController.php, line 189\nReflectionMethod::invokeArgs() - [internal], line ??\nController::invokeAction() - CORE\\Cake\\Controller\\Controller.php, line 486\nDispatcher::_invoke() - CORE\\Cake\\Routing\\Dispatcher.php, line 187\nDispatcher::dispatch() - CORE\\Cake\\Routing\\Dispatcher.php, line 162\n[main] - APP\\webroot\\index.php, line 109\n', '2014-11-21 10:28:20', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(578, 'admission', 'daniel.botchway@ashesi.edu.gh : has [] Ashesi Sibling(s) information updated to admission details for application [1416394706038]', '2014-11-21 10:28:20', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(579, 'debug', 'Notice (8): Undefined variable: size in [C:\\server\\apache\\htdocs\\admission\\app\\Controller\\AdmissionsController.php, line 190]\nTrace:\nAdmissionsController::edit() - APP\\Controller\\AdmissionsController.php, line 190\nReflectionMethod::invokeArgs() - [internal], line ??\nController::invokeAction() - CORE\\Cake\\Controller\\Controller.php, line 486\nDispatcher::_invoke() - CORE\\Cake\\Routing\\Dispatcher.php, line 187\nDispatcher::dispatch() - CORE\\Cake\\Routing\\Dispatcher.php, line 162\n[main] - APP\\webroot\\index.php, line 109\n', '2014-11-21 10:28:20', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(580, '1414404550867', 'Admission details has [] family in Ashesi information added now', '2014-11-21 10:28:20', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(582, 'admission', 'daniel.botchway@ashesi.edu.gh : has [1] Ashesi Sibling(s) information updated to admission details for application [1416394706038]', '2014-11-21 10:29:53', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(583, '1414404550867', 'Admission details has [1] family in Ashesi information added now', '2014-11-21 10:29:53', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(585, 'admission', 'daniel.botchway@ashesi.edu.gh : has [1] Ashesi Sibling(s) information updated to admission details for application [1416394706038]', '2014-11-21 10:30:10', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(586, '1414404550867', 'Admission details has [1] family in Ashesi information added now', '2014-11-21 10:30:10', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(588, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed ashesi siblings information for admission details for application [1416394706038]', '2014-11-21 10:30:43', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(590, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed sponsor information for admission details for application [1416394706038]', '2014-11-21 10:31:23', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(591, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed ashesi siblings information for admission details for application [1416394706038]', '2014-11-21 10:31:23', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(592, 'admission', 'daniel.botchway@ashesi.edu.gh : has now activated a financial aid application for application [1416394706038]', '2014-11-21 10:31:23', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(593, '1414404550867', 'financial aid application activated now', '2014-11-21 10:31:23', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(594, 'admission', 'daniel.botchway@ashesi.edu.gh : updates admission details for application [1416394706038]', '2014-11-21 10:31:23', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(595, '1414404550867', 'Admission details updated', '2014-11-21 10:31:24', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(596, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed sponsor information for admission details for application [1416394706038]', '2014-11-21 10:31:43', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(597, 'admission', 'daniel.botchway@ashesi.edu.gh : has [1] Ashesi Sibling(s) information updated to admission details for application [1416394706038]', '2014-11-21 10:31:43', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(598, '1414404550867', 'Admission details has [1] family in Ashesi information added now', '2014-11-21 10:31:43', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(599, 'admission', 'daniel.botchway@ashesi.edu.gh : has now activated a financial aid application for application [1416394706038]', '2014-11-21 10:31:44', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(600, '1414404550867', 'financial aid application activated now', '2014-11-21 10:31:44', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(601, 'admission', 'daniel.botchway@ashesi.edu.gh : updates admission details for application [1416394706038]', '2014-11-21 10:31:44', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(602, '1414404550867', 'Admission details updated', '2014-11-21 10:31:44', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(603, 'admission', 'daniel.botchway@ashesi.edu.gh : has [0] Ashesi Sibling(s) information updated to admission details for application [1416394706038]', '2014-11-21 10:32:17', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(604, '1414404550867', 'Admission details has [0] family in Ashesi information added now', '2014-11-21 10:32:17', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(605, 'admission', 'daniel.botchway@ashesi.edu.gh : counld not update admission details for application [1416394706038]', '2014-11-21 10:32:17', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(606, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed ashesi siblings information for admission details for application [1416394706038]', '2014-11-21 10:32:25', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(608, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed ashesi siblings information for admission details for application [1416394706038]', '2014-11-21 10:33:55', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(610, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed ashesi siblings information for admission details for application [1416394706038]', '2014-11-21 10:34:43', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(612, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed ashesi siblings information for admission details for application [1416394706038]', '2014-11-21 10:36:48', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(614, 'admission', 'daniel.botchway@ashesi.edu.gh : has added sponsor information for admission details for application [1416394706038]', '2014-11-21 10:38:07', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(615, '1414404550867', 'Admission details has Sponsor information added now', '2014-11-21 10:38:07', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(616, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed ashesi siblings information for admission details for application [1416394706038]', '2014-11-21 10:38:07', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(617, 'admission', 'daniel.botchway@ashesi.edu.gh : has now activated a financial aid application for application [1416394706038]', '2014-11-21 10:38:08', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(618, '1414404550867', 'financial aid application activated now', '2014-11-21 10:38:08', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(619, 'admission', 'daniel.botchway@ashesi.edu.gh : updates admission details for application [1416394706038]', '2014-11-21 10:38:08', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(620, '1414404550867', 'Admission details updated', '2014-11-21 10:38:08', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(621, 'applicant', 'daniel.botchway@ashesi.edu.gh : has orphanage information for applicant details for application [1416394706038]', '2014-11-21 10:41:43', '10.10.27.170', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(622, '1414404550867', 'Applicant details has Orphanage information added', '2014-11-21 10:41:43', '10.10.27.170', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(623, 'applicant', 'daniel.botchway@ashesi.edu.gh : could not upload profile picture for appliation [1416394706038]', '2014-11-21 10:41:43', '10.10.27.170', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(624, 'applicant', 'daniel.botchway@ashesi.edu.gh : adds applicant details for application [1416394706038]', '2014-11-21 10:41:43', '10.10.27.170', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(625, '1414404550867', 'Applicant details added', '2014-11-21 10:41:43', '10.10.27.170', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(626, 'applicant', 'daniel.botchway@ashesi.edu.gh : no new profile picture for application [1416394706038]', '2014-11-21 10:41:52', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(627, 'applicant', 'daniel.botchway@ashesi.edu.gh : updates applicant details for application [1416394706038]', '2014-11-21 10:41:52', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(628, '1414404550867', 'Applicant details updated', '2014-11-21 10:41:52', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(629, 'applicant', 'daniel.botchway@ashesi.edu.gh : has removed previous orphanage information from applicant details for application [1416394706038]', '2014-11-21 10:42:45', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(630, '1414404550867', 'Orphanage information has been removed', '2014-11-21 10:42:45', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(631, 'applicant', 'daniel.botchway@ashesi.edu.gh : no new profile picture for application [1416394706038]', '2014-11-21 10:42:45', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(632, 'applicant', 'daniel.botchway@ashesi.edu.gh : updates applicant details for application [1416394706038]', '2014-11-21 10:42:45', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(633, '1414404550867', 'Applicant details updated', '2014-11-21 10:42:45', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(634, 'applicant', 'daniel.botchway@ashesi.edu.gh : has now added orphanage information to applicant details for application [1416394706038]', '2014-11-21 10:43:21', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(635, '1414404550867', 'Applicant details has Orphanage information added now', '2014-11-21 10:43:21', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(636, 'applicant', 'daniel.botchway@ashesi.edu.gh : no new profile picture for application [1416394706038]', '2014-11-21 10:43:21', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(637, 'applicant', 'daniel.botchway@ashesi.edu.gh : updates applicant details for application [1416394706038]', '2014-11-21 10:43:21', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(638, '1414404550867', 'Applicant details updated', '2014-11-21 10:43:21', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(639, 'applicant', 'daniel.botchway@ashesi.edu.gh : has removed previous orphanage information from applicant details for application [1416394706038]', '2014-11-21 10:54:15', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(640, '1414404550867', 'Orphanage information has been removed', '2014-11-21 10:54:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(641, 'applicant', 'daniel.botchway@ashesi.edu.gh : recreates application file folder [C:\\server\\apache\\htdocs\\admission\\app\\webroot\\files\\1416394706038]', '2014-11-21 10:54:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(642, '1414404550867', 'Profile picture changed', '2014-11-21 10:54:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(643, 'applicant', 'daniel.botchway@ashesi.edu.gh : uploads new profile picture [1416394706038/picture.jpg]', '2014-11-21 10:54:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(644, 'file', 'daniel.botchway@ashesi.edu.gh : uploads file [1416394706038/picture.jpg]', '2014-11-21 10:54:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(645, 'applicant', 'daniel.botchway@ashesi.edu.gh : updates applicant details for application [1416394706038]', '2014-11-21 10:54:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(646, '1414404550867', 'Applicant details updated', '2014-11-21 10:54:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(647, 'applicant', 'daniel.botchway@ashesi.edu.gh : has removed previous orphanage information from applicant details for application [1416394706038]', '2014-11-21 10:55:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(648, '1414404550867', 'Orphanage information has been removed', '2014-11-21 10:55:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(649, '1414404550867', 'Profile picture changed', '2014-11-21 10:55:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(650, 'applicant', 'daniel.botchway@ashesi.edu.gh : uploads new profile picture [1416394706038/picture.jpg]', '2014-11-21 10:55:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(651, 'file', 'daniel.botchway@ashesi.edu.gh : uploads file [1416394706038/picture.jpg]', '2014-11-21 10:55:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(652, 'applicant', 'daniel.botchway@ashesi.edu.gh : updates applicant details for application [1416394706038]', '2014-11-21 10:55:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(653, '1414404550867', 'Applicant details updated', '2014-11-21 10:55:16', '10.10.27.170', '10.10.26.47', '/admission/applicants/edit/1416566503985', 'http://10.10.26.47/admission/applicants/edit/1416566503985'),
(654, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed sponsor information for admission details for application [1416394706038]', '2014-11-21 11:01:59', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(655, 'admission', 'daniel.botchway@ashesi.edu.gh : has [2] Ashesi Sibling(s) information updated to admission details for application [1416394706038]', '2014-11-21 11:02:00', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(656, '1414404550867', 'Admission details has [2] family in Ashesi information added now', '2014-11-21 11:02:00', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(657, 'admission', 'daniel.botchway@ashesi.edu.gh : has now activated a financial aid application for application [1416394706038]', '2014-11-21 11:02:00', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(658, '1414404550867', 'Financial aid application activated now', '2014-11-21 11:02:00', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(659, 'admission', 'daniel.botchway@ashesi.edu.gh : updates admission details for application [1416394706038]', '2014-11-21 11:02:00', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(660, '1414404550867', 'Admission details updated', '2014-11-21 11:02:00', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(661, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed sponsor information for admission details for application [1416394706038]', '2014-11-21 11:02:46', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(662, 'admission', 'daniel.botchway@ashesi.edu.gh : has [2] Ashesi Sibling(s) information updated to admission details for application [1416394706038]', '2014-11-21 11:02:46', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(663, '1414404550867', 'Admission details has [2] family in Ashesi information added now', '2014-11-21 11:02:46', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(664, 'admission', 'daniel.botchway@ashesi.edu.gh : didn''t request or has deactivated financial aid for application [1416394706038]', '2014-11-21 11:02:46', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(665, 'admission', 'daniel.botchway@ashesi.edu.gh : updates admission details for application [1416394706038]', '2014-11-21 11:02:47', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(666, '1414404550867', 'Admission details updated', '2014-11-21 11:02:47', '10.10.27.170', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(667, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-11-21 11:10:17', '10.10.27.170', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/relatives/add'),
(669, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-11-21 11:11:49', '10.10.27.170', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/relatives/add'),
(670, 'spam', 'spam detected add relative', '2014-11-21 11:16:09', '10.10.27.170', '10.10.26.47', '/admission/relatives/add', 'http://10.10.26.47/admission/relatives/add'),
(671, '1414404550867', 'logout successful', '2014-11-21 11:16:09', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/relatives/add'),
(672, '1414404550867', 'daniel.botchway@ashesi.edu.gh : logout successful', '2014-11-21 11:16:09', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/relatives/add'),
(673, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-11-21 11:16:10', '10.10.27.170', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/'),
(674, '1414404550867', 'login successful', '2014-11-21 11:16:16', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(675, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-21 11:16:16', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(676, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-21 11:16:16', '10.10.27.170', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(677, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-11-21 11:16:17', '10.10.27.170', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/applications/seasons'),
(678, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-11-21 11:16:18', '10.10.27.170', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(679, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-21 11:16:18', '10.10.27.170', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(680, 'error', '[MissingControllerException] Controller class CssController could not be found.\nException Attributes: array (\n  ''class'' => ''CssController'',\n  ''plugin'' => NULL,\n)\nRequest URL: /admission/css/bootstrap.css.map\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#1 {main}', '2014-11-21 11:16:19', '10.10.27.170', '10.10.26.47', '/admission/css/bootstrap.css.map', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(681, 'admission', 'daniel.botchway@ashesi.edu.gh : could not add relative(family) details to application [1416394706038]', '2014-11-21 11:57:56', '10.10.27.170', '10.10.26.47', '/admission/relatives/add', 'http://10.10.26.47/admission/relatives/add'),
(682, '1414404550867', 'logout successful', '2014-11-21 12:10:48', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/relatives/add'),
(683, '1414404550867', 'daniel.botchway@ashesi.edu.gh : logout successful', '2014-11-21 12:10:48', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/relatives/add'),
(684, '1414404550867', 'login successful', '2014-11-21 13:26:21', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(685, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-21 13:26:21', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(686, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-21 13:26:22', '10.10.27.170', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(687, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-11-21 13:27:02', '10.10.27.170', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(688, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-21 13:27:03', '10.10.27.170', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(689, '1414404550867', 'logout successful', '2014-11-21 13:27:32', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(690, '1414404550867', 'daniel.botchway@ashesi.edu.gh : logout successful', '2014-11-21 13:27:32', '10.10.27.170', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(691, '1414404550867', 'login successful', '2014-11-21 14:12:55', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(692, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-21 14:12:55', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(693, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-21 14:12:56', '10.10.27.170', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(694, '1414404550867', 'login successful', '2014-11-24 13:07:43', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(695, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-24 13:07:44', '10.10.27.170', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(696, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-24 13:07:46', '10.10.27.170', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(697, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-11-24 13:08:33', '10.10.27.170', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(698, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-24 13:08:35', '10.10.27.170', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(699, 'user', 'sabelo.dube@ashesi.edu.gh : account creation successfully', '2014-11-24 15:28:40', '10.10.27.204', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(700, 'user', 'sabelo.dube@ashesi.edu.gh : unable to login with unconfirmed account', '2014-11-24 15:29:00', '10.10.27.204', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(701, 'email', 'account activation email sent to sabelo.dube@ashesi.edu.gh', '2014-11-24 15:29:03', '10.10.27.204', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(702, '1416849383061', 'account activation successful', '2014-11-24 15:29:23', '10.10.27.204', '10.10.26.47', '/admission/users/confirm/e22db21ec10907cf9d627f33ca4cfa81bdfb79e2/1416849383061/8400b4908a3fa8f016563106d6c12288315ce383', NULL),
(703, 'user', 'sabelo.dube@ashesi.edu.gh : account [1416849383061] activation successful', '2014-11-24 15:29:23', '10.10.27.204', '10.10.26.47', '/admission/users/confirm/e22db21ec10907cf9d627f33ca4cfa81bdfb79e2/1416849383061/8400b4908a3fa8f016563106d6c12288315ce383', NULL),
(704, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-24 15:29:23', '10.10.27.204', '10.10.26.47', '/admission/applications/seasons', NULL),
(705, '1416849383061', 'login successful', '2014-11-24 15:48:43', '10.10.27.204', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(706, 'user', 'sabelo.dube@ashesi.edu.gh : login successful', '2014-11-24 15:48:43', '10.10.27.204', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(707, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-24 15:48:43', '10.10.27.204', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/');
INSERT INTO `logs` (`id`, `type`, `message`, `created`, `ip`, `hostname`, `uri`, `refer`) VALUES
(708, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-24 15:48:56', '10.10.27.204', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(709, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-24 15:48:56', '10.10.27.204', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(710, 'application', 'sabelo.dube@ashesi.edu.gh : could not view summary of application [] because it could not be found', '2014-11-24 15:48:57', '10.10.27.204', '10.10.26.47', '/admission/applications/summary', 'http://10.10.26.47/admission/applications/seasons'),
(711, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-24 15:49:09', '10.10.27.204', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/summary'),
(712, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-24 15:50:55', '10.10.27.204', '10.10.26.47', '/admission/applications/seasons', NULL),
(713, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-24 15:50:59', '10.10.27.204', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(714, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-24 15:51:03', '10.10.27.204', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(715, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-24 16:01:10', '10.10.27.204', '10.10.26.47', '/admission/applications/retrieve/1416327912207', NULL),
(716, 'application', 'sabelo.dube@ashesi.edu.gh : could not view summary of application [] because it could not be found', '2014-11-24 16:01:11', '10.10.27.204', '10.10.26.47', '/admission/applications/summary', NULL),
(717, 'application', 'sabelo.dube@ashesi.edu.gh : creates new application with id [1416844886581] for season [1416327912207]', '2014-11-24 16:01:26', '10.10.27.204', '10.10.26.47', '/admission/applications/add', 'http://10.10.26.47/admission/applications/summary'),
(718, '1416849383061', 'New addmission application created', '2014-11-24 16:01:26', '10.10.27.204', '10.10.26.47', '/admission/applications/add', 'http://10.10.26.47/admission/applications/summary'),
(719, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves application with id [1416844886581] for season [1416327912207]', '2014-11-24 16:01:26', '10.10.27.204', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/summary'),
(720, 'application', 'sabelo.dube@ashesi.edu.gh : views summary of application [1416844886581] without financial aid', '2014-11-24 16:01:26', '10.10.27.204', '10.10.26.47', '/admission/applications/summary/1416844886581', 'http://10.10.26.47/admission/applications/summary'),
(721, 'applicant', 'sabelo.dube@ashesi.edu.gh : has no orphanage information for applicant details for application [1416844886581]', '2014-11-24 16:07:04', '10.10.27.204', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(722, 'applicant', 'sabelo.dube@ashesi.edu.gh : could not upload profile picture for appliation [1416844886581]', '2014-11-24 16:07:04', '10.10.27.204', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(723, 'applicant', 'sabelo.dube@ashesi.edu.gh : adds applicant details for application [1416844886581]', '2014-11-24 16:07:04', '10.10.27.204', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(724, '1416849383061', 'Applicant details added', '2014-11-24 16:07:04', '10.10.27.204', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(725, 'admission', 'sabelo.dube@ashesi.edu.gh : has no sponsor information for admission details for application [1416844886581]', '2014-11-24 16:20:50', '10.10.27.204', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(726, 'admission', 'sabelo.dube@ashesi.edu.gh : has no ashesi siblings information for admission details for application [1416844886581]', '2014-11-24 16:20:50', '10.10.27.204', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(727, 'admission', 'sabelo.dube@ashesi.edu.gh : activates financial aid application for application [1416844886581]', '2014-11-24 16:20:51', '10.10.27.204', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(728, '1416849383061', 'Financial aid application activated', '2014-11-24 16:20:51', '10.10.27.204', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(729, 'admission', 'sabelo.dube@ashesi.edu.gh : added admission details for application [1416844886581]', '2014-11-24 16:20:51', '10.10.27.204', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(730, '1416849383061', 'Admission details added', '2014-11-24 16:20:52', '10.10.27.204', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(731, 'user', 'odarkwei.mills@ashesi.edu.gh : failed login attempt with and p=2oppbegan', '2014-11-24 20:11:37', '10.10.32.220', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(732, 'user', 'odarkwei.mills@ashesi.edu.gh : failed login attempt with and p=2oppbegan', '2014-11-24 20:12:35', '10.10.32.220', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(733, 'user', 'odarkwei.mills@office365.om : failed login attempt with and p=2oppbegan', '2014-11-24 20:12:58', '10.10.32.220', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(734, '1416849383061', 'login successful', '2014-11-24 21:32:43', '10.10.29.214', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(735, 'user', 'sabelo.dube@ashesi.edu.gh : login successful', '2014-11-24 21:32:43', '10.10.29.214', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(736, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-24 21:32:43', '10.10.29.214', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(737, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves application with id [1416844886581] for season [1416327912207]', '2014-11-24 21:32:47', '10.10.29.214', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(738, 'application', 'sabelo.dube@ashesi.edu.gh : views summary of application [1416844886581] with financial aid', '2014-11-24 21:32:47', '10.10.29.214', '10.10.26.47', '/admission/applications/summary/1416844886581', 'http://10.10.26.47/admission/applications/seasons'),
(739, 'fa_application', 'sabelo.dube@ashesi.edu.gh : creates new fa application with id [] for application [1416844886581]', '2014-11-24 21:36:58', '10.10.29.214', '10.10.26.47', '/admission/fa_applications/add', 'http://10.10.26.47/admission/fa_applications/summary/none'),
(740, '1416849383061', 'New financial aid application created', '2014-11-24 21:36:58', '10.10.29.214', '10.10.26.47', '/admission/fa_applications/add', 'http://10.10.26.47/admission/fa_applications/summary/none'),
(741, 'fa_application', 'sabelo.dube@ashesi.edu.gh : views summary of financial aid application [1416865019358] for application [1416844886581]', '2014-11-24 21:37:18', '10.10.29.214', '10.10.26.47', '/admission/fa_applications/summary/1416865019358', 'http://10.10.26.47/admission/fa_applications/edit/1416865019358'),
(742, '1416849383061', 'logout successful', '2014-11-24 22:19:01', '10.10.29.214', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/fa_documents/add'),
(743, '1416849383061', 'sabelo.dube@ashesi.edu.gh : logout successful', '2014-11-24 22:19:01', '10.10.29.214', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/fa_documents/add'),
(744, '1416849383061', 'login successful', '2014-11-24 22:19:18', '10.10.29.214', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(745, 'user', 'sabelo.dube@ashesi.edu.gh : login successful', '2014-11-24 22:19:18', '10.10.29.214', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(746, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-24 22:19:18', '10.10.29.214', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(747, 'user', 'edemkojospio@gmail.com : account creation successfully', '2014-11-25 07:24:58', '10.10.33.235', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(748, 'user', 'edemkojospio@gmail.com : unable to login with unconfirmed account', '2014-11-25 07:25:55', '10.10.33.235', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(749, 'email', 'account activation email sent to edemkojospio@gmail.com', '2014-11-25 07:25:58', '10.10.33.235', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(750, 'error', 'Fatal Error (4): syntax error, unexpected ''<'' in [C:\\server\\apache\\htdocs\\admission\\app\\View\\Users\\find_disabled.ctp, line 69]', '2014-11-25 07:32:01', '10.10.33.235', '10.10.26.47', '/admission/users/findDisabled', 'http://10.10.26.47/admission/users/'),
(751, 'error', '[FatalErrorException] syntax error, unexpected ''<''\nRequest URL: /admission/users/findDisabled\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Error\\ErrorHandler.php(184): ErrorHandler::handleFatalError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 69)\n#1 [internal function]: ErrorHandler::handleError(4, ''syntax error, u...'', ''C:\\server\\apach...'', 69, Array)\n#2 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(926): call_user_func(''ErrorHandler::h...'', 4, ''syntax error, u...'', ''C:\\server\\apach...'', 69, Array)\n#3 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Core\\App.php(899): App::_checkFatalError()\n#4 [internal function]: App::shutdown()\n#5 {main}', '2014-11-25 07:32:01', '10.10.33.235', '10.10.26.47', '/admission/users/findDisabled', 'http://10.10.26.47/admission/users/'),
(752, '1416849383061', 'login successful', '2014-11-25 09:53:54', '10.10.27.204', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(753, 'user', 'sabelo.dube@ashesi.edu.gh : login successful', '2014-11-25 09:53:54', '10.10.27.204', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(754, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-25 09:53:55', '10.10.27.204', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(755, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves application with id [1416844886581] for season [1416327912207]', '2014-11-25 09:53:59', '10.10.27.204', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(756, 'application', 'sabelo.dube@ashesi.edu.gh : views summary of application [1416844886581] with financial aid', '2014-11-25 09:53:59', '10.10.27.204', '10.10.26.47', '/admission/applications/summary/1416844886581', 'http://10.10.26.47/admission/applications/seasons'),
(757, '1414404550867', 'login successful', '2014-11-26 11:44:28', '10.10.26.186', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(758, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-26 11:44:29', '10.10.26.186', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(759, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-26 11:44:29', '10.10.26.186', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(760, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-11-26 11:47:01', '10.10.26.186', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(761, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-26 11:47:03', '10.10.26.186', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(762, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-26 11:47:26', '10.10.26.186', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(763, '1416530983962', 'login successful', '2014-11-26 15:50:04', '10.10.26.248', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(764, 'user', 'lilian.awuor@ashesi.edu.gh : login successful', '2014-11-26 15:50:04', '10.10.26.248', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(765, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-26 15:50:05', '10.10.26.248', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(766, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves no application for season [1416327912207]', '2014-11-26 15:50:12', '10.10.26.248', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(767, 'application', 'lilian.awuor@ashesi.edu.gh : could not view summary of application [] because it could not be found', '2014-11-26 15:50:12', '10.10.26.248', '10.10.26.47', '/admission/applications/summary', 'http://10.10.26.47/admission/applications/seasons'),
(768, 'application', 'lilian.awuor@ashesi.edu.gh : creates new application with id [1417017018363] for season [1416327912207]', '2014-11-26 15:50:17', '10.10.26.248', '10.10.26.47', '/admission/applications/add', 'http://10.10.26.47/admission/applications/summary'),
(769, '1416530983962', 'New addmission application created', '2014-11-26 15:50:17', '10.10.26.248', '10.10.26.47', '/admission/applications/add', 'http://10.10.26.47/admission/applications/summary'),
(770, 'application', 'lilian.awuor@ashesi.edu.gh : retrieves application with id [1417017018363] for season [1416327912207]', '2014-11-26 15:50:18', '10.10.26.248', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/summary'),
(771, 'application', 'lilian.awuor@ashesi.edu.gh : views summary of application [1417017018363] without financial aid', '2014-11-26 15:50:18', '10.10.26.248', '10.10.26.47', '/admission/applications/summary/1417017018363', 'http://10.10.26.47/admission/applications/summary'),
(772, 'applicant', 'lilian.awuor@ashesi.edu.gh : has no orphanage information for applicant details for application [1417017018363]', '2014-11-26 15:52:47', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(773, 'applicant', 'lilian.awuor@ashesi.edu.gh : creates application file folder [C:\\server\\apache\\htdocs\\admission\\app\\webroot\\files\\1417017018363]', '2014-11-26 15:52:48', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(774, '1416530983962', 'Profile picture uploaded', '2014-11-26 15:52:48', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(775, 'applicant', 'lilian.awuor@ashesi.edu.gh : uploads profile picture [1417017018363/picture.png]', '2014-11-26 15:52:48', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(776, 'file', 'lilian.awuor@ashesi.edu.gh : uploads file [1417017018363/picture.png]', '2014-11-26 15:52:48', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(778, 'applicant', 'lilian.awuor@ashesi.edu.gh : has no orphanage information for applicant details for application [1417017018363]', '2014-11-26 15:54:41', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(779, '1416530983962', 'Profile picture uploaded', '2014-11-26 15:54:41', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(780, 'applicant', 'lilian.awuor@ashesi.edu.gh : uploads profile picture [1417017018363/picture.png]', '2014-11-26 15:54:41', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(781, 'file', 'lilian.awuor@ashesi.edu.gh : uploads file [1417017018363/picture.png]', '2014-11-26 15:54:41', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(783, 'applicant', 'lilian.awuor@ashesi.edu.gh : has no orphanage information for applicant details for application [1417017018363]', '2014-11-26 15:54:56', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(784, '1416530983962', 'Profile picture uploaded', '2014-11-26 15:54:56', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(785, 'applicant', 'lilian.awuor@ashesi.edu.gh : uploads profile picture [1417017018363/picture.png]', '2014-11-26 15:54:56', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(786, 'file', 'lilian.awuor@ashesi.edu.gh : uploads file [1417017018363/picture.png]', '2014-11-26 15:54:56', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(788, 'applicant', 'lilian.awuor@ashesi.edu.gh : has no orphanage information for applicant details for application [1417017018363]', '2014-11-26 15:58:22', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(789, '1416530983962', 'Profile picture uploaded', '2014-11-26 15:58:22', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(790, 'applicant', 'lilian.awuor@ashesi.edu.gh : uploads profile picture [1417017018363/picture.png]', '2014-11-26 15:58:22', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(791, 'file', 'lilian.awuor@ashesi.edu.gh : uploads file [1417017018363/picture.png]', '2014-11-26 15:58:23', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(793, 'applicant', 'lilian.awuor@ashesi.edu.gh : has no orphanage information for applicant details for application [1417017018363]', '2014-11-26 16:10:21', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(794, '1416530983962', 'Profile picture uploaded', '2014-11-26 16:10:21', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(795, 'applicant', 'lilian.awuor@ashesi.edu.gh : uploads profile picture [1417017018363/picture.png]', '2014-11-26 16:10:21', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(796, 'file', 'lilian.awuor@ashesi.edu.gh : uploads file [1417017018363/picture.png]', '2014-11-26 16:10:21', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(798, 'applicant', 'lilian.awuor@ashesi.edu.gh : has no orphanage information for applicant details for application [1417017018363]', '2014-11-26 16:10:43', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(799, '1416530983962', 'Profile picture uploaded', '2014-11-26 16:10:43', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(800, 'applicant', 'lilian.awuor@ashesi.edu.gh : uploads profile picture [1417017018363/picture.png]', '2014-11-26 16:10:43', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(801, 'file', 'lilian.awuor@ashesi.edu.gh : uploads file [1417017018363/picture.png]', '2014-11-26 16:10:43', '10.10.26.248', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(803, '1416849383061', 'login successful', '2014-11-27 02:39:20', '10.10.27.204', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(804, 'user', 'sabelo.dube@ashesi.edu.gh : login successful', '2014-11-27 02:39:20', '10.10.27.204', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(805, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-27 02:39:20', '10.10.27.204', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(806, 'application', 'sabelo.dube@ashesi.edu.gh : retrieves application with id [1416844886581] for season [1416327912207]', '2014-11-27 02:39:26', '10.10.27.204', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(807, 'application', 'sabelo.dube@ashesi.edu.gh : views summary of application [1416844886581] with financial aid', '2014-11-27 02:39:27', '10.10.27.204', '10.10.26.47', '/admission/applications/summary/1416844886581', 'http://10.10.26.47/admission/applications/seasons'),
(808, 'fa_application', 'sabelo.dube@ashesi.edu.gh : views summary of financial aid application [1416865019358] for application [1416844886581]', '2014-11-27 02:39:36', '10.10.27.204', '10.10.26.47', '/admission/fa_applications/summary/1416865019358', 'http://10.10.26.47/admission/applications/summary/1416844886581'),
(809, 'user', 'prince.kwarase@ashesi.edu.gh : failed login attempt with and p=write1', '2014-11-27 03:28:16', '10.10.26.117', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(810, 'user', 'prince.kwarase@ashesi.edu.gh : failed login attempt with and p=uniqueprince', '2014-11-27 03:28:31', '10.10.26.117', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(811, 'user', 'prince.kwarase@ashesi.edu.gh : failed login attempt with and p=uniqueprince', '2014-11-27 03:29:04', '10.10.26.117', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(812, 'user', 'bridget.acheampong@ashesi.edu.gh : failed login attempt with and p=jesusisthebest181193', '2014-11-27 04:23:36', '10.10.26.189', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(813, 'user', 'bridget.acheampong@ashesi.edu.gh : failed login attempt with and p=jesusisthebest181193', '2014-11-27 04:24:08', '10.10.26.189', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(814, 'user', 'bridget.acheampong@ashesi.edu.gh : failed login attempt with and p=jesusisthebest181193', '2014-11-27 04:24:32', '10.10.26.189', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(815, 'user', 'bridget.acheampong@rocketmail.com : account creation successfully', '2014-11-27 04:25:24', '10.10.26.189', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(816, 'user', 'bridget.acheampong@rocketmail.com : unable to login with unconfirmed account', '2014-11-27 04:25:44', '10.10.26.189', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(817, 'email', 'account activation email sent to bridget.acheampong@rocketmail.com', '2014-11-27 04:25:47', '10.10.26.189', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(818, '1417064954128', 'account activation successful', '2014-11-27 04:27:05', '10.10.26.189', '10.10.26.47', '/admission/users/confirm/d971468191951cd1de019c80694add783963c3df/1417064954128/61c92a639b1bba51ceeb4d38d31e2348b8eace28', NULL),
(819, 'user', 'bridget.acheampong@rocketmail.com : account [1417064954128] activation successful', '2014-11-27 04:27:05', '10.10.26.189', '10.10.26.47', '/admission/users/confirm/d971468191951cd1de019c80694add783963c3df/1417064954128/61c92a639b1bba51ceeb4d38d31e2348b8eace28', NULL),
(820, 'application', 'bridget.acheampong@rocketmail.com : retrieves 1 open season(s)', '2014-11-27 04:27:05', '10.10.26.189', '10.10.26.47', '/admission/applications/seasons', NULL),
(821, 'application', 'bridget.acheampong@rocketmail.com : retrieves no application for season [1416327912207]', '2014-11-27 04:27:27', '10.10.26.189', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(822, 'application', 'bridget.acheampong@rocketmail.com : could not view summary of application [] because it could not be found', '2014-11-27 04:27:27', '10.10.26.189', '10.10.26.47', '/admission/applications/summary', 'http://10.10.26.47/admission/applications/seasons'),
(823, 'application', 'bridget.acheampong@rocketmail.com : creates new application with id [1417062455404] for season [1416327912207]', '2014-11-27 04:27:34', '10.10.26.189', '10.10.26.47', '/admission/applications/add', 'http://10.10.26.47/admission/applications/summary'),
(824, '1417064954128', 'New addmission application created', '2014-11-27 04:27:34', '10.10.26.189', '10.10.26.47', '/admission/applications/add', 'http://10.10.26.47/admission/applications/summary'),
(825, 'application', 'bridget.acheampong@rocketmail.com : retrieves application with id [1417062455404] for season [1416327912207]', '2014-11-27 04:27:35', '10.10.26.189', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/summary'),
(826, 'application', 'bridget.acheampong@rocketmail.com : views summary of application [1417062455404] without financial aid', '2014-11-27 04:27:35', '10.10.26.189', '10.10.26.47', '/admission/applications/summary/1417062455404', 'http://10.10.26.47/admission/applications/summary'),
(827, 'applicant', 'bridget.acheampong@rocketmail.com : has no orphanage information for applicant details for application [1417062455404]', '2014-11-27 04:30:55', '10.10.26.189', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(828, 'applicant', 'bridget.acheampong@rocketmail.com : creates application file folder [C:\\server\\apache\\htdocs\\admission\\app\\webroot\\files\\1417062455404]', '2014-11-27 04:30:56', '10.10.26.189', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(829, '1417064954128', 'Profile picture uploaded', '2014-11-27 04:30:56', '10.10.26.189', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(830, 'applicant', 'bridget.acheampong@rocketmail.com : uploads profile picture [1417062455404/picture.jpg]', '2014-11-27 04:30:56', '10.10.26.189', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(831, 'file', 'bridget.acheampong@rocketmail.com : uploads file [1417062455404/picture.jpg]', '2014-11-27 04:30:56', '10.10.26.189', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(832, 'applicant', 'bridget.acheampong@rocketmail.com : could not add applicant details for application [1417062455404]', '2014-11-27 04:30:56', '10.10.26.189', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(833, '1414404550867', 'login successful', '2014-11-28 08:51:28', '10.10.26.138', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(834, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-28 08:51:28', '10.10.26.138', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(835, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-28 08:51:29', '10.10.26.138', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(851, '1414404550867', 'login successful', '2014-11-28 12:42:37', '10.10.26.124', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(852, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-28 12:42:37', '10.10.26.124', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(853, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-28 12:42:37', '10.10.26.124', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(854, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-28 12:46:43', '10.10.26.124', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/travels/add'),
(855, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-11-28 12:47:00', '10.10.26.124', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(856, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-28 12:47:01', '10.10.26.124', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(857, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-28 12:47:13', '10.10.26.124', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/documents/add'),
(924, '1414404550867', 'login successful', '2014-11-28 16:55:32', '10.10.26.122', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(925, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-11-28 16:55:32', '10.10.26.122', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(926, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-28 16:55:33', '10.10.26.122', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(927, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-11-28 16:55:34', '10.10.26.122', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(928, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] without financial aid', '2014-11-28 16:55:35', '10.10.26.122', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(929, 'admission', 'daniel.botchway@ashesi.edu.gh : had no or has removed sponsor information for admission details for application [1416394706038]', '2014-11-28 16:56:02', '10.10.26.122', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(930, 'admission', 'daniel.botchway@ashesi.edu.gh : has [2] Ashesi Sibling(s) information updated to admission details for application [1416394706038]', '2014-11-28 16:56:02', '10.10.26.122', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(931, '1414404550867', 'Admission details has [2] family in Ashesi information added now', '2014-11-28 16:56:02', '10.10.26.122', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(932, 'admission', 'daniel.botchway@ashesi.edu.gh : has now activated a financial aid application for application [1416394706038]', '2014-11-28 16:56:03', '10.10.26.122', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(933, '1414404550867', 'Financial aid application activated now', '2014-11-28 16:56:03', '10.10.26.122', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(934, 'admission', 'daniel.botchway@ashesi.edu.gh : updates admission details for application [1416394706038]', '2014-11-28 16:56:03', '10.10.26.122', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(935, '1414404550867', 'Admission details updated', '2014-11-28 16:56:03', '10.10.26.122', '10.10.26.47', '/admission/admissions/edit/1416565603888', 'http://10.10.26.47/admission/admissions/edit/1416565603888'),
(936, 'fa_application', 'daniel.botchway@ashesi.edu.gh : creates new fa application with id [] for application [1416394706038]', '2014-11-28 16:56:16', '10.10.26.122', '10.10.26.47', '/admission/fa_applications/add', 'http://10.10.26.47/admission/fa_applications/summary/1'),
(937, '1414404550867', 'New financial aid application created', '2014-11-28 16:56:17', '10.10.26.122', '10.10.26.47', '/admission/fa_applications/add', 'http://10.10.26.47/admission/fa_applications/summary/1'),
(938, 'fa_application', 'daniel.botchway@ashesi.edu.gh : views summary of financial aid application [1417193777564] for application [1416394706038]', '2014-11-28 16:56:30', '10.10.26.122', '10.10.26.47', '/admission/fa_applications/summary/1417193777564', 'http://10.10.26.47/admission/fa_applications/summary/1'),
(939, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-11-28 16:56:37', '10.10.26.122', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/fa_applications/summary/1417193777564'),
(940, 'fa_application', 'daniel.botchway@ashesi.edu.gh : views summary of financial aid application [1417193777564] for application [1416394706038]', '2014-11-28 16:56:39', '10.10.26.122', '10.10.26.47', '/admission/fa_applications/summary/1417193777564', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(941, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-11-28 16:57:45', '10.10.26.122', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/fa_expenses/add'),
(942, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-11-28 16:57:47', '10.10.26.122', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(943, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-11-28 16:57:48', '10.10.26.122', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(944, 'fa_application', 'daniel.botchway@ashesi.edu.gh : views summary of financial aid application [1417193777564] for application [1416394706038]', '2014-11-28 16:57:50', '10.10.26.122', '10.10.26.47', '/admission/fa_applications/summary/1417193777564', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(945, 'user', 'damaris.olting''idi@ashesi.edu.gh : failed login attempt with and p=jesus100', '2014-11-28 17:20:34', '10.10.25.211', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(946, 'user', 'damaris.olting''idi@ashesi.edu.gh : failed login attempt with and p=silantoi1993', '2014-11-28 17:21:07', '10.10.25.211', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(947, 'user', 'damaris.olting''di@ashesi.edu.gh : failed login attempt with and p=silantoi1993', '2014-11-28 17:21:40', '10.10.25.211', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(948, 'user', 'damarissilantoi@yahoo.com : account creation successfully', '2014-11-28 17:22:23', '10.10.25.211', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(949, 'user', 'damarissilantoi@yahoo.com : unable to login with unconfirmed account', '2014-11-28 17:22:45', '10.10.25.211', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(950, 'email', 'account activation email sent to damarissilantoi@yahoo.com', '2014-11-28 17:22:47', '10.10.25.211', '10.10.26.47', '/admission/users/send_account_confirmation_email', 'http://10.10.26.47/admission/'),
(951, '1417201533240', 'account activation successful', '2014-11-28 17:23:56', '10.10.25.211', '10.10.26.47', '/admission/users/confirm/ec8c66a076e56d165eb3e46d5fd16d1f031d2257/1417201533240/011ebc873b5770ab1274c195fecf1e1b530f6c44', NULL),
(952, 'user', 'damarissilantoi@yahoo.com : account [1417201533240] activation successful', '2014-11-28 17:23:56', '10.10.25.211', '10.10.26.47', '/admission/users/confirm/ec8c66a076e56d165eb3e46d5fd16d1f031d2257/1417201533240/011ebc873b5770ab1274c195fecf1e1b530f6c44', NULL),
(953, 'application', 'damarissilantoi@yahoo.com : retrieves 1 open season(s)', '2014-11-28 17:23:56', '10.10.25.211', '10.10.26.47', '/admission/applications/seasons', NULL),
(954, '1417201533240', 'login successful', '2014-11-28 17:24:33', '10.10.25.211', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(955, 'user', 'damarissilantoi@yahoo.com : login successful', '2014-11-28 17:24:33', '10.10.25.211', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(956, 'application', 'damarissilantoi@yahoo.com : retrieves 1 open season(s)', '2014-11-28 17:24:33', '10.10.25.211', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(957, 'application', 'damarissilantoi@yahoo.com : retrieves 1 open season(s)', '2014-11-28 17:24:38', '10.10.25.211', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applications/seasons'),
(958, 'application', 'damarissilantoi@yahoo.com : retrieves no application for season [1416327912207]', '2014-11-28 17:26:27', '10.10.25.211', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(959, 'application', 'damarissilantoi@yahoo.com : could not view summary of application [] because it could not be found', '2014-11-28 17:26:27', '10.10.25.211', '10.10.26.47', '/admission/applications/summary', 'http://10.10.26.47/admission/applications/seasons'),
(960, 'application', 'damarissilantoi@yahoo.com : creates new application with id [1417195595410] for season [1416327912207]', '2014-11-28 17:26:35', '10.10.25.211', '10.10.26.47', '/admission/applications/add', 'http://10.10.26.47/admission/applications/summary'),
(961, '1417201533240', 'New addmission application created', '2014-11-28 17:26:35', '10.10.25.211', '10.10.26.47', '/admission/applications/add', 'http://10.10.26.47/admission/applications/summary'),
(962, 'application', 'damarissilantoi@yahoo.com : retrieves application with id [1417195595410] for season [1416327912207]', '2014-11-28 17:26:35', '10.10.25.211', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/summary'),
(963, 'application', 'damarissilantoi@yahoo.com : views summary of application [1417195595410] without financial aid', '2014-11-28 17:26:35', '10.10.25.211', '10.10.26.47', '/admission/applications/summary/1417195595410', 'http://10.10.26.47/admission/applications/summary'),
(964, 'applicant', 'damarissilantoi@yahoo.com : has no orphanage information for applicant details for application [1417195595410]', '2014-11-28 17:36:45', '10.10.25.211', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(965, 'applicant', 'damarissilantoi@yahoo.com : creates application file folder [C:\\server\\apache\\htdocs\\admission\\app\\webroot\\files\\1417195595410]', '2014-11-28 17:36:45', '10.10.25.211', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(966, '1417201533240', 'Profile picture uploaded', '2014-11-28 17:36:45', '10.10.25.211', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(967, 'applicant', 'damarissilantoi@yahoo.com : uploads profile picture [1417195595410/picture.JPG]', '2014-11-28 17:36:45', '10.10.25.211', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(968, 'file', 'damarissilantoi@yahoo.com : uploads file [1417195595410/picture.JPG]', '2014-11-28 17:36:45', '10.10.25.211', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(969, 'applicant', 'damarissilantoi@yahoo.com : adds applicant details for application [1417195595410]', '2014-11-28 17:36:46', '10.10.25.211', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(970, '1417201533240', 'Applicant details added', '2014-11-28 17:36:46', '10.10.25.211', '10.10.26.47', '/admission/applicants/add', 'http://10.10.26.47/admission/applicants/add'),
(971, 'admission', 'damarissilantoi@yahoo.com : has no sponsor information for admission details for application [1417195595410]', '2014-11-28 17:40:01', '10.10.25.211', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(972, 'admission', 'damarissilantoi@yahoo.com : has no ashesi siblings information for admission details for application [1417195595410]', '2014-11-28 17:40:01', '10.10.25.211', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(973, 'admission', 'damarissilantoi@yahoo.com : activates financial aid application for application [1417195595410]', '2014-11-28 17:40:01', '10.10.25.211', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(974, '1417201533240', 'Financial aid application activated', '2014-11-28 17:40:01', '10.10.25.211', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(975, 'admission', 'damarissilantoi@yahoo.com : added admission details for application [1417195595410]', '2014-11-28 17:40:02', '10.10.25.211', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(976, '1417201533240', 'Admission details added', '2014-11-28 17:40:02', '10.10.25.211', '10.10.26.47', '/admission/admissions/add', 'http://10.10.26.47/admission/admissions/add'),
(977, '1414404550867', 'login successful', '2014-12-01 10:36:29', '10.10.26.181', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(978, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-12-01 10:36:30', '10.10.26.181', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(979, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-01 10:36:31', '10.10.26.181', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(980, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-12-01 10:38:28', '10.10.26.181', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(981, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-12-01 10:38:28', '10.10.26.181', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(982, '1414404550867', 'logout successful', '2014-12-01 10:38:33', '10.10.26.181', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(983, '1414404550867', 'daniel.botchway@ashesi.edu.gh : logout successful', '2014-12-01 10:38:33', '10.10.26.181', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(984, 'user', 'edemkojospio@gmail.com : failed login attempt with and p=annadaisy1996', '2014-12-01 11:23:46', '10.10.33.235', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(985, 'user', 'edemkjojospio@gmail.com : failed login attempt with and p=annadaisy', '2014-12-01 11:24:01', '10.10.33.235', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(986, 'user', 'edemkojospio@gmail.com : failed login attempt with and p=sybil1970', '2014-12-01 11:24:38', '10.10.33.235', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(987, 'user', 'edemkojospio@gmail.com : failed login attempt with and p=Annadaisy', '2014-12-01 11:24:55', '10.10.33.235', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(988, 'user', 'forgot password request successful for edemkojospio@gmail.com', '2014-12-01 11:25:13', '10.10.33.235', '10.10.26.47', '/admission/users/forgot', 'http://10.10.26.47/admission/users/forgot'),
(989, 'email', 'password reset email sent to edemkojospio@gmail.com', '2014-12-01 11:25:16', '10.10.33.235', '10.10.26.47', '/admission/users/send_password_reset_email', 'http://10.10.26.47/admission/users/forgot'),
(990, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:25:59', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(991, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:26:08', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(992, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:26:10', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(993, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:26:13', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(994, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:26:24', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL);
INSERT INTO `logs` (`id`, `type`, `message`, `created`, `ip`, `hostname`, `uri`, `refer`) VALUES
(995, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:26:46', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(996, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:27:01', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(997, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:27:04', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(998, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:27:07', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(999, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:27:08', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(1000, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:27:08', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(1001, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:27:08', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(1002, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:27:08', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(1003, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:27:08', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(1004, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 11:27:09', '10.10.33.235', '10.10.26.47', '/admission/users/reset/9171d80aeca9b37a04915dc887faa90937675ed8/1416901659444/ea08fc22d8ea8c1559fa4a48db6fd5329327e426', NULL),
(1005, '1414404550867', 'login successful', '2014-12-01 12:43:19', '10.10.26.181', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1006, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-12-01 12:43:19', '10.10.26.181', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1007, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-01 12:43:19', '10.10.26.181', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(1008, '1414404550867', 'logout successful', '2014-12-01 12:44:05', '10.10.26.181', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons'),
(1009, '1414404550867', 'daniel.botchway@ashesi.edu.gh : logout successful', '2014-12-01 12:44:05', '10.10.26.181', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/seasons'),
(1010, 'user', 'forgot password request successful for daniel.botchway@ashesi.edu.gh', '2014-12-01 12:44:17', '10.10.26.181', '10.10.26.47', '/admission/users/forgot', 'http://10.10.26.47/admission/users/forgot'),
(1011, 'email', 'password reset email sent to daniel.botchway@ashesi.edu.gh', '2014-12-01 12:44:18', '10.10.26.181', '10.10.26.47', '/admission/users/send_password_reset_email', 'http://10.10.26.47/admission/users/forgot'),
(1012, 'user', 'forgot password request failed for daniel.botchway@ashesi.edu.gha', '2014-12-01 12:44:39', '10.10.26.181', '10.10.26.47', '/admission/users/forgot', 'http://10.10.26.47/admission/users/forgot'),
(1013, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/b8ea0d58253dd0338f3d0358558c838a9fece80c/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 12:44:52', '10.10.26.181', '10.10.26.47', '/admission/users/reset/b8ea0d58253dd0338f3d0358558c838a9fece80c/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a', NULL),
(1014, '1414404550867', 'login successful', '2014-12-01 12:45:14', '10.10.26.181', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1015, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-12-01 12:45:14', '10.10.26.181', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1016, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-01 12:45:14', '10.10.26.181', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(1017, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/b8ea0d58253dd0338f3d0358558c838a9fece80c/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 12:45:27', '10.10.26.181', '10.10.26.47', '/admission/users/reset/b8ea0d58253dd0338f3d0358558c838a9fece80c/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a', NULL),
(1018, 'error', '[MissingActionException] Action UsersController::reset() could not be found.\nException Attributes: array (\n  ''controller'' => ''UsersController'',\n  ''action'' => ''reset'',\n)\nRequest URL: /admission/users/reset/b8ea0d58253dd0338f3d0358558c838a9fece80c/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a\nStack Trace:\n#0 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(187): Controller->invokeAction(Object(CakeRequest))\n#1 C:\\server\\apache\\htdocs\\admission\\lib\\Cake\\Routing\\Dispatcher.php(162): Dispatcher->_invoke(Object(UsersController), Object(CakeRequest), Object(CakeResponse))\n#2 C:\\server\\apache\\htdocs\\admission\\app\\webroot\\index.php(109): Dispatcher->dispatch(Object(CakeRequest), Object(CakeResponse))\n#3 {main}', '2014-12-01 12:46:23', '10.10.26.181', '10.10.26.47', '/admission/users/reset/b8ea0d58253dd0338f3d0358558c838a9fece80c/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a', NULL),
(1019, '1414404550867', 'Successful password reset', '2014-12-01 12:49:46', '10.10.26.181', '10.10.26.47', '/admission/users/reset/b8ea0d58253dd0338f3d0358558c838a9fece80c/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a', 'http://10.10.26.47/admission/users/reset/b8ea0d58253dd0338f3d0358558c838a9fece80c/1414404550867/4d1a5fa1ef4497dbedef4283f40e46a86917c04a'),
(1020, '1414404550867', 'login successful', '2014-12-01 12:49:55', '10.10.26.181', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1021, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-12-01 12:49:55', '10.10.26.181', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1022, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-01 12:49:55', '10.10.26.181', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(1023, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-12-01 12:53:03', '10.10.26.181', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(1024, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-12-01 12:53:03', '10.10.26.181', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(1025, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-12-01 12:55:54', '10.10.26.181', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/schools/add'),
(1026, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-12-01 13:32:02', '10.10.26.181', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/other_colleges/add'),
(1027, 'fa_application', 'daniel.botchway@ashesi.edu.gh : views summary of financial aid application [1417193777564] for application [1416394706038]', '2014-12-01 13:32:09', '10.10.26.181', '10.10.26.47', '/admission/fa_applications/summary/1417193777564', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(1028, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-12-01 13:44:11', '10.10.26.181', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/fa_applications/summary/1417193777564'),
(1057, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-12-01 14:09:49', '10.10.26.181', '10.10.26.47', '/admission/applications/summary/1416394706038', NULL),
(1058, 'fa_application', 'daniel.botchway@ashesi.edu.gh : views summary of financial aid application [1417193777564] for application [1416394706038]', '2014-12-01 14:09:52', '10.10.26.181', '10.10.26.47', '/admission/fa_applications/summary/1417193777564', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(1059, '1414404550867', 'login successful', '2014-12-02 10:19:46', '10.10.27.62', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1060, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-12-02 10:19:46', '10.10.27.62', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1061, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-02 10:19:48', '10.10.27.62', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(1062, '1414404550867', 'login successful', '2014-12-02 15:12:19', '10.10.27.97', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1063, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-12-02 15:12:19', '10.10.27.97', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1064, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-02 15:12:19', '10.10.27.97', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(1065, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-12-02 15:12:23', '10.10.27.97', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(1066, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-12-02 15:12:24', '10.10.27.97', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(1067, '1414404550867', 'login successful', '2014-12-02 16:55:57', '10.10.27.62', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1068, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-12-02 16:55:57', '10.10.27.62', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1069, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-02 16:55:58', '10.10.27.62', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(1070, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-02 16:56:44', '10.10.27.62', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/applicants/add'),
(1071, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-12-02 16:56:46', '10.10.27.62', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(1072, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-12-02 16:56:46', '10.10.27.62', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(1073, 'application', 'daniel.botchway@ashesi.edu.gh : new application creation failed because one already exists for season [1416327912207]', '2014-12-02 16:57:12', '10.10.27.62', '10.10.26.47', '/admission/applications/add', NULL),
(1074, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-12-02 16:57:13', '10.10.27.62', '10.10.26.47', '/admission/applications/summary/1416394706038', NULL),
(1075, '1414404550867', 'logout successful', '2014-12-02 16:57:17', '10.10.27.62', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(1076, '1414404550867', 'daniel.botchway@ashesi.edu.gh : logout successful', '2014-12-02 16:57:17', '10.10.27.62', '10.10.26.47', '/admission/users/logout', 'http://10.10.26.47/admission/applications/summary/1416394706038'),
(1077, '1414404550867', 'login successful', '2014-12-02 16:57:21', '10.10.27.62', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1078, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-12-02 16:57:21', '10.10.27.62', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1079, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-02 16:57:21', '10.10.27.62', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(1080, '1414404550867', 'login successful', '2014-12-04 11:52:24', '10.10.27.62', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1081, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-12-04 11:52:24', '10.10.27.62', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1082, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-04 11:52:25', '10.10.27.62', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(1083, 'user', 'daniel.botchway@ashesi.edu.gh : account creation failed', '2014-12-04 16:00:57', '10.10.27.57', '10.10.26.47', '/admission/users/add', 'http://10.10.26.47/admission/users/add'),
(1084, '1414404550867', 'login successful', '2014-12-04 16:03:24', '10.10.27.57', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1085, 'user', 'daniel.botchway@ashesi.edu.gh : login successful', '2014-12-04 16:03:24', '10.10.27.57', '10.10.26.47', '/admission/', 'http://10.10.26.47/admission/'),
(1086, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-04 16:03:26', '10.10.27.57', '10.10.26.47', '/admission/applications/seasons', 'http://10.10.26.47/admission/'),
(1087, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves application with id [1416394706038] for season [1416327912207]', '2014-12-04 16:03:45', '10.10.27.57', '10.10.26.47', '/admission/applications/retrieve/1416327912207', 'http://10.10.26.47/admission/applications/seasons'),
(1088, 'application', 'daniel.botchway@ashesi.edu.gh : views summary of application [1416394706038] with financial aid', '2014-12-04 16:03:45', '10.10.27.57', '10.10.26.47', '/admission/applications/summary/1416394706038', 'http://10.10.26.47/admission/applications/seasons'),
(1089, 'application', 'daniel.botchway@ashesi.edu.gh : retrieves 1 open season(s)', '2014-12-04 16:13:23', '10.10.27.57', '10.10.26.47', '/admission/applications/seasons', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `major_codes`
--

CREATE TABLE IF NOT EXISTS `major_codes` (
  `major_code_id` varchar(120) NOT NULL,
  `major` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`major_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='majors/programs offered at the university';

--
-- Dumping data for table `major_codes`
--

INSERT INTO `major_codes` (`major_code_id`, `major`, `enabled`) VALUES
('1413662310', 'Computer Science', 1),
('1413988543', 'Business Administration', 1),
('1414033433', 'Undecided', 0),
('1414474047', 'Engineering', 1),
('1414475447', 'Management Information Systems', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orphanages`
--

CREATE TABLE IF NOT EXISTS `orphanages` (
  `orphanage_id` varchar(120) NOT NULL,
  `applicant_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `orphanage_name` varchar(255) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_phone_primary` varchar(20) NOT NULL,
  `contact_phone_secondary` varchar(20) NOT NULL,
  `contact_email_primary` varchar(120) NOT NULL,
  `contact_email_secondary` varchar(120) NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`orphanage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='orphanage details for applicant who lived in an orphanage';

--
-- Dumping data for table `orphanages`
--


-- --------------------------------------------------------

--
-- Table structure for table `other_colleges`
--

CREATE TABLE IF NOT EXISTS `other_colleges` (
  `other_college_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`other_college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='other universities or colleges applicant has or intends to a';

--
-- Dumping data for table `other_colleges`
--


-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `fee` varchar(120) NOT NULL,
  `mode` varchar(120) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `receipt` varchar(255) NOT NULL,
  `status` varchar(120) NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--


-- --------------------------------------------------------

--
-- Table structure for table `relationship_codes`
--

CREATE TABLE IF NOT EXISTS `relationship_codes` (
  `relationship_code_id` varchar(120) NOT NULL,
  `relationship` varchar(120) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`relationship_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='list of relationships (family types and otherwise)';

--
-- Dumping data for table `relationship_codes`
--

INSERT INTO `relationship_codes` (`relationship_code_id`, `relationship`, `enabled`) VALUES
('14137902631', 'Nephew', 1),
('14138351261', 'Mother', 1),
('14138858461', 'Step-father', 1),
('14139903841', 'Step-mother', 1),
('14140368701', 'Grandfather', 1),
('14140605221', 'Aunt', 1),
('14141859021', 'Wife', 1),
('14142174381', 'Sister', 1),
('14142475701', 'Father', 1),
('14142862641', 'Step-sister', 1),
('14143106631', 'Step-brother', 1),
('14143293801', 'Husband', 1),
('14143494481', 'Grandmother', 1),
('14144319071', 'Parents', 1),
('14144904691', 'Brother', 1),
('14145088961', 'Daughter', 1),
('14145456311', 'Uncle', 1),
('14145458961', 'Cousin', 1),
('14145686781', 'Niece', 1),
('14146109451', 'Grandparents', 1),
('14147340902', 'Son', 1);

-- --------------------------------------------------------

--
-- Table structure for table `relatives`
--

CREATE TABLE IF NOT EXISTS `relatives` (
  `relative_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `name` varchar(255) NOT NULL,
  `relationship` varchar(120) NOT NULL,
  `is_alive` tinyint(1) NOT NULL,
  `phone_primary` varchar(20) DEFAULT NULL,
  `phone_secondary` varchar(20) DEFAULT NULL,
  `email_primary` varchar(120) DEFAULT NULL,
  `email_secondary` varchar(120) DEFAULT NULL,
  `education` varchar(120) NOT NULL,
  `employer` varchar(255) DEFAULT NULL,
  `job_title` varchar(250) DEFAULT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`relative_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='family/relative info of applicant';

--
-- Dumping data for table `relatives`
--

INSERT INTO `relatives` (`relative_id`, `application_id`, `name`, `relationship`, `is_alive`, `phone_primary`, `phone_secondary`, `email_primary`, `email_secondary`, `education`, `employer`, `job_title`, `creator`, `created`, `modified`) VALUES
('1414488853735', '1414424134786', 'Oprah', 'Mother', 0, NULL, NULL, NULL, NULL, 'N/A', NULL, NULL, '1414405980170', '2014-11-12 09:32:35', '2014-11-12 09:32:35'),
('1414488853823', '1414424134786', 'Koo Nimo', 'Father', 0, NULL, NULL, NULL, NULL, 'N/A', NULL, NULL, '1414405980170', '2014-11-12 09:32:35', '2014-11-12 09:32:35'),
('1415197971444', '1415182561814', 'DADDY CHARLES', 'Father', 1, '0244280931', '', '', '', 'TERTIARY', 'FASCOM', 'FARMERS', '1415184962726', '2014-11-05 14:32:50', '2014-11-05 14:32:50'),
('1415197971596', '1415182561814', 'AUNTY PEACE', 'Mother', 1, '0246191822', '', '', '', 'SECONDARY', 'SELF EMPLOYED', 'TRADER', '1415184962726', '2014-11-05 14:32:50', '2014-11-05 14:32:50'),
('1416418384117', '1416417330382', 'Jjemba Wilberforce', 'Father', 0, NULL, NULL, NULL, NULL, 'UCE(stopped at junior high)', NULL, NULL, '1416416464432', '2014-11-19 17:33:04', '2014-11-19 17:33:04'),
('1416418384486', '1416417330382', 'Nakayiza Annet', 'Mother', 1, '+256772655281', '+256754655281', 'derrrickhardz17@gmail.com', '', 'UCE(Stopped at junior high)', 'N/A', 'Market Vendor', '1416416464432', '2014-11-19 17:33:04', '2014-11-19 17:33:04'),
('1416419264525', '1416418137702', 'Mr George Amoh-Mensah', 'Father', 1, '+233274808812', '', 'mensahdorcas98@gmail.com', '', 'Junior High School', 'Gate of Grace Ministry', 'Preacher', '1416424201932', '2014-11-19 17:47:44', '2014-11-19 17:47:44'),
('1416419265048', '1416418137702', 'Ms. Matilda Amoh-Mensah', 'Mother', 1, '+233285011131', '', 'mensahdorcas98@gmail.com', '', 'University Degree', 'Ghana Education Service', 'Teacher', '1416424201932', '2014-11-19 17:47:44', '2014-11-19 17:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `roof_material_codes`
--

CREATE TABLE IF NOT EXISTS `roof_material_codes` (
  `roof_material_code_id` varchar(120) NOT NULL,
  `roof_material` varchar(120) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`roof_material_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roof_material_codes`
--

INSERT INTO `roof_material_codes` (`roof_material_code_id`, `roof_material`, `enabled`) VALUES
('1417474729.23', 'Thatch', 1),
('1417851253.23', 'Cement', 1),
('1418140113.23', 'Metal', 1),
('1418316982.23', 'Others', 1);

-- --------------------------------------------------------

--
-- Table structure for table `schoolheads`
--

CREATE TABLE IF NOT EXISTS `schoolheads` (
  `schoolhead_id` varchar(120) NOT NULL,
  `school_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(120) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_primary` varchar(20) NOT NULL,
  `phone_secondary` varchar(20) DEFAULT NULL,
  `email_primary` varchar(120) DEFAULT NULL,
  `email_secondary` varchar(120) DEFAULT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`schoolhead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='head of academic institution that applicant attended';

--
-- Dumping data for table `schoolheads`
--

INSERT INTO `schoolheads` (`schoolhead_id`, `school_id`, `application_id`, `name`, `position`, `address`, `phone_primary`, `phone_secondary`, `email_primary`, `email_secondary`, `creator`, `created`, `modified`) VALUES
('1414494487785', '1414494487729', '1414428115098', 'df', 'df', 'sdfc', 'df', 'df', 'sdf@f.com', '', '1414404550867', '2014-10-29 10:36:46', '2014-10-29 10:36:46'),
('1414494487793', '1414494487416', '1414428115098', '', '', '', '', '', '', '', '1414404550867', '2014-10-29 10:36:46', '2014-10-29 10:36:46'),
('1414494487899', '1414494488240', '1414428115098', '', '', '', '', '', '', '', '1414404550867', '2014-10-29 10:36:46', '2014-10-29 10:36:46'),
('1414494488163', '1414494488117', '1414428115098', '', '', '', '', '', '', '', '1414404550867', '2014-10-29 10:36:46', '2014-10-29 10:36:46'),
('1415785208717', '1415785209029', '1414424134786', '', '', '', '', '', '', '', '1414405980170', '2014-11-12 09:40:08', '2014-11-12 09:40:08'),
('1415785208873', '1415785208742', '1414424134786', 'Mr. Adiobo', 'Asst. Headmaster Academics', 'P.O.BOX AN5450', '0302610330', '', '', '', '1414405980170', '2014-11-12 09:40:08', '2014-11-12 09:40:08'),
('1415785208972', '1415785209200', '1414424134786', '', '', '', '', '', '', '', '1414405980170', '2014-11-12 09:40:08', '2014-11-12 09:40:08'),
('1415785209042', '1415785208521', '1414424134786', '', '', '', '', '', '', '', '1414405980170', '2014-11-12 09:40:08', '2014-11-12 09:40:08'),
('1416419148206', '1416419148843', '1416417330382', '', '', '', '', '', '', '', '1416416464432', '2014-11-19 17:45:48', '2014-11-19 17:45:48'),
('1416419148532', '1416419149116', '1416417330382', '', '', '', '', '', '', '', '1416416464432', '2014-11-19 17:45:48', '2014-11-19 17:45:48'),
('1416419148593', '1416419148511', '1416417330382', 'Mr.Mugaga Ali', 'Head teacher', 'Mengo,Kampala', '+256782321430', '', 'lubiriss@highwayafrica.com', '', '1416416464432', '2014-11-19 17:45:48', '2014-11-19 17:45:48'),
('1416419148691', '1416419148697', '1416417330382', 'Mr, Kazibwe James Fredrick', 'Head teacher', 'Mengo,Kampala', '+256782395783', '', 'mengoss@gmail.com', '', '1416416464432', '2014-11-19 17:45:48', '2014-11-19 17:45:48'),
('1416420784405', '1416420784969', '1416418137702', 'Mrs. Betty Djokoto', 'Headmistress', 'Wesley Girls'' High School, Cape Coast', '+233548956234', '', 'betty.djokoto@gmail.com', '', '1416424201932', '2014-11-19 18:13:04', '2014-11-19 18:13:04'),
('1416420784914', '1416420784784', '1416418137702', '', '', '', '', '', '', '', '1416424201932', '2014-11-19 18:13:04', '2014-11-19 18:13:04'),
('1416420785077', '1416420784472', '1416418137702', '', '', '', '', '', '', '', '1416424201932', '2014-11-19 18:13:04', '2014-11-19 18:13:04'),
('1416420785193', '1416420785001', '1416418137702', '', '', '', '', '', '', '', '1416424201932', '2014-11-19 18:13:04', '2014-11-19 18:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE IF NOT EXISTS `schools` (
  `school_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `order` int(11) NOT NULL COMMENT 'way of ordering  school',
  `name` varchar(255) NOT NULL,
  `type` set('Private','Public') NOT NULL,
  `town` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `level` set('Primary','Secondary','Tertiary') NOT NULL,
  `major` varchar(255) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='academic history of the applicant with link to head of insti';

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`school_id`, `application_id`, `order`, `name`, `type`, `town`, `region`, `country`, `start`, `end`, `level`, `major`, `certificate`, `creator`, `created`, `modified`) VALUES
('1414494487416', '1414428115098', 3, '', '', '', '', '', NULL, NULL, 'Secondary', '', '', '1414404550867', '2014-10-29 10:36:46', '2014-10-29 10:36:46'),
('1414494487729', '1414428115098', 2, 'df', 'Private', 'sd', 'sd', 'Wallis and Futuna Islands', '2014-10-02', '2014-10-02', 'Secondary', 'sd', 'sd', '1414404550867', '2014-10-29 10:36:46', '2014-10-29 10:36:46'),
('1414494487980', '1414428115098', 0, 'st john', 'Private', 'sd', 'sd', 'Saint Lucia', '2014-10-30', '2014-10-22', 'Primary', NULL, '', '1414404550867', '2014-10-29 10:36:46', '2014-10-29 10:36:46'),
('1414494488117', '1414428115098', 5, '', '', '', '', '', NULL, NULL, 'Tertiary', '', '', '1414404550867', '2014-10-29 10:36:46', '2014-10-29 10:36:46'),
('1414494488163', '1414428115098', 1, '', '', '', '', '', NULL, NULL, 'Primary', NULL, '', '1414404550867', '2014-10-29 10:36:46', '2014-10-29 10:36:46'),
('1414494488240', '1414428115098', 4, '', '', '', '', '', NULL, NULL, 'Tertiary', '', '', '1414404550867', '2014-10-29 10:36:46', '2014-10-29 10:36:46'),
('1415785208521', '1414424134786', 5, '', '', '', '', '', NULL, NULL, 'Tertiary', '', '', '1414405980170', '2014-11-12 09:40:08', '2014-11-12 09:40:08'),
('1415785208742', '1414424134786', 2, 'Presbyterian Boys'' Senior High School', 'Public', 'Legon', 'Greater Accra', 'Ghana', '2001-10-01', '2004-05-31', 'Secondary', 'General Arts', 'Senior Secondary School Certificate', '1414405980170', '2014-11-12 09:40:08', '2014-11-12 09:40:08'),
('1415785208830', '1414424134786', 1, '', '', '', '', '', NULL, NULL, 'Primary', NULL, '', '1414405980170', '2014-11-12 09:40:08', '2014-11-12 09:40:08'),
('1415785209029', '1414424134786', 4, '', '', '', '', '', NULL, NULL, 'Tertiary', '', '', '1414405980170', '2014-11-12 09:40:08', '2014-11-12 09:40:08'),
('1415785209080', '1414424134786', 0, 'Morning Star School', 'Private', 'Cantonments', 'Greater Accra', 'Ghana', '1990-01-01', '2001-01-01', 'Primary', NULL, 'Basic Education Certificate', '1414405980170', '2014-11-12 09:40:08', '2014-11-12 09:40:08'),
('1415785209200', '1414424134786', 3, '', '', '', '', '', NULL, NULL, 'Secondary', '', '', '1414405980170', '2014-11-12 09:40:08', '2014-11-12 09:40:08'),
('1416419148454', '1416417330382', 0, 'Happy Times p/s', 'Private', 'kampala', 'Central region', 'Uganda', '2001-02-02', '2007-12-02', 'Primary', NULL, 'PLE', '1416416464432', '2014-11-19 17:45:48', '2014-11-19 17:45:48'),
('1416419148511', '1416417330382', 2, 'Lubiri SS', 'Public', 'kampala', 'central region', 'Uganda', '2012-02-02', '2013-12-02', 'Secondary', 'PEM/CST', 'UACE', '1416416464432', '2014-11-19 17:45:48', '2014-11-19 17:45:48'),
('1416419148697', '1416417330382', 3, 'Mengo SS', 'Public', 'kampala', 'Central region', 'Uganda', '2008-02-02', '2011-12-02', 'Secondary', 'Math,Bio,Chem,His,Phy,Geo,Germ,TD,EE,', 'UCE', '1416416464432', '2014-11-19 17:45:48', '2014-11-19 17:45:48'),
('1416419148743', '1416417330382', 1, '', '', '', '', '', NULL, NULL, 'Primary', NULL, '', '1416416464432', '2014-11-19 17:45:48', '2014-11-19 17:45:48'),
('1416419148843', '1416417330382', 5, '', '', '', '', '', NULL, NULL, 'Tertiary', '', '', '1416416464432', '2014-11-19 17:45:48', '2014-11-19 17:45:48'),
('1416419149116', '1416417330382', 4, '', '', '', '', '', NULL, NULL, 'Tertiary', '', '', '1416416464432', '2014-11-19 17:45:48', '2014-11-19 17:45:48'),
('1416420784472', '1416418137702', 4, '', '', '', '', '', NULL, NULL, 'Tertiary', '', '', '1416424201932', '2014-11-19 18:13:04', '2014-11-19 18:13:04'),
('1416420784784', '1416418137702', 5, '', '', '', '', '', NULL, NULL, 'Tertiary', '', '', '1416424201932', '2014-11-19 18:13:04', '2014-11-19 18:13:04'),
('1416420784969', '1416418137702', 2, 'Wesley Girls'' High School', 'Public', 'Cape Coast', 'Central Region', 'Ghana', '2008-10-10', '2012-05-16', 'Secondary', 'Business', 'West Africa Senior Secondary Certificate Examination', '1416424201932', '2014-11-19 18:13:04', '2014-11-19 18:13:04'),
('1416420785001', '1416418137702', 3, '', '', '', '', '', NULL, NULL, 'Secondary', '', '', '1416424201932', '2014-11-19 18:13:04', '2014-11-19 18:13:04'),
('1416420785067', '1416418137702', 0, 'Sakumono School Complex', 'Public', 'Sakumono', 'Greater Accra', 'Ghana', '2002-09-05', '2008-04-20', 'Primary', NULL, 'Basic Education Certificate Examination', '1416424201932', '2014-11-19 18:13:04', '2014-11-19 18:13:04'),
('1416420785079', '1416418137702', 1, '', '', '', '', '', NULL, NULL, 'Primary', NULL, '', '1416424201932', '2014-11-19 18:13:04', '2014-11-19 18:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE IF NOT EXISTS `seasons` (
  `season_id` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `year` date NOT NULL,
  `round` varchar(255) NOT NULL,
  `open_date` datetime NOT NULL,
  `close_date` datetime NOT NULL,
  `description` text NOT NULL,
  `status` set('NEW','OPEN','CLOSED','DELETED') NOT NULL DEFAULT 'NEW',
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`season_id`, `name`, `year`, `round`, `open_date`, `close_date`, `description`, `status`, `creator`, `created`, `modified`) VALUES
('', 'Opens Admission 2015', '2015-01-05', 'One', '2015-01-05 00:00:00', '2015-03-20 00:00:00', 'This is the first round of the application', 'OPEN', 'Stanley', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('1413463107940', '2019 Admission - TEST', '2018-00-00', 'Round 1', '2014-10-16 00:00:00', '2014-10-31 00:00:00', 'Test admission season for demo purposes only. Open from today(16/10/2014) to the end of October, 2014', 'CLOSED', '1413466814849', '2014-10-16 12:38:27', '2014-10-16 12:38:27'),
('2223390', 'Fall 2016', '2014-12-09', 'One', '2014-12-09 00:00:00', '2015-03-11 00:00:00', 'Admissions for  fall 2016', 'OPEN', 'Kafui', '2014-12-09 00:00:00', '2014-12-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE IF NOT EXISTS `sponsors` (
  `sponsor_id` varchar(120) NOT NULL,
  `admission_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_title` varchar(20) NOT NULL,
  `contact_phone_primary` varchar(20) NOT NULL,
  `contact_phone_secondary` varchar(20) NOT NULL,
  `contact_email_primary` varchar(120) NOT NULL,
  `contact_email_secondary` varchar(120) NOT NULL,
  `duration` varchar(120) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`sponsor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sponsorship information for applicants';

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`sponsor_id`, `admission_id`, `application_id`, `organization`, `contact_name`, `contact_title`, `contact_phone_primary`, `contact_phone_secondary`, `contact_email_primary`, `contact_email_secondary`, `duration`, `amount`, `creator`, `created`, `modified`) VALUES
('1414488761759', '1414488761637', '1414424134786', 'GVV Group', 'Araba Botchway', 'Dr.', '0302 610 330', '', 'abotchway@ashesi.edu.gh', '', '5.0', 5000.00, '1414405980170', '2014-11-12 09:32:16', '2014-11-12 09:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE IF NOT EXISTS `travels` (
  `travel_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `country` varchar(255) NOT NULL,
  `year` date NOT NULL,
  `duration` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`travel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='travel information of applicant';

--
-- Dumping data for table `travels`
--

INSERT INTO `travels` (`travel_id`, `application_id`, `country`, `year`, `duration`, `purpose`, `creator`, `created`, `modified`) VALUES
('1415206598070', '1415182561814', 'Italy', '2012-02-01', 'ONE MONTH', 'EXCURSION', '1415184962726', '2014-11-05 16:56:37', '2014-11-05 16:56:37'),
('1415785442047', '1414424134786', 'Gambia', '2011-01-05', '3 weeks', 'Holiday', '1414405980170', '2014-11-12 09:44:02', '2014-11-12 09:44:02'),
('1416419444275', '1416417330382', 'Kenya', '2009-08-12', '30 days', 'Visit', '1416416464432', '2014-11-19 17:50:43', '2014-11-19 17:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` varchar(120) NOT NULL,
  `first_name` varchar(120) NOT NULL,
  `middle_name` varchar(120) NOT NULL,
  `last_name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `hash` varchar(255) NOT NULL COMMENT 'value used in confirming account',
  `password` varchar(255) NOT NULL,
  `role` set('ADMINISTRATOR','APPLICANT','DEVELOPER','KEYER','OFFICER') NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `status` set('DELETED','DISABLED','ENABLED','') NOT NULL DEFAULT 'ENABLED',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='user account credentials for authentication';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `middle_name`, `last_name`, `email`, `hash`, `password`, `role`, `is_confirmed`, `status`, `created`, `modified`, `last_login`) VALUES
('101', 'Stanley', 'Makafui', 'Anku', 'makstanley@gmail.com', '48hjefig84y4yi', 'mak', 'ADMINISTRATOR', 1, 'ENABLED', '2014-12-02 07:19:45', '2014-12-03 07:19:54', '2014-12-08 07:20:04'),
('102', 'James', 'Mat', 'Targart', 'james@yahoo.com', 'james6767james', 'james', 'ADMINISTRATOR', 1, 'ENABLED', '2014-12-01 07:22:01', '2014-12-03 07:22:08', '2014-12-06 07:22:14'),
('1414404550867', 'Daniel', 'Nii Tettey', 'Botchway', 'daniel.botchway@ashesi.edu.gh', '4d1a5fa1ef4497dbedef4283f40e46a86917c04a', '6ced276f3d103aa3c69e93293ded95821ecfad0e', 'APPLICANT', 1, 'ENABLED', '2014-10-27 08:47:00', '2014-12-04 16:03:24', '2014-12-04 16:03:24'),
('1414405980170', 'Frederick', 'Nii', 'Welbeck', 'fwelbeck@ashesi.edu.gh', '2574d774e930d875460f4b66d34a882c1df7c734', 'dcfc9ce531eb1564e0520a7a88742fe8571c5086', 'APPLICANT', 1, 'ENABLED', '2014-10-27 09:57:31', '2014-11-18 11:22:04', '2014-11-18 11:22:04'),
('1414408457505', 'Zeina', 'Yamoaba', 'Kowalski', 'zeina.kowalski@ashesi.edu.gh', 'bcfa04cb6e8abc17244258ff746ca4100873e611', '529bdb486117553a71807990839b67e6baaf15f1', 'APPLICANT', 1, 'ENABLED', '2014-10-27 09:45:05', '2014-11-20 10:30:55', '2014-11-20 10:30:55'),
('1415374959486', 'Kwame', 'Nandom', 'Nsiah', 'ayawson@gmail.com', 'ac0d46ab815aa76609ac222b9b0c5af8e97314eb', '0c43098549d6bc9faf3fdf81126769a674b84aa6', 'APPLICANT', 1, 'ENABLED', '2014-11-07 15:20:10', '2014-11-07 15:20:10', '0000-00-00 00:00:00'),
('1415711284132', 'Hudson', 'Taylor', 'Lekunze', 'hudsontaylor3b@gmail.com', '29c1d52f0cff56cedde279bb532ffb803d5d29c0', '87c0c4af8913ed5ea677829654b0bc19c54e1511', 'APPLICANT', 1, 'ENABLED', '2014-11-11 11:35:03', '2014-11-11 11:35:03', '0000-00-00 00:00:00'),
('1415879377257', 'Daniel', 'Nii Tettey', 'Botchway', 'botchwaydan@gmail.com', 'b88698dfed91116e12887898d848063f5f969579', '6ced276f3d103aa3c69e93293ded95821ecfad0e', 'DEVELOPER', 0, 'ENABLED', '2014-11-13 10:11:33', '2014-11-18 16:22:20', '2014-11-18 16:22:20'),
('1416424201932', 'Dorcas', 'Afia', 'Amoh-Mensah', 'mensahdorcas98@gmail.com', 'dfba4e3abd112b7a68f307f2125a9c369c9cfee2', '403da42ec2ca4e81d9effc8d988e0eb5f4848174', 'APPLICANT', 1, 'ENABLED', '2014-11-19 17:15:54', '2014-11-19 17:28:33', '2014-11-19 17:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `USERS_TABLE`
--

CREATE TABLE IF NOT EXISTS `USERS_TABLE` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(40) NOT NULL,
  `USERNAME` varchar(60) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `TYPE` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `USERS_TABLE`
--

INSERT INTO `USERS_TABLE` (`ID`, `NAME`, `USERNAME`, `PASSWORD`, `TYPE`) VALUES
(1, '', 'keyer', 'keyer', 'normal_keyer'),
(2, '', 'officer', 'officer', 'normal_officer'),
(3, '', 'admin', 'admin', 'super_admin'),
(4, '', 'developer', 'developer', 'super_developer'),
(5, '', 'ttyy', 'ttyy', '');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE IF NOT EXISTS `works` (
  `work_id` varchar(120) NOT NULL,
  `application_id` varchar(120) NOT NULL,
  `nature` text NOT NULL,
  `employer` varchar(255) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `working_hours` decimal(5,2) NOT NULL,
  `creator` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='work experience of applicant';

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`work_id`, `application_id`, `nature`, `employer`, `start`, `end`, `working_hours`, `creator`, `created`, `modified`) VALUES
('1415206767891', '1415182561814', 'INTERNSHIP', 'ASHESI UNIVERISITY', '2014-11-01', '2014-12-01', 4.00, '1415184962726', '2014-11-05 16:59:27', '2014-11-05 16:59:27'),
('1416419553842', '1416417330382', 'Assistant packaging personale', 'Mr.Meddie', '2013-07-07', '2014-07-03', 12.00, '1416416464432', '2014-11-19 17:52:33', '2014-11-19 17:52:33'),
('1416421639825', '1416418137702', 'Sales Representative', 'Enterprise Life Assurance Company', '2012-07-20', '2012-08-03', 8.00, '1416424201932', '2014-11-19 18:27:18', '2014-11-19 18:27:18');
