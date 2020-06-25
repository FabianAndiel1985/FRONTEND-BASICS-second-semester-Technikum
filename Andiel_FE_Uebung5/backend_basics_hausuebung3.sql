-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 08. Mai 2020 um 11:10
-- Server-Version: 10.3.16-MariaDB
-- PHP-Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `backend_basics_hausuebung3`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_countries` varchar(2) DEFAULT NULL,
  `street` varchar(128) NOT NULL,
  `zip` varchar(8) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `last_change` datetime NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `addresses`
--

INSERT INTO `addresses` (`id`, `id_countries`, `street`, `zip`, `city`, `last_change`, `created`, `disabled`) VALUES
(1, 'AT', 'Teststraße 1', '1010', 'Wien', '0000-00-00 00:00:00', '2016-05-29 18:02:38', 0),
(6, 'AT', 'Teststrasse', '1010', 'Wien', '0000-00-00 00:00:00', '2016-05-29 19:12:56', 0),
(7, 'AT', 'FH Technikum', '1200', 'Wien', '0000-00-00 00:00:00', '2016-05-29 19:22:36', 0),
(8, 'AT', 'Unterringingen 17', '2340', 'Mödling', '0000-00-00 00:00:00', '2016-06-04 17:00:07', 0),
(9, 'AT', 'Zehrensdorferstraße 40', '2340', 'Mödling', '0000-00-00 00:00:00', '2016-06-04 17:55:35', 0),
(10, 'CH', 'Steinmüristraße 5', '8401', 'Winterthur', '0000-00-00 00:00:00', '2016-06-04 17:59:30', 0),
(11, 'AT', 'Dorfstraße 24', '1160', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:00:43', 0),
(12, 'AT', 'Holderweg 19', '5164', 'Berndorf', '0000-00-00 00:00:00', '2016-06-04 18:02:51', 0),
(13, 'AT', 'Gerastraße 103', '1230', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:04:15', 0),
(14, 'AT', 'Buchenweg 46', '4020', 'Linz', '0000-00-00 00:00:00', '2016-06-04 18:05:44', 0),
(15, 'AT', 'Torweg 25', '3011', 'Purkersdorf', '0000-00-00 00:00:00', '2016-06-04 18:06:52', 0),
(16, 'AT', 'Jacobastraße 39', '1040', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:08:00', 0),
(17, 'AT', 'Ringstraße 21', '1010', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:09:09', 0),
(18, 'AT', 'Akazienweg 19b', '3360', 'Amstetten', '0000-00-00 00:00:00', '2016-06-04 18:20:35', 0),
(19, 'AT', 'Otterweg 170', '5020', 'Salzburg', '0000-00-00 00:00:00', '2016-06-04 18:21:31', 0),
(20, 'AT', 'Rainweg 9', '8710', 'Leoben', '0000-00-00 00:00:00', '2016-06-04 18:23:15', 0),
(21, 'AT', 'Göttingerstraße 112', '1220', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:24:56', 0),
(22, 'DE', 'Alexanderstraße 2', '60306', 'Frankfurt am Main', '0000-00-00 00:00:00', '2016-06-04 18:26:16', 0),
(23, 'AT', 'Am Spielplatz 11', '1030', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:27:08', 0),
(24, 'AT', 'Boveristraße 25', '1140', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:28:10', 0),
(25, 'AT', 'Tulpenstraße 22-24', '9020', 'Klagenfurt', '0000-00-00 00:00:00', '2016-06-04 18:29:05', 0),
(26, 'AT', 'Mittelstraße 1a', '1010', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:29:48', 0),
(27, 'AT', 'Robert-Koch-Straße 2/2', '8010', 'Graz', '0000-00-00 00:00:00', '2016-06-04 18:31:00', 0),
(28, 'AT', 'Boznerstraße 45', '9500', 'Villach', '0000-00-00 00:00:00', '2016-06-04 18:31:48', 0),
(29, 'AT', 'Schoberweg 2', '8010', 'Graz', '0000-00-00 00:00:00', '2016-06-04 18:32:41', 0),
(30, 'DE', 'Stiftstraße 44', '94032', 'Passau', '0000-00-00 00:00:00', '2016-06-04 18:33:37', 0),
(31, 'AT', 'Töpferweg 26', '1170', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:38:02', 0),
(32, 'AT', 'Zedernweg 10', '1020', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:38:49', 0),
(33, 'AT', 'Dürerstraße 31', '6561', 'Ischgl', '0000-00-00 00:00:00', '2016-06-04 18:39:29', 0),
(34, 'AT', 'Hauptstraße 54', '6020', 'Innsbruck', '0000-00-00 00:00:00', '2016-06-04 18:40:16', 0),
(35, 'AT', 'Gutenbrunnerstraße 9a', '1140', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:40:58', 0),
(36, 'CH', 'Hans Georg-Nägelistraße 13', '8620', 'Wetzikon', '0000-00-00 00:00:00', '2016-06-04 18:42:08', 0),
(37, 'AT', 'Am Kanal 17', '9900', 'Lienz', '0000-00-00 00:00:00', '2016-06-04 18:43:09', 0),
(38, 'AT', 'Heidenheimerstraße 6/20', '1030', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:44:00', 0),
(39, 'AT', 'Thaliastraße 67/10/1', '1060', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:44:41', 0),
(40, 'AT', 'Ahornweg 44', '1230', 'Wien', '0000-00-00 00:00:00', '2016-06-04 18:45:28', 0),
(41, 'DE', 'Pilzgasse 5c', '93047', 'Regensburg', '0000-00-00 00:00:00', '2016-06-04 18:46:19', 0),
(42, 'DE', 'Steinbruchstraße 111', '89160', 'Ulm', '0000-00-00 00:00:00', '2016-06-04 18:46:55', 0),
(43, 'AT', 'teststreet', '1111', 'vienna', '0000-00-00 00:00:00', '2016-06-12 20:28:54', 0),
(44, 'AT', 'teststreet', '1111', 'vienna', '0000-00-00 00:00:00', '2016-06-12 20:29:33', 0),
(45, 'AT', 'dkdkd', '1220', 'vienna', '0000-00-00 00:00:00', '2016-06-15 19:45:09', 0),
(46, 'AT', 'Dunklergasse 21/19', '1120 Wie', 'Vienna', '0000-00-00 00:00:00', '2016-06-18 10:04:44', 0),
(47, 'AT', 'Siemenstraße 38', '1210', 'Wien', '0000-00-00 00:00:00', '2016-05-29 18:05:39', 0),
(48, 'AT', 'Schweidlgasse 82', '1020', 'Wien', '0000-00-00 00:00:00', '2016-06-01 08:08:32', 0),
(49, 'IT', 'Giro Strada  123', '39012', 'Meran', '0000-00-00 00:00:00', '2016-05-15 13:45:35', 0),
(50, 'FR', 'Champs-Elysees 12', '75001', 'Paris', '0000-00-00 00:00:00', '2016-06-15 10:34:19', 0),
(51, 'FR', 'Place de Napoleon 23', '75080', 'Paris', '0000-00-00 00:00:00', '2016-05-15 10:48:39', 0),
(52, 'GB', 'Tower of London 1', 'SW1A 2AB', 'London', '0000-00-00 00:00:00', '2016-06-19 10:23:35', 0),
(53, 'DE', 'Bayernweg 1', '81247', 'München', '0000-00-00 00:00:00', '2016-04-29 07:19:11', 0),
(54, 'DE', 'Commerz im Weg 1', '81247', 'München', '0000-00-00 00:00:00', '2016-05-15 06:03:32', 0),
(55, 'AT', 'Klosterneuburger Straße 12', '1190', 'Wien', '0000-00-00 00:00:00', '2016-05-01 06:21:57', 0),
(56, 'FR', 'Stade de France 18', '75001', 'Paris', '0000-00-00 00:00:00', '2016-05-23 17:42:21', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addresses_has_countries`
--

CREATE TABLE `addresses_has_countries` (
  `addresses_id` int(10) UNSIGNED NOT NULL,
  `countries_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `countries`
--

CREATE TABLE `countries` (
  `id` varchar(2) NOT NULL,
  `iso_name` varchar(64) NOT NULL,
  `german_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `countries`
--

INSERT INTO `countries` (`id`, `iso_name`, `german_name`) VALUES
('AD', 'Andorra', 'Andorra'),
('AE', 'United Arab Emirates', 'Vereinigte Arabische Emeriate'),
('AF', 'Afghanistan', 'Afghanistan'),
('AG', 'Antigua and Barbuda', 'Antigua und Barbuda'),
('AI', 'Anguilla', 'Anguilla'),
('AL', 'Albania', 'Albanien'),
('AM', 'Armenia', 'Armenien'),
('AN', 'Netherlands Antilles', 'Niederländische Antillen'),
('AO', 'Angola', 'Angola'),
('AQ', 'Antarctica', 'Antarktis'),
('AR', 'Argentina', 'Argentinien'),
('AS', 'American Samoa', 'Amerikanisch Samoa'),
('AT', 'Austria', 'Österreich'),
('AU', 'Australia', 'Australien'),
('AW', 'Aruba', 'Aruba'),
('AZ', 'Azerbaijan', 'Aserbeidschan'),
('BA', 'Bosnia and Herzegovina', 'Bosnien und Herzegovina'),
('BB', 'Barbados', 'Barbados'),
('BD', 'Bangladesh', 'Bangladesh'),
('BE', 'Belgium', 'Belgium'),
('BF', 'Burkina Faso', 'Burkina Faso'),
('BG', 'Bulgaria', 'Bulgarien'),
('BH', 'Bahrain', 'Bahrain'),
('BI', 'Burundi', 'Burundi'),
('BJ', 'Benin', 'Benin'),
('BM', 'Bermuda', 'Bermudas'),
('BN', 'Brunei Darussalam', 'Brunei'),
('BO', 'Bolivia', 'Bolivien'),
('BR', 'Brazil', 'Brasilien'),
('BS', 'Bahamas', 'Bahamas'),
('BT', 'Bhutan', 'Bhutan'),
('BV', 'Bouvet Island', 'Bouvet Insel'),
('BW', 'Botswana', 'Botswana'),
('BY', 'Belarus', 'Belarus'),
('BZ', 'Belize', 'Belize'),
('CA', 'Canada', 'Kanada'),
('CC', 'Cocos (Keeling) Islands', 'Kokosinseln'),
('CD', 'Congo, The Democratic Republic of the', 'Kongo, Demokratische Republik'),
('CF', 'Central African Republic', 'Zentralafrikanische Rebublik'),
('CG', 'Congo', 'Kongo'),
('CH', 'Switzerland', 'Schweiz'),
('CK', 'Cook Islands', 'Cookinseln'),
('CL', 'Chile', 'Chile'),
('CM', 'Cameroon', 'Kamerun'),
('CN', 'China', 'China'),
('CO', 'Colombia', 'Kolumbien'),
('CR', 'Costa Rica', 'Costa Rica'),
('CU', 'Cuba', 'Kuba'),
('CV', 'Cape Verde', 'Kap Verde'),
('CX', 'Christmas Island', 'Weihnachtsinseln'),
('CY', 'Cyprus', 'Zypern'),
('CZ', 'Czech Republic', 'Tschechiche Republik'),
('DE', 'Germany', 'Deutschland'),
('DJ', 'Djibouti', 'Dschibuti'),
('DK', 'Denmark', 'Dänemark'),
('DM', 'Dominica', 'Dominika'),
('DO', 'Dominican Republic', 'Dominikanische Republik'),
('DZ', 'Algeria', 'Algerien'),
('EC', 'Ecuador', 'Äquador'),
('EE', 'Estonia', 'Estland'),
('EG', 'Egypt', 'Ägypten'),
('EH', 'Western Sahara', 'West Sahara'),
('ER', 'Eritrea', 'Eritrea'),
('ES', 'Spain', 'Spanien'),
('ET', 'Ethiopia', 'Äthiopien'),
('FI', 'Finland', 'Finnland'),
('FJ', 'Fiji', 'Fiji'),
('FK', 'Falkland Islands (Malvinas)', 'Falklandinseln'),
('FM', 'Micronesia, Federated States of', 'Micronesien'),
('FO', 'Faroe Islands', 'Faröer Inseln'),
('FR', 'France', 'Frankreich'),
('GA', 'Gabon', 'Gabun'),
('GB', 'United Kingdom', 'Grossbritanien'),
('GD', 'Grenada', 'Grenada'),
('GE', 'Georgia', 'Georgien'),
('GF', 'French Guiana', 'Französisch Guiana'),
('GH', 'Ghana', 'Ghana'),
('GI', 'Gibraltar', 'Gibraltar'),
('GL', 'Greenland', 'Grönland'),
('GM', 'Gambia', 'Gambia'),
('GN', 'Guinea', 'Guinea'),
('GP', 'Guadeloupe', 'Guadeloupe'),
('GQ', 'Equatorial Guinea', 'Äquatorialguinea'),
('GR', 'Greece', 'Griechenland'),
('GS', 'South Georgia and the South Sandwich Islands', 'Süd Georgien und die südlichen Sandwichinseln'),
('GT', 'Guatemala', 'Guatemala'),
('GU', 'Guam', 'Guam'),
('GW', 'Guinea - Bissau', 'Guinea - Bissau'),
('GY', 'Guyana', 'Guyana'),
('HK', 'Hong Kong', 'Hong Kong'),
('HM', 'Heard Island and Mcdonald Islands', 'Heardinsel und McDonaldsinseln'),
('HN', 'Honduras', 'Honduras'),
('HR', 'Croatia', 'Kroatien'),
('HT', 'Haiti', 'Haiti'),
('HU', 'Hungary', 'Ungarn'),
('ID', 'Indonesia', 'Indonesien'),
('IE', 'Ireland', 'Irland'),
('IL', 'Israel', 'Israel'),
('IN', 'India', 'Indien'),
('IO', 'British Indian Ocean Territory', 'Britisches Territorium im indischen Ozean'),
('IQ', 'Iraq', 'Irak'),
('IR', 'Iran, Islamic Republic of', 'Iran'),
('IS', 'Iceland', 'Island'),
('IT', 'Italy', 'Italien'),
('JM', 'Jamaica', 'Jamaika'),
('JO', 'Jordan', 'Jordanien'),
('JP', 'Japan', 'Japan'),
('KE', 'Kenya', 'Kenia'),
('KG', 'Kyrgyzstan', 'Kirgistan'),
('KH', 'Cambodia', 'Kambodscha'),
('KI', 'Kiribati', 'Kiribati'),
('KM', 'Comoros', 'Komoren'),
('KN', 'Saint Kitts and Nevis', 'Sankt Kitts und Nevis'),
('KP', 'Korea, Democratic Peoples of', 'Korea, Demokartische Volksrepublik (Nord)'),
('KR', 'Korea, Republic of', 'Korea, Republic (Süd)'),
('KW', 'Kuwait', 'Kuwait'),
('KY', 'Cayman Islands', 'Kaimaninseln'),
('KZ', 'Kazakstan', 'Kasachstan'),
('LB', 'Lebanon', 'Libanon'),
('LC', 'Saint Lucia', 'Sankt Lucia'),
('LI', 'Liechtenstein', 'Liechtenstein'),
('LK', 'Sri Lanka', 'Sri Lanka'),
('LR', 'Liberia', 'Liberien'),
('LS', 'Lesotho', 'Lesotho'),
('LT', 'Lithuania', 'Litauen'),
('LU', 'Luxembourg', 'Luxemburg'),
('LV', 'Latvia', 'Lettland'),
('LY', 'Libyan Arab Jamahiriya', 'Lybien'),
('MA', 'Morocco', 'Marokko'),
('MC', 'Monaco', 'Monaco'),
('MD', 'Moldova, Republic of', 'Moldavien'),
('MG', 'Madagascar', 'Madagaskar'),
('MH', 'Marshall Islands', 'Marshallinseln'),
('MK', 'Macedonia', 'Macedonien'),
('ML', 'Mali', 'Mali'),
('MM', 'Myanmar', 'Burma'),
('MN', 'Mongolia', 'Mongolei'),
('MO', 'Macau', 'Macau'),
('MP', 'Northern Mariana Islands', 'Nördliche Marianinseln'),
('MQ', 'Martinique', 'Martinique'),
('MR', 'Mauritania', 'Mauretanien'),
('MS', 'Montserrat', 'Montserrat'),
('MT', 'Malta', 'Malta'),
('MU', 'Mauritius', 'Mauritius'),
('MV', 'Maldives', 'Malediven'),
('MW', 'Malawi', 'Malawi'),
('MX', 'Mexico', 'Mexico'),
('MY', 'Malaysia', 'Malaysien'),
('MZ', 'Mozambique', 'Mosambik'),
('NA', 'Namibia', 'Namibia'),
('NC', 'New Caledonia', 'Neu-Kaledonien'),
('NE', 'Niger', 'Niger'),
('NF', 'Norfolk Island', 'Norfolkinseln'),
('NG', 'Nigeria', 'Nigeria'),
('NI', 'Nicaragua', 'Nicaragua'),
('NL', 'Netherlands', 'Holland'),
('NO', 'Norway', 'Norwegen'),
('NP', 'Nepal', 'Nepal'),
('NR', 'Nauru', 'Nauru'),
('NU', 'Niue', 'Niue'),
('NZ', 'New Zealand', 'Neuseeland'),
('OM', 'Oman', 'Oman'),
('PA', 'Panama', 'Panama'),
('PE', 'Peru', 'Peru'),
('PF', 'French Polynesia', 'Französisch Polynesien'),
('PG', 'Papua New Guinea', 'Papua Neuguinea'),
('PH', 'Philippines', 'Philippinen'),
('PK', 'Pakistan', 'Pakistan'),
('PL', 'Poland', 'Polen'),
('PM', 'Saint Pierre and Miquelon', 'Sankt Pierre und Miquelon'),
('PN', 'Pitcairn', 'Pitcairninseln'),
('PR', 'Puerto Rico', 'Puerto Rico'),
('PS', 'Palestinian Territory, occupied', 'Palästina'),
('PT', 'Portugal', 'Portugal'),
('PW', 'Palau', 'Palau'),
('PY', 'Paraguay', 'Paraquay'),
('QA', 'Qatar', 'Katar'),
('RE', 'Reunion', 'Reunion'),
('RO', 'Romania', 'Rumänien'),
('RU', 'Russian Federation', 'Russland'),
('RW', 'Rwanda', 'Ruanda'),
('SA', 'Saudi Arabia', 'Saudi Arabien'),
('SB', 'Solomon Islands', 'Salomoninseln'),
('SC', 'Seychelles', 'Seychellen'),
('SD', 'Sudan', 'Sudan'),
('SE', 'Sweden', 'Schweden'),
('SG', 'Singapore', 'Singapur'),
('SH', 'Saint Helena', 'Sankt Helena'),
('SI', 'Slovenia', 'Slowenien'),
('SJ', 'Svalbard and Jan Mayen', 'Svalbard und Jan Mayeninseln'),
('SK', 'Slovakia', 'Slowakai'),
('SL', 'Sierra Leone', 'Sierra Leone'),
('SM', 'San Marino', 'San Marino'),
('SN', 'Senegal', 'Senegal'),
('SO', 'Somalia', 'Somalia'),
('SR', 'Suriname', 'Surinam'),
('ST', 'Sao Tome And Principe', 'Sao Tome und Principe'),
('SV', 'El Salvador', 'El Salvador'),
('SY', 'Syrian Arab Republic', 'Syrien'),
('SZ', 'Swaziland', 'Swasiland'),
('TC', 'Turks and Caicos Islands', 'Turks und Caicosinseln'),
('TD', 'Chad', 'Tschad'),
('TF', 'French Southern Territories', 'Französische südliche Gebiete'),
('TG', 'Togo', 'Togo'),
('TH', 'Thailand', 'Thailand'),
('TJ', 'Tajikistan', 'Tadschikistan'),
('TK', 'Tokelau', 'Tokelau'),
('TM', 'Turkmenistan', 'Turkmenistan'),
('TN', 'Tunisia', 'Tunesien'),
('TO', 'Tonga', 'Tonga'),
('TP', 'East Timor', 'Ost Timor'),
('TR', 'Turkey', 'Türkei'),
('TT', 'Trinidad And Tobago', 'Trinidad und Tobago'),
('TV', 'Tuvalu', 'Tavalu'),
('TW', 'Taiwan, Province of China', 'Taiwan'),
('TZ', 'Tanzania, United Republic of', 'Tansania'),
('UA', 'Ukraine', 'Ukraine'),
('UG', 'Uganda', 'Uganda'),
('UM', 'United States Minor outlying Islands', 'Vereinigte Statten, umliegende Inseln'),
('US', 'United States', 'Vereinigte Staaten von Amerika'),
('UY', 'Uruguay', 'Uruguay'),
('UZ', 'Uzbekistan', 'Usbekistan'),
('VA', 'Holy See (Vatican City State)', 'Vatican'),
('VC', 'Saint Vincent and the Grenadines', 'Sankt Vincent und die Granadines'),
('VE', 'Venezuela', 'Venezuela'),
('VG', 'Virgin Islands, British', 'Jungfraueninseln, British'),
('VI', 'Virgin Islands, U.S.', 'Jungfraueninseln, Amerikanisch'),
('VN', 'Viet Nam', 'Vietnam'),
('VU', 'Vanuatu', 'Vanuatu'),
('WF', 'Wallis And Futuna', 'Wallis und Futuna'),
('WS', 'Samoa', 'Samoa'),
('YE', 'Yemen', 'Jemen'),
('YT', 'Mayotte', 'Mayotte'),
('YU', 'Yugoslavia', 'Jugoslawien'),
('ZA', 'South Africa', 'Südafrika'),
('ZM', 'Zambia', 'Sambia'),
('ZW', 'Zimbabwe', 'Simbabwe');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `merchants`
--

CREATE TABLE `merchants` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_addresses` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `bank_account` varchar(255) NOT NULL,
  `iban` varchar(21) NOT NULL,
  `bic` varchar(13) NOT NULL,
  `comment` text NOT NULL,
  `last_change` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `disabled` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `merchants`
--

INSERT INTO `merchants` (`id`, `id_addresses`, `name`, `bank_account`, `iban`, `bic`, `comment`, `last_change`, `created_at`, `disabled`) VALUES
(1, 47, 'Loreal', 'Bank Austria', 'AT30 2027 9999 0011 1', 'SPZWAT87XXX', '', '0000-00-00 00:00:00', '2016-05-29 18:05:39', '0'),
(2, 48, 'Vichy', 'Bank Austria', 'AT30 3099 8888 1234 1', 'SPZWAT33XXX', '', '0000-00-00 00:00:00', '2016-06-01 08:08:32', '0'),
(3, 49, 'Olaz', 'Hypo Alpe Adria', 'IT70 0815 3311 1111 9', 'SPIWAT23XXX', '', '0000-00-00 00:00:00', '2016-05-15 13:45:35', '0'),
(4, 50, 'Olbier Paris', 'Paris National', 'FR21 4519 1379 3298 1', 'SFRWAT15XXX', '', '0000-00-00 00:00:00', '2016-06-15 10:34:19', '0'),
(5, 51, 'Chanel', 'Bank de France', 'FR35 3389 1287 8234 1', 'SPFRAT76XXX', '', '0000-00-00 00:00:00', '2016-05-15 10:48:39', '0'),
(6, 52, 'Johnson & Johnson', 'Bank of London', 'GB33 4242 0815 1239 2', 'SPGBAR34XXX', '', '0000-00-00 00:00:00', '2016-06-19 10:23:35', '0'),
(7, 53, 'Kao Germany', 'Deutsche Bank', 'DE56 9999 2027 7652 1', 'SPDEWT66XXX', '', '0000-00-00 00:00:00', '2016-04-29 07:19:11', '0'),
(8, 54, 'Nivea', 'Commerzbank', 'DE30 3482 7365 0011 7', 'SPZDET61XXX', '', '0000-00-00 00:00:00', '2016-05-15 06:03:32', '0'),
(9, 55, 'Unilever', 'Erste Bank', 'AT10 2247 1982 0815 3', 'SPZWAT33XXX', '', '0000-00-00 00:00:00', '2016-05-01 06:21:57', '0'),
(10, 56, 'Procter & Gamble', 'Bank de France', 'FR35 3721 8712 1012 1', 'SPZFRT33XXX', '', '0000-00-00 00:00:00', '2016-05-23 17:42:21', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_merchants` int(10) UNSIGNED NOT NULL,
  `id_product_types` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `intern_article_code` varchar(32) NOT NULL,
  `merchant_article_code` varchar(128) NOT NULL,
  `base_unit` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `prime_cost` float NOT NULL,
  `price_of_sale` float NOT NULL,
  `packing` float NOT NULL,
  `last_change` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `disabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`id`, `id_merchants`, `id_product_types`, `name`, `intern_article_code`, `merchant_article_code`, `base_unit`, `description`, `prime_cost`, `price_of_sale`, `packing`, `last_change`, `created_at`, `disabled`) VALUES
(1, 1, 1, 'Daycream', 'vw01', '3', '50;ml', 'Your skin-s beauty depends mainly on the health of the skin cells. This day cream by Vivian Weiss provides valuable moisture to dry skin using the finest ingredients, such as jojoba oil and aloe vera. Extracts of camomile and calendula work simultaneously to calm skin irritations. In order to maximise the natural effectiveness of this day cream, we recommend using Vivian Weiss cleansing gel for initial cleansing.\r\nInstructions for use: Apply in the morning to cleansed skin on the face and neck and massage gently. This cream can also be used as a light night cream.', 9.9, 49.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(2, 1, 2, 'Nightcream', 'vw02', '4', '50;ml', 'Your skin-s beauty depends mainly on the health of the skin cells. This night cream by Vivian Weiss provides valuable moisture to dry skin using the finest ingredients, such as jojoba oil and aloe vera. Extracts of camomile and calendula work simultaneously to calm skin irritations. In order to maximise the natural effectiveness of this night cream, we recommend using Vivian Weiss cleansing gel for initial cleansing.\r\nInstructions for use: Apply in the evening to cleansed skin on the face and neck and massage gently. In dry climates, especially in winter, this night cream can also be used as a day cream.\r\nIngredients: Jojoba oil, calendula, camomile, vitamin E, aloe vera', 9.9, 49.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(3, 1, 3, 'Bodylotion', 'vw03', '7', '200;ml', 'Natural and gentle care with this body Lotion by Vivian Weiss with the finest jojoba oil blended with selected aloe vera extracts. Enjoy this gift of nature.\r\nIngredients: Jojoba oil, shea butter, aloe vera', 3.9, 19.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(4, 1, 4, 'Shampoo', 'vw04', '93', '125;ml', 'The mild shampoo from Vivian Weiss contains a specially-selected combination of valuable, natural raw materials, which clean the hair and the scalp gently and thoroughly, without drying them out. Aloe Vera & Vitamin E indulge the hair and scalp and give a fine, natural moisture. The hair is strengthened and is given a silky, shimmering sheen.\r\nApplication: Suitable for daily hair care.', 2.4, 19.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(5, 2, 5, 'For Lips', 'ab01', '823', '5;g', 'Keeps the lips smooth and supple. Contains oils and waxes derived from plants. Without preservatives. ', 0, 7.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(6, 2, 1, 'ZZ SENSITIVE - Protective Day Cream', 'ab02', '867', '50;ml', 'Protective. Soothing. Relaxing.\r\nFor sensitive, younger skin.\r\nA light texture for gentle care. Strengthens the skin-s protective barrier. Golden orchid makes the skin feel soothed.\r\nEfficacy and skin-compatibility scientifically confirmed. 100% free of preservatives, fragrances and synthetic colorings. Vegetarian.', 3.8, 27.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(7, 2, 2, 'ZZ SENSITIVE - Fortifying Night Cream', 'ab03', '868', '50;ml', 'Caring. Soothing. Fortifying.\r\nFor sensitive, younger skin.\r\nThe prebiotic and probiotic complex brings the skin flora back into balance. Golden orchid helps to regulate the skin-s natural pH value and makes the skin feel soothed.\r\nEfficacy and skin-compatibility scientifically confirmed. 100% free of preservatives, fragrances and synthetic colorings. Vegetarian. ', 4.3, 28.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(8, 2, 3, 'BODY lind - Body Lotion', 'ab04', '831', '200;ml', 'With 24h moisturizing effect\r\nFor normal skin\r\nA delicately fragrant body lotion, containing superior fig extract, that supplies intensive and long-lasting moisture while improving the moisture levels in the skin over the long term. The fresh texture is absorbed rapidly and leaves the skin feeling very pleasant. Precious oil from the camellia strengthens the skin-s barrier and guards against moisture loss. Valuable oils, such as macadamia nut oil and sesame oil, provide lasting care to the skin.', 5.6, 19.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(9, 2, 6, 'Pura Soft Q10 Eye Area Care', 'ab05', '635', '15;ml', 'Protection and care for a beautiful eye area. Coenzyme Q10 and Vitamin A maintain the firmness of the skin and intensively protect it against premature wrinkle formation. Without fragrance and color. Recommended for wearers of contact lenses.', 3.4, 17.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(10, 2, 4, 'SEIDE NATURAL HAIR CARE - Moisturizing shampoo', 'ab06', '791', '200;ml', 'For dry hair\r\nMoisturizing cleansing for visibly increasing shine and freshness in dry hair.\r\nThe Natural Care Complex marries the firming effect of maple syrup with the strengthening properties of Aquarich', 1, 9.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(11, 2, 8, 'SEIDE NATURAL HAIR CARE -  Intensive conditioner', 'ab07', '794', '125;ml', 'For all hair types\r\nRegenerating hair care that strengthens the hair-s powers of resistance. The hair becomes soft and smooth and is easier to comb.\r\nThe Natural Oil Complex contains pracaxi oil to make your hair softer, shinier and easier to comb. Almond oil smooths the surface of the hair, without making it heavy, and soothes the scalp.\r\nFree of sulfates, silicones and PEGs', 2.6, 9.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(12, 2, 8, 'SEIDE NATURAL HAIR CARE - Spray-on, leave-in care', 'ab08', '796', '100;ml', 'For all hair types\r\nMoisturizing care that leaves your hair looking radiant.\r\nThe Natural Oil Complex contains pracaxi oil to make your hair softer, shinier and easier to comb. Almond oil smooths the surface of the hair, without making it heavy, and soothes the scalp.\r\nFree of sulfates, silicones and PEGs', 2.6, 9.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(13, 1, 9, 'Showergel', 'vw05', '49', '200;ml', 'A natural, gentle cleansing shower gel from Vivian Weiss with selected aloe vera extracts in a blend of valuable natural resources. Suitable for daily use.\r\nIngredients: Aloe vera', 8, 19.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(14, 2, 6, 'AQUANATURE - Revitalizing eye pads with an instant effect', 'ab09', '820', '12;Stk', 'These cooling eye pads with an instant effect soothe the sensitive skin in the eye zone. After a short time, wrinkles and lines look smoothed. With superior algae extract and an innovative botanical hyaluronic acid, the effective eye pads supply tired skin with specific moisture so that the delicate area under the eyes looks instantly revitalized, fresh and alive. Use the pads whenever the sensitive skin under your eyes shows signs of stress: after long days, short nights or intensive exposure to the sun.\r\nDermatologically and ophthalmologically tested.', 5, 24.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(15, 2, 9, 'BODY lind - Shower Balm', 'ab10', '830', '200;ml', 'For all skin types\r\nA very mild and refreshing shower balm for daily use. Superior fig extract and precious oil from the camellia, together with extracts of betaine and aloe vera, regulate moisture. The shower balm protects the skin against drying out even if you shower very frequently. A fresh feeling on your skin and a delicate fragrance complete the shower experience.', 3.2, 9.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(16, 2, 10, 'ANTI-AGING REVITALIZER - Intensive concentrate for demanding skin', 'ab11', '875', '15;ml', 'Intensive concentrate for demanding skin\r\nFirming. Regenerating. Revitalizing.\r\nSzechuan pepper helps to relax the facial features. An oil obtained from the crystal droplets of the Greek mastic pistacia lentiscus stimulates the skin-s youth gene. The synthesis of proteins responsible for making the skin look firm and youthful, is activated. Lines and wrinkles are reduced.\r\nHighly concentrated ingredients already achieve visible care results after only a short period of use.\r\nANTI-AGING REVITALIZER is your Beauty Shot for more youthful and firmer facial contours.\r\nEfficacy and skin-compatibility scientifically confirmed. Free of mineral oil derivatives. Vegan.', 10, 44, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(17, 2, 10, 'system absolute - Anti-Aging Day Cream', 'ab12', '847', '50;ml', 'Anti-aging day cream with a rich texture\r\nThis effective anti-aging day cream, containing a special algae extract embedded in a 3-D matrix, activates the production of collagen and elastin through sequential release of natural care ingredients. Lightinduced premature skin aging is slowed down, and existing lines and wrinkles are effectively reduced. Hyaluronic acid hydrates the skin intensively and gives it an instantly fresher and smoothed appearance. ', 9.4, 59.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(18, 2, 10, 'system absolute - Anti-Aging Beauty Fluid', 'ab13', '842', '50;ml', 'The moisturizing anti-aging fluid for a more vibrant and youthful radiance. A special algae extract, embedded in a 3-D matrix, activates the production of collagen and elastin through sequential release of natural care ingredients. In addition, an active ingredient from buckbean supports the formation of new collagen fibers and assists in firming the contours. Light-induced premature skin aging is slowed down, and existing lines and wrinkles are effectively reduced. Red alga extract stimulates production of the skin-s natural hyaluronic acid.', 7.5, 43.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(19, 2, 10, 'NatuRoyale - Biolifting Day Active', 'ab14', '811', '50;ml', 'The combination of innovative natural ingredients with know-how from state-of-the-art biological sciences has resulted in the remarkable effect of NatuRoyale Biolifting Day Active. The Biolifting complex, containing white truffle, supplies the skin with intensive moisture, so preventing the formation of wrinkles and fine lines. A plant extract from paracress strengthens the collagen network and improves skin firmness, ensuring a rapidly visible and, with regular use, long-term reduction in wrinkle depth. Free radicals are also neutralized. The result: The skin looks fresher, smoother and firmer in just a short time, and is given a more youthful radiance. ', 20, 94, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(20, 2, 10, 'NatuRoyale Biolifting Night - Repair', 'ab15', '812', '50;ml', 'Highly effective anti-aging night care for cell renewal in harmony with the human biorhythm. The exclusive Biolifting complex, containing white truffle, vitalizes the skin, increases the production of elastin and assists skin regeneration during the night. Tone is restored to the skin, giving it a more youthful radiance. An active extract from the lupine stimulates the production of collagen, so assisting the unique effect of NatuRoyale Biolifting Night Repair. The result: The skin looks firmer, smoother and more supple overnight - and feels younger. ', 20, 98, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(21, 2, 10, 'NatuRoyale - Biolifting Eye And Lip Contour', 'ab16', '816', '15;ml', 'Pampering and, at the same time, invigorating anti-aging care for the stressed skin around the eyes and the mouth. The exclusive Biolifting complex, containing white truffle, activates the skin-s natural regeneration processes and makes signs of aging in the eye and mouth areas look less severe. Wrinkles on the upper lip, as well as puffiness and fine lines around the eyes, are reduced. The natural active ingredient in Szechuan pepper helps the stressed skin to find natural balance. For firm and supple skin around the eyes. Rich in moisturizers and energizers, this care leaves an invisible film on the skin that revitalizes and protects. The result: The entire eye and mouth areas appear fresher, smoother, more relaxed and visibly revitalized. For more youthful-looking skin around the eyes.', 10.2, 59, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(22, 2, 10, 'NatuRoyale - Biolifting Lifting Serum', 'ab17', '813', '50;ml', 'This naturally effective lifting serum provides an instant kick of freshness that you can feel. The Biolifting complex, containing white truffle, supplies the skin with moisture, thus preventing the formation of new wrinkles and fine lines, and strengthening the skin-s elasticity. An extract from the sand lily reduces the production of melanin and, with the power of nature, makes existing pigmentation marks look less severe, evening the complexion. The result: The skin is much smoother and, with regular use of the serum, has a more even and radiant appearance. It looks tauter, smoother and more supple. ', 17, 78, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(23, 3, 1, 'Mega-Mushroom Skin Relief - Soothing Face Cream', 'dw01', '31163', '50;ml', 'This remarkable hydrating cream instantly calms skin. It\'s formulated with Dr. Weil\'s signature Mushroom blend. Visibly reduces redness and sensitivity. Great for sensitive and reactive skin.', 10, 75, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(24, 3, 10, 'Plantscription - Anti-aging Power Serum', 'dw02', '31462', '50;ml', 'This power serum helps unlock a new path to visible wrinkle reduction. In just 2 weeks, this powerful age-fighting serum helps visibly improve lines and wrinkles. With continued use, it helps lift and firm to reveal a more youthful appearance.\r\nOrigins went around the world to power up our most potent anti-ager. It-s now formulated with a total of 20 targeted anti-aging plant extracts including Anogeissus from Ghana, Bamboo and Pea Extract from Australia, Crithmum from France and Commiphora from India to name a few. And we used them to create our newest anti-aging cocktail. Line-reducing cocktail helps rebuild a supportive network. Give skin resilient bounce to act like the box springs of a mattress. New plumping cocktails helps plump upper skin layers. Create a less wrinkled appearance at skin surface. Boost skin density to act like the pillow top of a mattress.', 0, 83, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(25, 3, 10, 'Plantscription - Anti-aging Power Eye Cream', 'dw03', '34350', '15;ml', 'See fewer lines in just 2 weeks. We powered up our most potent anti-aging formula with legendary eye experts Chamomile and Algae. Now pumped up for fragile eye skin, this highly-hydrating cream absorbs instantly to help visibly reduce lines and wrinkles in just 2 weeks. With continued use, you-ll see sagging, crepey lids and crow-s feet appear to disappear.', 0, 54, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(26, 3, 2, 'Night Health - Bedtime Face Cream', 'dw04', '11872', '50;ml', 'This rich, skin-rebuilding and recovery complex with Buckbean and St. Paul\'s Wort Extracts helps release tense-looking skin and visible lines while you sleep. Plus, Dr. Weil\'s proven, soothing blend of 100% natural Chamomile, Lavender and Mandarin essential oils soothes you into a restful slumber. Skin awakens refreshed, revitalized and radiant.', 0, 75, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(27, 3, 6, 'Mega-Mushroom Skin Relief - Eye Serum', 'dw05', '31161', '15;ml', 'This lightweight, moisturizing eye serum calms the sensitive eye area. It features Dr. Weil-s signature Mega-Mushroom blend plus Ginger, Turmeric and Holy Basil. Quells over-reactive skin and reduces the appearance of under eye puffiness while Yeast Extract helps visibly diminish dark circles.', 0, 54, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(28, 3, 5, 'Conditioning Lip Balm with Turmeric', 'dw06', '11693', '4;g', 'This highly emollient lip balm with Turmeric, Cocoa Butter, Jojoba, Sunflower and Sesame Seed Oils, Muru Muru and Candillila seriously helps heal dryness and relieve roughness. Rapidly restores softness and smoothness to overly parched lips.', 0, 21, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(29, 3, 5, 'Lip Remedy - Soothing Lip Saver', 'dw07', '12971', '15;ml', 'A savior for chapped lips. Menthol and Camphor soothe, comfort and desensitize cracked, sore lips and relieve dryness and roughness. Within minutes, lips look and feel like new. Plus, sets up an invisible protective barrier that lasts to help defend against harmful elements.', 0, 16.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(30, 3, 3, 'Precipitation - Continuous Moisture Recovery for Body', 'dw08', '38636', '250;ml', 'Skin-nourishing Sunflower and Soybean Oils, Ginseng, Gentian Root and Clary Sage rapidly refresh, renew and replenish dull, dry body skin. A complex of Barley and Phellodendron Extracts helps repair skin\'s lipid barrier to protect against future drought. Then like a gentle rainfall, this lush body balm delivers a steady stream of rich moisture to sustain skin throughout the day. With no greasy residue. And the lively aroma of Palmarosa, Galbanum and Grapefruit surround you in joy.', 0, 34, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(31, 3, 9, 'A Perfect World - Creamy Body Cleanser with White Tea', 'dw09', '38617', '200;ml', 'This lush lathering cream completely cleans skin without stripping it of protective surface oils. Skin-renewing Shea Butter, Apricot Kernel Oil, Sweet Orange and Glycerin keep skin feeling comfy and coddled. And antioxidant-rich White Tea banishes youth offenders long before they can cause oxidation, deterioration and dehydration.', 0, 33.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(32, 3, 4, 'Ginger Up - Aromatic Shampoo', 'dw10', '38625', '200;ml', 'The savory scent of Ginger plus the refreshing aroma of Lemon, Lime and Bergamot goes straight to your head as coddling conditioners smooth strands. Moisture-rich Wheat Protein strengthens and protects. Panthenol keeps flyaways, split ends and static at bay. And the lightweight formula means hair never falls flat. Locks are left with bounce, body and silky shine from roots to ends.', 0, 17.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(33, 3, 8, 'Rich Rewards - Intensive Moisture Treatment for Scalp and Hair', 'dw11', '12208', '125;ml', 'Once weekly after shampooing, massage a handful of this rich cream into scalp from roots to ends. Just 5 minutes reaps the rewards. Wheat Protein bonds with strands to restore health. And Vitamins E and A help protect. Plus, the succulent scent of William\'s Pear raises spirits. Just one use brings back bounce, shine and swing. For more intense repair, work into wet or dry hair and leave on up to 30 minutes. Not recommended for oily, fine or thin hair types.', 0, 22, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(34, 4, 11, 'Comfortable Diaper Cream', 'nb01', '77', '100;ml', 'This cream protects the delicate skin in the diaper area. A combination of emollients and zinc oxide creates a protective barrier that shields baby\'s skin from irritation caused by urine, bowel movements and the friction and rubbing that can come from the diaper, thereby preventing further soreness.\r\nCalendula and chufa milk extracts, together with jojoba and sweet almond oils from controlled organic farming, soften and nourish even the most sensitive skin. The zinc oxide contained in the formula has antiseptic and absorbent properties.\r\nHow to use: To prevent irritation, apply a generous layer of product at every diaper change to clean, healthy and dry skin.', 0, 16.95, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(35, 4, 11, 'Relaxing Body Oil', 'nb02', '79', '200;ml', 'Gentle oil suitable for the daily care of baby-s skin. Perfect for use after a bath, it keeps skin soft and supple and prevents it from becoming dry. Applied to children with a relaxing massage that creates an affective bond, it encourages restful sleep and restores the skin-s natural functions.\r\nHow to use: Apply a small amount of oil to healthy and dry or slightly damp skin after a bath. Gently massage in until completely absorbed.\r\nFragrance and allergen free.', 0, 22.95, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(36, 4, 11, 'Silky Body Emulsion', 'nb03', '80', '200;ml', 'This milk moisturizes, softens and enhances natural skin functions in children. Easily absorbed fine texture. The combination of organic oils used, including sweet almond oil, prevents dryness in delicate baby skin. Organic chamomile extract calms and soothes the skin, preventing damage caused by external factors.\r\nHow to use: Apply a small amount of product to clean, healthy and dry skin, and gently massage in until completely absorbed. Repeat application as needed.', 0, 19.95, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(37, 4, 11, 'Bath Bubble Foamer', 'nb04', '76', '150;ml', 'A gentle shampoo specially formulated for washing babies- hair and scalp, with a foaming texture that is easy to apply and rinse off. Biodegradable, it contains 98,3% ingredients of natural origin. Calendula officinalis extract and Chufa Milk extract derived from organic farming are indicated for sensitive and delicate skin. Paraben, phthalate and phenoxyethanol free. Specially formulated to minimize the risk of allergic reactions.', 0, 17.95, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(38, 4, 11, 'Protective Face Cream', 'nb05', '71', '100;ml', 'Face cream for babies forms a thin protective film over the skin, shielding it from environmental factors, such as cold, wind and pollution. Organic Calendula and Chamomile extracts soothe the skin while the combination of organic oils keeps it smooth and soft. This cream can also be used on hands and exposed areas of the body as it is rapidly absorbed without leaving an oily residue on the skin-s surface.\r\nHow to use: Apply a thin layer of cream to clean, healthy and dry skin, and gently massage in until completely absorbed. Repeat application as needed.', 0, 14.95, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(39, 4, 11, 'Refreshing Shampoo & Bath Gel', 'nb06', '81', '200;ml', 'Baby bath gel and shampoo gently cleanses babies- delicate skin and fine hair while providing protection from dryness. Leaves hair soft, silky and easy to comb. Contains organically grown calendula and chamomile extracts that soothe the skin while respecting its natural pH balance.\r\nHow to use: Apply a small amount to damp skin and hair. Gently massage in. Rinse with water.', 0, 14.95, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(40, 5, 5, 'Lip Care Stick', 'dh01', '3543', '4.9;g', 'Lip Care Stick softens and offers protection for lips prone to dryness. The practical companion for silky soft lips while out and about, providing light sun protection (SPF3).', 0, 7.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(41, 5, 5, 'Labimint Acute Lip Care', 'dh02', '3735', '5;ml', 'At the heart of Labimint Acute Lip Care are the freshly pressed juices of precious calendula and echinacea which are known for their soothing and regenerative effects. The 100% pure medicinal herb juices are supplemented by an extract from sage, which has purifying properties.', 0, 8.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(42, 5, 5, 'Lip Balm', 'dh03', '3462', '4.5;ml', 'Intensive soothing care for dry, chapped lips, this rich balm promotes skin renewal as it moisturises and softens. Lip Balm provides a translucent shine and helps visibly reduce fine lines around the mouth. Calendula and St. John-s wort extracts encourage repair and renewal. Silk and anthyllis strengthen delicate lip tissue to give the lips a velvety feel and a longlasting warm, floral scent. This intensive care results in beautiful, soft lips.', 0, 8.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(43, 5, 6, 'Eye Revive', 'dh04', '3945', '50;ml', 'Eye Revive offers refreshment to eyes that appear tired, puffy or red. This soothing herbal solution reduces the appearance of puffiness in the skin around the eyes and comforts eyes exposed to pollutants and irritants. Eyes look and feel refreshed, revitalised and relaxed.', 0, 21, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(44, 5, 5, 'Daily Hydrating Eye Cream', 'dh05', '3382', '12.5;ml', 'The thin, delicate skin around the eyes is particularly sensitive and prone to wrinkles caused by dryness. Daily Hydrating Eye Cream reduces the appearance of wrinkles and refines the area around the eyes so it looks and feels soft, supple and smooth. This moisture-rich product offers daytime care to all skin conditions.', 0, 24, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(45, 5, 5, 'Eye Balm', 'dh06', '3033', '10;ml', 'Eye Balm supports elasticity, minimises the appearance of fine lines and wrinkles, and protects the delicate skin around the eyes. Skin is moisturised, firmed and fortified. Appropriate for all skin conditions.', 0, 22.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(46, 5, 10, 'Regenerating Eye Cream', 'dh07', '3752', '15;ml', 'Regenerating Eye Cream refines the delicate skin around the eyes, reducing the appearance of fine lines and wrinkles. This rich cream invigorates skin while supporting natural skin regeneration.', 0, 45, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(47, 5, 8, 'Nourishing Hair Conditioner', 'dh08', '3772', '200;ml', 'Regenerative medicinal plant extracts from marshmallow, oak and nettle provide moisture and strengthen your scalp and hair. Wheat and milk proteins provide protection, elasticity and volume, and neem, macadamia nut and jojoba oils restore shine, vitality and manageability. The result: healthy, cared for hair with natural shine and vitality.', 0, 11.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(48, 5, 8, 'Strengthening Hair Treatment', 'dh09', '3461', '100;ml', 'Strengthening Hair Treatment revitalises and restores dry, damaged, permed or colour treated hair to a soft, silky condition. This intensive hair treatment renews and strengthens hair follicles while calming the scalp. Hair becomes healthy, shiny and more manageable.', 0, 17.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(49, 5, 8, 'Revitalising Hair & Scalp Tonic', 'dh10', '3905', '100;ml', 'Revitalising Hair & Scalp Tonic adds natural shine, volume and manageability to all hair conditions. It strengthens hair as it calms and balances an excessively dry or oily scalp.', 0, 13.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(50, 5, 9, 'Lavender Sandalwood Calming Body Wash', 'dh11', '3543', '200;ml', 'Tranquillity and harmony with a gently invigorating freshness the floral fragrance of lavender invites you to take a stroll along the Cote d`Azur with the warm but subtle scent of Australian sandalwood to accompany you.', 0, 11, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(51, 5, 9, 'Almond Soothing Body Wash', 'dh12', '3233', '200;ml', 'The almond tree-s development from chiffon-like blossom to fruit can be sensed in the fragrance of Almond Soothing Body Wash: a sea of soft, pink almond petals embraces your senses.', 0, 11, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(52, 5, 9, 'Moor Lavender Calming Bath Essence', 'dh13', '3622', '100;ml', 'This finely aligned product with horse chestnut and horsetail extracts is based on a moor extract prepared using a special rhythmic procedure.', 0, 15, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(53, 5, 3, 'Blackthorn Toning Body Oil', 'dh14', '3805', '75;ml', 'Supple, toned skin depends upon skin elasticity. Blackthorn Toning Body Oil offers strengthening, warming skin care for all the family. It has even proved successful during pregnancy when it is particularly important to keep skin supple to prevent pregnancy-induced stretch marks. Blackthorn blossom and birch leaf extracts enhance skin elasticity while sun-drenched St. John-s wort and jojoba oil support the skin-s natural processes of renewal and fortification.', 0, 14.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(54, 5, 3, 'Quince Hydrating Body Milk', 'dh15', '3732', '145;ml', 'The subtly scented Quince Hydrating Body Milk cools and soothes skin while this easily absorbed lotion encourages natural regeneration, leaving it feeling silky and smooth.', 0, 16, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(55, 5, 3, 'Almond Soothing Body Cream', 'dh16', '3174', '145;ml', 'Almond Soothing Body Cream awakens the mind and nurtures the senses; while the soft, floral scent of the almond blossom evokes thoughts of the early days of spring, the warm and sensual hints of the almond fruit whisk us away into the colourful life of the Italian summer.', 0, 17, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(56, 6, 1, 'Suti - Honour Coconut & Roses Face Cream', 'na01', '10933', '50;ml', 'Suti Honour Coconut & Roses Face Cream is a beautiful face cream resulting from the marriage of three nurturing and indulgent ingredients: Rose, Coconut and Date Seed Extract. Individually each creates energy, combined they become blessed to Honour the integrity of our skin and the divine feminine within. When applying this nourishing cream, it becomes a time for reflection, a time to be at one with yourself, a time to create a sacred space to Honour. Deeply moisturising and with a beautiful scent, it will leave your skin replenished and glowing. ', 0, 74.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(57, 6, 2, 'Suti - Nourish Organic Face Oil for Night', 'na02', '10023', '30;ml', 'Wake up to revitalised, brighter, more resilient skin with Suti Nourish Face Oil for Night, perfect for all skin types, especially parched and mature skin. Suti Face Oil for Night offers a potent blend of 15 plant and flower extracts, including Avocado, Sesame, Patchouli and Bergamot to heal, replenish and plump up dehydrated skin; Macadamia and Geranium to balance the production of sebum (the skin\'s natural oil production) for healthy moisture retention; Argan Oil to calm irritated, inflamed and blemished skin and Apricot Kernel to help promote dermal elasticity. ', 0, 49.95, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(58, 6, 1, '1001 Remedies - Soin Millenaire Cream', 'na03', '10652', '50;ml', '1001 Remedies Soin Millenaire Cream is your secret weapon for absolute youth and a visible improvement of your skin. This dual function day and night cream contains powerful antioxidants and anti ageing skincare based on 11 efficacious, 100% natural active ingredients.\r\nAfter 28 days of using this cream, the elasticity of the skin increases by 11%, the firmness by 12% and wrinkles are reduced by 14%*.\r\nAfter 56 days of treatment, you can observe a visible smoothing effect on the skin.', 0, 88.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(59, 6, 1, 'Bamford - Moisturising Cream', 'na04', '10364', '50;ml', 'Bamford Moisturising Cream is an intensely hydrating cream, enriched with strawberry seed oil to deeply nourish and safflower and cotton thistle extracts to aid repair. Can also be used as a replenishing overnight cream. This cream has a delicate scent of rose, camomile and lemon.', 0, 102, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(60, 6, 1, 'Caudalie - Premier Cru La Creme Riche', 'na05', '10801', '50;ml', 'Caudalie Premier Cru La Creme Riche is the ultimate in luxury and effectiveness for skin. This decadent cream delivers exceptional anti-ageing action for visibly younger skin. Deeply nourishing with the addition of jojoba, sunflower and mimosa plant waxes, skin is regenerated and density is restored. Wrinkles are smoothed, facial contours are firmer and more defined, and the complexion is radiant and even. ', 0, 113, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(61, 6, 10, 'Caudalie - Premier Cru The Cream', 'na06', '10174', '50;ml', 'Caudalie Premier Cru The Cream is sophisticated and effective in equal measure. This exceptional cream delivers ultimate anti-aging actions for visibly younger skin. Its melt-away texture leaves the skin velvety smooth. Perfectly hydrated, the skin is deeply regenerated and its density restored.', 0, 113, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(62, 6, 10, 'Aromatherapy Associates - Rose Infinity Moisturiser', 'na07', '10722', '50;ml', 'Aromatherapy Associates Rose Infinity Moisturiser contains a unique formula of Alpine rose stem cells and highly acclaimed hydrolyzed plant proteins that supports the skin\'s ability to strengthen and repair at a cellular level. This rich cream reduces the appearance of fine lines, creates a radiant tone and provides long-lasting hydration. ', 0, 147, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(63, 6, 10, 'Aromatherapy Associates - Anti Ageing Rich Repair Nourishing Cream', 'na08', '10191', '50;ml', 'Aromatherapy Associates Anti Ageing Rich Repair Nourishing Cream is an intensely nourishing, anti-oxidant rich cream that locks in moisture to soften and smooth the appearance of fine lines. This anti-ageing cream encourages the production of collagen for smooth and supple skin.', 0, 90.95, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(64, 6, 2, 'Bamford - Moisturising Cream', 'na09', '10998', '50;ml', 'Bamford Moisturising Cream is an intensely hydrating cream, enriched with strawberry seed oil to deeply nourish and safflower and cotton thistle extracts to aid repair. Can also be used as a replenishing overnight cream. This cream has a delicate scent of rose, camomile and lemon.', 0, 102, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(65, 6, 2, 'Kahina - Night Cream', 'na10', '10496', '50;ml', 'Kahina Night Cream is an advanced anti-aging moisturiser, inspired by Kahina founder Katharine L\'Heureux\' time on her family\'s Napa vineyard. Two of nature\'s most potent anti-aging ingredients - argan oil and red wine grapes - combine in this rich, restorative night moisturiser. ', 0, 109, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(66, 6, 4, 'Rahua - Voluminous Shampoo', 'na11', '10221', '275;ml', 'Rahua Voluminous Shampoo is a natural shampoo to create body and bounce in all hair types with aromatherapeutic blend of lavender and eucalyptus to calm and relax the senses. This smooth shampoo leaves hair cleaner, full of volume and with a natural shine. Formulated with organic and 100% natural ingredients, this volumising shampoo cleanses hair whilst adding extra volume without drying out the hair. Rich in Omega-9 ungurahua oil helps to heal, moisturise, strengthen and restore hair follicles so hair is stronger and healthier, whilst citrus juices break down hair oils to extend the time needed between washes. Lemongrass and green tea extracts create body, volume and bounce by balancing and removing excess oils without compromising the integrity of the hair whilst jojoba oil moisturises and nourishes the hair. ', 0, 35.95, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(67, 6, 4, 'Rahua - Shampoo', 'na12', '10464', '275;ml', 'Rahua shampoo is a 100% natural, organic cleanser that cleans hair without removing colour pigment and penetrates deep in to hair, strengthening and beautifying. Leaves hair healthy, lustrous and bouncy. Rahua nut oil fortifies weak, damaged hair strands while nourishing and regenerating the scalp and hair follicles, whilst ingredients such as coconut and shea gently and effectively remove oil, dirt and bacteria without stripping hair of essentials nutrients. This luxurious shampoo also contains sea salt to exfoliate and improve scalp circulation, hydrolyzed quinoa to heal and promote moisture retention and palo santo oil for a delicate, soothing fragrance for a completely relaxing aromatherapy experience as you shampoo. ', 0, 35.95, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(68, 6, 4, 'John Masters - Honey & Hibiscus Reconstructing Shampoo', 'na13', '10059', '177;ml', 'John Masters Honey & Hibiscus Reconstructing Shampoo rebuilds your hair with each wash as it cleans, using the same acids and components found in young hair. The hair shaft is fortified and strengthened with each wash.', 0, 33.5, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(69, 7, 7, 'Cell Dynamic Eye Focus Serum', 'nu01', '700', '15;ml', 'This paraben-free bio-tech complex contains specially purified natural peptides and enzymes that convert the toxins into molecular oxygen. High grade of hyaluronic acid with a low molecular weight creates a reservoir of hydration under the skin surface and stimulates the skin own produce of hyaluronic acid.', 0, 220, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(70, 7, 7, 'Bio-Electric Buff', 'nu02', '777', '80;ml', 'Bio-Electric Buff applies revolutionary technology to repair micro-cuts by generating polarity, which is essential to the function of the cell and a key factor in wound healing. The specialised exfoliating agents, Rhyolite and Magnetite buff the skin removing any debris, congestion or excess sebum, leaving skin smooth and matt. Bio-Electric Buff may be used on the face, neck and any part of the body.', 0, 38, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(71, 7, 7, 'Cell Dynamic The Essence For Men', 'nu03', '816', '30;ml', 'For the ultimate skin performance, cells need the ultimate fuel. This potent daily-use serum contains next generation high performance bio-active ingredients with patented Cell Dynamic technology.', 0, 200, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(72, 8, 7, 'OM4 RESURFACE: CITRUS BAMBOO RESURFACING SCRUB', 'om01', '879', '100;ml', 'Exfoliation is an essential step in men-s skin care. Ingrown hair, large pores and other male skin conditions are positively impacted by spending only 60 seconds exfoliating, bi-weekly.', 0, 45, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(73, 8, 7, 'OM4 TREAT: HEALING HERBAL ANTIFUNGAL FOOT TREATMENT', 'om02', '713', '150;ml', 'A unique moisturizing, antifungal foot cream, perfect for both skin softening and athlete-s foot prevention.', 0, 30, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(74, 8, 7, 'OM4 NORMAL STEP 4: ENVIRONMENTAL DEFENSE HYDRATION COMPLEX', 'om03', '772', '100;ml', 'Nutritional, healing and protective lightweight, instantly absorbing moisturizer.', 0, 55, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(75, 8, 7, 'OM4 SENSITIVE 4-STEP REGIMEN', 'om04', '724', '400;ml', 'The Sensitive Complete 4-Step System includes one full size product in each of the 4 steps: Cleanser, Toner, Serum, and Moisturizer.', 0, 190, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(76, 9, 12, 'EMPOWER', 'pm01', '997', '50;ml', 'Fresh and spirited. Playful and energizing. An invigorating unisex scent.', 0, 82, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(77, 9, 12, 'ENVISION', 'pm02', '990', '50;ml', 'Smooth and seductive. Daring and exotic. Irresistibly sensual and long lasting. For when you want to make a statement!\r\nTop notes: A citrus accord of Italian Bergamot, Brazilian orange, Persian lime, Florida grapefruit and pink peppercorn for that little kick!\r\nMiddle:  Lavender from the fields of South France, Palma rosa and Egyptian geranium rose deliver a nuance of femininity\r\nBase: The warmth and sexiness of Indonesian patchouli and creamy sandalwood blend with the sweetness of Madagascar vanilla to create a scent with serious cuddle factor!', 0, 82, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(78, 9, 12, 'TOGETHER', 'pm03', '943', '50;ml', 'Elegant and graceful. A classic woodsy floral that\'s flirtatious yet delicate. She\'ll always be remembered for it!\r\nTop notes: The deliciousness of Argentina lemon, Italian Bergamot and a little mixed berry\r\nMiddle: A bouquet of the most popular floral favorites: jasmine, violet, freesia and lilac hailing from the most ancient tradition of perfumery\r\nBase: Creamy woodsy blends, Madagascar vanilla, balsam and a dash of patchouli for added sexiness, making everyday a special day!', 0, 82, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(79, 10, 12, 'PURE', 'pd01', '1252', '50;ml', 'Hand crafted in micro batches, Pure Natural Diva employs time-honored natural perfumery techniques and relies exclusively on natural ingredients. The result - swoon worthy - synthetic-free, chemical free scents.\r\nPURE is sensually uplifting, like sunny day in a mixed field of lemongrass and Lavender.\r\nNotes include uplifting cassie, lavender, soothing chamomile, lemon, lime and an Egyptian neroli.\r\nEau De Toilette blended in certified organic corn alcohol. ', 0, 88, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(80, 10, 12, 'DIVA', 'pd02', '1851', '50;ml', 'Hand crafted in micro batches, Pure Natural Diva employs time-honored natural perfumery techniques and relies exclusively on natural ingredients. The result - swoon worthy - synthetic-free, chemical free scents.\r\nDIVA is full of soul, sultry and mysterious.\r\nNotes include natural musk derived from Ambrette, a sinfully smooth New Caledonian Sandalwood, blended together in a lusciously robust Vanilla.\r\nEau De Toilette in an atomized spray bottle imported from France and decorated in Los Angeles.', 0, 88, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(81, 10, 12, 'ELIXIR', 'pd03', '1508', '50;ml', 'Hand crafted in micro batches, Pure Natural Diva employs time-honored natural perfumery techniques and relies exclusively on natural ingredients. The result - swoon worthy - synthetic-free, chemical free scents.\r\nELIXIR is sensually uplifting.  As delicious as a lingering morning with an ocean view.\r\nNotes include aphrodisiacal vanilla, a hint of oakmoss, exquisite osmanthus, married with rejuvenating pink grapefruit and red mandarin.\r\nEau De Toilette in an atomized spray bottle imported from France and decorated in Los Angeles.', 0, 132, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(82, 10, 12, 'NATURAL', 'pd04', '1344', '50;ml', 'Hand crafted in micro batches, Pure Natural Diva employs time-honored natural perfumery techniques and relies exclusively on natural ingredients. The result - swoon worthy - synthetic-free, chemical free scents.\r\nNATURAL is fresh and inviting, imagine a picnic in a rose bordered citrus grove.\r\nNotes include a hint of Clary Sage, exalting Pink Grapefruit, Moroccan Rose, and soothing Ylang Ylang.\r\nEau De Toilette formulated with certified organic corn alcohol.', 0, 88, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(83, 10, 12, 'Signature Scent', 'pd05', '1216', '50;ml', 'SIGNATURE SCENT NATURAL PERFUME EXPERIENCE\r\nAre you  one of a kind, looking for a botanical scent that FULLY captures your inner essence?\r\nAre you looking for a gift that is 100% unique? Look NO further. The Signature Scent experience is the perfect gift.\r\nThe ultimate in luxury and Botanical Perfumes. We-ll create a one of a kind botanical perfume exclusively for you.\r\nYour Signature Scent experience includes a phone consult with Tania Reuben, along with a one on one session in person.\r\nOnce your scent has been blended it will be presented in a customized one of a kind signature bottle. We will keep your formula on file for re-orders and bath and body products.\r\nAt the end of your Signature Scent experience your perfume will be delivered in a gift wrapped custom engraved bottle - with a name of your choosing!', 0, 1100, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(84, 11, 12, 'Dewi - Parfum Balm', 'io01', '60', '15;g', 'No more chemical filled perfumes - INDAH\'s perfume balms are completely organic, AND smell amazing. Dewi imparts a sensual floral fragrance with Patchouli, Jasmine and Neroli.', 0, 26.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(85, 11, 12, 'Zen - Parfum Balm', 'io02', '70', '15;g', 'No more chemical filled perfumes - INDAH\'s perfume balms are completely organic, AND smell amazing. Zen draws on Cardamom and Frankincense for a deeply meditative experience.', 0, 26.9, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0),
(119, 0, 0, 'name', 'intern_article_code', 'merchant_article_code', 'base_unit', 'description', 0, 0, 0, '0000-00-00 00:00:00', '2016-06-05 13:10:14', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product_types`
--

CREATE TABLE `product_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `product_types`
--

INSERT INTO `product_types` (`id`, `name`) VALUES
(1, 'day cream'),
(2, 'night cream'),
(3, 'body care'),
(4, 'shampoo'),
(5, 'lip care'),
(6, 'eye care'),
(7, 'for men'),
(8, 'hair care'),
(9, 'shower gel'),
(10, 'anti-aging'),
(11, 'baby'),
(12, 'scent'),
(13, 'mouth care'),
(14, 'shave'),
(15, 'wellness');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zip` (`zip`,`city`,`id_countries`),
  ADD KEY `id_countries` (`id_countries`),
  ADD KEY `disabled` (`disabled`);

--
-- Indizes für die Tabelle `addresses_has_countries`
--
ALTER TABLE `addresses_has_countries`
  ADD PRIMARY KEY (`addresses_id`,`countries_id`),
  ADD KEY `fk_addresses_has_countries_countries1_idx` (`countries_id`),
  ADD KEY `fk_addresses_has_countries_addresses_idx` (`addresses_id`);

--
-- Indizes für die Tabelle `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_address_idx` (`id_addresses`);

--
-- Indizes für die Tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_merchants_idx` (`id_merchants`),
  ADD KEY `id_product_types_idx` (`id_product_types`);

--
-- Indizes für die Tabelle `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT für Tabelle `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT für Tabelle `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
