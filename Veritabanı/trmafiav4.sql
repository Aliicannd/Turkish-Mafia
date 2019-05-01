-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Kas 2018, 17:16:15
-- Sunucu sürümü: 10.1.37-MariaDB
-- PHP Sürümü: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `trmafiav4`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `akas`
--

CREATE TABLE `akas` (
  `serial` varchar(72) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blockip`
--

CREATE TABLE `blockip` (
  `ip` varchar(16) NOT NULL,
  `player` varchar(25) NOT NULL,
  `times` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolgeler`
--

CREATE TABLE `bolgeler` (
  `bolgeid` int(11) NOT NULL,
  `bolgeismi` varchar(25) NOT NULL,
  `bolgesahip` int(11) NOT NULL,
  `bolgerenk` int(11) NOT NULL DEFAULT '-65366',
  `koora` float NOT NULL,
  `koory` float NOT NULL,
  `koorz` float NOT NULL,
  `bolgesahipname` varchar(20) NOT NULL DEFAULT 'Yok',
  `bolgeseviye` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `bolgeler`
--

INSERT INTO `bolgeler` (`bolgeid`, `bolgeismi`, `bolgesahip`, `bolgerenk`, `koora`, `koory`, `koorz`, `bolgesahipname`, `bolgeseviye`) VALUES
(1, 'Factory', 0, 54165, 598.34, 1238.59, 11.71, 'Yok', 1),
(2, 'Army', 0, 54165, 192.711, 1910.16, 17.2648, 'Yok', 1),
(3, 'Grovestreet', 0, 54165, 2488.92, -1668.61, 13.0669, 'Yok', 1),
(4, 'Doherty', 0, 54165, -2111.01, -217.021, 35.0474, 'Yok', 1),
(5, 'Santa Maria', 0, 54165, 234.1, -1832.87, 3.3508, 'Yok', 1),
(6, 'Marina', 0, 54165, 722.674, -1488.06, 1.9343, 'Yok', 1),
(7, 'Hospital1', 0, 54165, 2034.81, -1417.68, 16.72, 'Yok', 1),
(8, 'Hospital2', 0, 54165, -2654.84, 632.274, 14.1802, 'Yok', 1),
(9, 'Esplanade', 0, 54165, -1629.73, 1420.79, 6.9131, 'Yok', 1),
(10, 'EasterBasin', 0, 54165, -1590.85, 105.38, 3.2765, 'Yok', 1),
(11, 'Starfish Casino', 0, 54165, 2596.04, 1823.56, 10.5474, 'Yok', 1),
(12, 'Caligula\'s Palace', 0, 54165, 2185.73, 1678.6, 10.8216, 'Yok', 1),
(13, 'Royal Casino', 0, 54165, 2146.24, 1486.29, 10.5474, 'Yok', 1),
(14, 'Linden Side', 0, 54165, 2843.85, 943.214, 10.4771, 'Yok', 1),
(15, 'Ocean Docks', 0, 54165, 2178.69, -2289.48, 13.2739, 'Yok', 1),
(16, 'Market', 0, 54165, 1129.18, -1489.5, 22.769, 'Yok', 1),
(17, 'Santral', 0, 54165, 187.68, 1409.19, 10.58, 'Yok', 1),
(18, 'Robada', 0, 54165, -529.73, 2593.45, 53.41, 'Yok', 1),
(19, 'Las Barrancas', 0, 54165, -810.49, 1528.86, 26.89, 'Yok', 1),
(20, 'Bayside Marina', 0, 54165, -2249.28, 2312.44, 4.81, 'Yok', 1),
(21, 'Missionary Hill', 0, 54165, -2505.09, -672.14, 139.32, 'Yok', 1),
(22, 'Leafy Hollow', 0, 54165, -1100.84, -1650.39, 76.36, 'Yok', 1),
(23, 'Flint County', 0, 54165, -51.96, -1150.91, 1.07, 'Yok', 1),
(24, 'Dillimore', 0, 54165, 654.49, -576.08, 16.33, 'Yok', 1),
(25, 'K.A.C.C.', 0, 54165, 2583.25, 2750.54, 10.82, 'Yok', 1),
(26, 'Bayside', 0, 54165, -2465.75, 2502.88, 16.63, 'Yok', 1),
(27, 'MountainHouse', 0, 54165, -2800.21, -1518.06, 139.22, 'Yok', 1),
(28, 'Mine', 0, 54165, -1873.53, -1638.41, 21.89, 'Yok', 1),
(29, 'Global', 0, 54165, 1094.69, 1293.94, 10.82, 'Yok', 1),
(30, 'Pirckle Pine', 0, 54165, 1788.52, 2820.58, 10.83, 'Yok', 1),
(31, 'The Ponopticon', 0, 54165, -509.26, -119.71, 65.79, 'Yok', 1),
(32, 'Factory2', 0, 54165, 2.52, -348.2, 5.42, 'Yok', 1),
(33, 'Fallen Tree', 0, 54165, -546.95, -503.13, 25.25, 'Yok', 1),
(34, 'Angel Pine', 0, 54165, -2146.88, -2488.56, 30.4688, 'Yok', 1),
(35, 'Petrol Station', 0, 54165, -1568.78, -2737.43, 48.53, 'Yok', 1),
(36, 'Desolate', 0, 54165, -1428.38, -955.7, 200.89, 'Yok', 1),
(37, 'The Farm', 0, 54165, -1105.99, -1190.8, 129.21, 'Yok', 1),
(38, 'The Farm2', 0, 54165, -397.21, -1443.78, 25.72, 'Yok', 1),
(39, '69', 0, 54165, 33.09, -2639.65, 40.15, 'Yok', 1),
(40, 'Waste', 0, 54165, -23.95, -2505.33, 36.64, 'Yok', 1),
(41, 'The Farm3', 0, 54165, -264.1, -2172.06, 28.97, 'Yok', 1),
(42, 'Fern Ridge', 0, 54165, 866.68, -27.11, 63.19, 'Yok', 1),
(43, 'Rally', 0, 54165, 1530.96, 6.1, 23.88, 'Yok', 1),
(44, 'The Farm4', 0, 54165, 1930.28, 171.92, 37.28, 'Yok', 1),
(45, 'Polomino Creek', 0, 54165, 2317.97, 40.18, 26.47, 'Yok', 1),
(46, 'Montgomery', 0, 54165, 1276.63, 293.64, 19.11, 'Yok', 1),
(47, 'Mulholland', 0, 54165, 1496.64, -665.35, 95.17, 'Yok', 1),
(48, 'Mulholland2', 0, 54165, 1326.13, -632.03, 108.69, 'Yok', 1),
(49, 'Mulholland3', 0, 54165, 1291.77, -797.58, 96.01, 'Yok', 1),
(50, 'Mine2', 0, 54165, 567.96, 876.82, -44.14, 'Yok', 1),
(51, 'The Farm5', 0, 54165, -1440.65, -1487.49, 101.74, 'Yok', 1),
(52, 'Idlewood', 0, 54165, 2160.49, -1800.29, 13.09, 'Yok', 1),
(53, 'Willowfield', 0, 54165, 2447.39, -1970.15, 13.53, 'Yok', 1),
(54, 'Glen Park', 0, 54165, 1968.72, -1202.44, 19.35, 'Yok', 1),
(55, 'Ocean Docks2', 0, 54165, 2762.54, -2461.18, 13.27, 'Yok', 1),
(56, 'Whitewood', 0, 54165, 969.08, 2139.97, 10.54, 'Yok', 1),
(57, 'Redsands', 0, 54165, 1632.3, 2366.87, 10.54, 'Yok', 1),
(58, 'Creek', 0, 54165, 2842.97, 2396.49, 10.54, 'Yok', 1),
(59, 'Las Venturas', 0, 54165, 1484.47, 2777.18, 10.54, 'Yok', 1),
(60, 'Estates', 0, 54165, 1059.49, 2166.72, 10.54, 'Yok', 1),
(61, 'The Pig Pen', 0, 54165, 2420.9, -1221.37, 25.09, 'Yok', 1),
(62, 'Los Santos', 0, 54165, 2333.85, -1230.35, 22.22, 'Yok', 1),
(63, 'Blueberry', 0, 54165, 360.74, -95.71, 1.09, 'Yok', 1),
(64, 'Blueberry2', 0, 54165, 178.96, -112.01, 1.26, 'Yok', 1),
(65, 'Acres', 0, 54165, -83.71, -5.61, 2.84, 'Yok', 1),
(66, 'Foster Valley', 0, 54165, -2026.08, -859.01, 31.89, 'Yok', 1),
(67, 'Intersection', 0, 54165, -86.22, -1574.71, 2.34, 'Yok', 1),
(68, 'Vinewood', 0, 54165, 688.76, -1277.16, 13.28, 'Yok', 1),
(69, 'Vinewood2', 0, 54165, 864.48, -1222.76, 16.34, 'Yok', 1),
(70, 'Financial', 0, 54165, -1738.65, 1039.21, 17.31, 'Yok', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ceteler`
--

CREATE TABLE `ceteler` (
  `ceteid` int(11) NOT NULL,
  `cetebanka` int(11) NOT NULL,
  `ceteismi` varchar(20) NOT NULL,
  `ceterengi` int(11) NOT NULL,
  `cetesilah` int(11) NOT NULL,
  `uyesayisi` int(11) NOT NULL,
  `bolgesayisi` int(11) NOT NULL,
  `cetegiriskor` int(11) NOT NULL,
  `ceteskinl` int(11) NOT NULL DEFAULT '-1',
  `ceteskiny` int(11) NOT NULL DEFAULT '-1',
  `ceteskinu` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cetesilme`
--

CREATE TABLE `cetesilme` (
  `ceteid` int(11) NOT NULL,
  `cetename` varchar(25) NOT NULL,
  `cetesilen` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etklog`
--

CREATE TABLE `etklog` (
  `animator` varchar(25) NOT NULL,
  `etkinlik` varchar(50) NOT NULL,
  `tarih` varchar(16) NOT NULL,
  `saat` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `horseshoes`
--

CREATE TABLE `horseshoes` (
  `UserID` int(15) NOT NULL DEFAULT '0',
  `HorseShoe1` int(1) NOT NULL DEFAULT '0',
  `HorseShoe2` int(1) NOT NULL DEFAULT '0',
  `HorseShoe3` int(1) NOT NULL DEFAULT '0',
  `HorseShoe4` int(1) NOT NULL DEFAULT '0',
  `HorseShoe5` int(1) NOT NULL DEFAULT '0',
  `HorseShoe6` int(1) NOT NULL DEFAULT '0',
  `HorseShoe7` int(1) NOT NULL DEFAULT '0',
  `HorseShoe8` int(1) NOT NULL DEFAULT '0',
  `HorseShoe9` int(1) NOT NULL DEFAULT '0',
  `HorseShoe10` int(1) NOT NULL DEFAULT '0',
  `HorseShoe11` int(1) NOT NULL DEFAULT '0',
  `HorseShoe12` int(1) NOT NULL DEFAULT '0',
  `HorseShoe13` int(1) NOT NULL DEFAULT '0',
  `HorseShoe14` int(1) NOT NULL DEFAULT '0',
  `HorseShoe15` int(1) NOT NULL DEFAULT '0',
  `HorseShoe16` int(1) NOT NULL DEFAULT '0',
  `HorseShoe17` int(1) NOT NULL DEFAULT '0',
  `HorseShoe18` int(1) NOT NULL DEFAULT '0',
  `HorseShoe19` int(1) NOT NULL DEFAULT '0',
  `HorseShoe20` int(1) NOT NULL DEFAULT '0',
  `HorseShoe21` int(1) NOT NULL DEFAULT '0',
  `HorseShoe22` int(1) NOT NULL DEFAULT '0',
  `HorseShoe23` int(1) NOT NULL DEFAULT '0',
  `HorseShoe24` int(1) NOT NULL DEFAULT '0',
  `HorseShoe25` int(1) NOT NULL DEFAULT '0',
  `HorseShoe26` int(1) NOT NULL DEFAULT '0',
  `HorseShoe27` int(1) NOT NULL DEFAULT '0',
  `HorseShoe28` int(1) NOT NULL DEFAULT '0',
  `HorseShoe29` int(1) NOT NULL DEFAULT '0',
  `HorseShoe30` int(1) NOT NULL DEFAULT '0',
  `HorseShoe31` int(1) NOT NULL DEFAULT '0',
  `HorseShoe32` int(1) NOT NULL DEFAULT '0',
  `HorseShoe33` int(1) NOT NULL DEFAULT '0',
  `HorseShoe34` int(1) NOT NULL DEFAULT '0',
  `HorseShoe35` int(1) NOT NULL DEFAULT '0',
  `HorseShoe36` int(1) NOT NULL DEFAULT '0',
  `HorseShoe37` int(1) NOT NULL DEFAULT '0',
  `HorseShoe38` int(1) NOT NULL DEFAULT '0',
  `HorseShoe39` int(1) NOT NULL DEFAULT '0',
  `HorseShoe40` int(1) NOT NULL DEFAULT '0',
  `HorseShoe41` int(1) NOT NULL DEFAULT '0',
  `HorseShoe42` int(1) NOT NULL DEFAULT '0',
  `HorseShoe43` int(1) NOT NULL DEFAULT '0',
  `HorseShoe44` int(1) NOT NULL DEFAULT '0',
  `HorseShoe45` int(1) NOT NULL DEFAULT '0',
  `HorseShoe46` int(1) NOT NULL DEFAULT '0',
  `HorseShoe47` int(1) NOT NULL DEFAULT '0',
  `HorseShoe48` int(1) NOT NULL DEFAULT '0',
  `HorseShoe49` int(1) NOT NULL DEFAULT '0',
  `HorseShoe50` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `housefurnitures`
--

CREATE TABLE `housefurnitures` (
  `ID` int(11) NOT NULL,
  `HouseID` int(11) NOT NULL,
  `FurnitureID` tinyint(11) NOT NULL,
  `FurnitureX` float NOT NULL,
  `FurnitureY` float NOT NULL,
  `FurnitureZ` float NOT NULL,
  `FurnitureRX` float NOT NULL,
  `FurnitureRY` float NOT NULL,
  `FurnitureRZ` float NOT NULL,
  `FurnitureVW` int(11) NOT NULL,
  `FurnitureInt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `houseguns`
--

CREATE TABLE `houseguns` (
  `HouseID` int(11) NOT NULL,
  `WeaponID` tinyint(4) NOT NULL,
  `Ammo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `housekeys`
--

CREATE TABLE `housekeys` (
  `HouseID` int(11) NOT NULL,
  `Player` int(11) NOT NULL,
  `Date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `houses`
--

CREATE TABLE `houses` (
  `ID` int(11) NOT NULL,
  `HouseName` varchar(48) NOT NULL DEFAULT 'Satilik Ev',
  `HouseOwner` int(11) NOT NULL DEFAULT '-1',
  `HousePassword` varchar(16) NOT NULL DEFAULT '-',
  `HouseX` float NOT NULL,
  `HouseY` float NOT NULL,
  `HouseZ` float NOT NULL,
  `HousePrice` int(11) NOT NULL,
  `HouseSalePrice` int(11) NOT NULL,
  `HouseInterior` tinyint(4) NOT NULL DEFAULT '0',
  `HouseLock` tinyint(4) NOT NULL DEFAULT '0',
  `HouseMoney` int(11) NOT NULL DEFAULT '0',
  `LastEntered` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `housesafelogs`
--

CREATE TABLE `housesafelogs` (
  `HouseID` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `housesales`
--

CREATE TABLE `housesales` (
  `ID` int(11) NOT NULL,
  `OldOwner` int(11) NOT NULL,
  `NewOwner` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `housevisitors`
--

CREATE TABLE `housevisitors` (
  `HouseID` int(11) NOT NULL,
  `Visitor` varchar(24) NOT NULL,
  `Date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kayitlar`
--

CREATE TABLE `kayitlar` (
  `kayittip` varchar(24) NOT NULL,
  `kayit` varchar(25) NOT NULL,
  `kayitip` varchar(32) NOT NULL,
  `admin` varchar(25) NOT NULL,
  `adminip` varchar(32) NOT NULL,
  `sebep` varchar(128) NOT NULL,
  `zaman` varchar(30) NOT NULL,
  `tarih` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `medals`
--

CREATE TABLE `medals` (
  `UserID` int(15) NOT NULL DEFAULT '0',
  `Medal1` int(1) NOT NULL DEFAULT '0',
  `Medal2` int(1) NOT NULL DEFAULT '0',
  `Medal3` int(1) NOT NULL DEFAULT '0',
  `Medal4` int(1) NOT NULL DEFAULT '0',
  `Medal5` int(1) NOT NULL DEFAULT '0',
  `Medal6` int(1) NOT NULL DEFAULT '0',
  `Medal7` int(1) NOT NULL DEFAULT '0',
  `Medal8` int(1) NOT NULL DEFAULT '0',
  `Medal9` int(1) NOT NULL DEFAULT '0',
  `Medal10` int(1) NOT NULL DEFAULT '0',
  `Medal11` int(1) NOT NULL DEFAULT '0',
  `Medal12` int(1) NOT NULL DEFAULT '0',
  `Medal13` int(1) NOT NULL DEFAULT '0',
  `Medal14` int(1) NOT NULL DEFAULT '0',
  `Medal15` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `mesajid` int(11) NOT NULL,
  `alsqlid` int(11) NOT NULL,
  `gosqlid` int(11) NOT NULL,
  `mesaj` varchar(256) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `okundumu` int(11) NOT NULL,
  `tarih` varchar(16) NOT NULL,
  `gisim` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oysters`
--

CREATE TABLE `oysters` (
  `UserID` int(15) NOT NULL DEFAULT '0',
  `Oyster1` int(1) NOT NULL DEFAULT '0',
  `Oyster2` int(1) NOT NULL DEFAULT '0',
  `Oyster3` int(1) NOT NULL DEFAULT '0',
  `Oyster4` int(1) NOT NULL DEFAULT '0',
  `Oyster5` int(1) NOT NULL DEFAULT '0',
  `Oyster6` int(1) NOT NULL DEFAULT '0',
  `Oyster7` int(1) NOT NULL DEFAULT '0',
  `Oyster8` int(1) NOT NULL DEFAULT '0',
  `Oyster9` int(1) NOT NULL DEFAULT '0',
  `Oyster10` int(1) NOT NULL DEFAULT '0',
  `Oyster11` int(1) NOT NULL DEFAULT '0',
  `Oyster12` int(1) NOT NULL DEFAULT '0',
  `Oyster13` int(1) NOT NULL DEFAULT '0',
  `Oyster14` int(1) NOT NULL DEFAULT '0',
  `Oyster15` int(1) NOT NULL DEFAULT '0',
  `Oyster16` int(1) NOT NULL DEFAULT '0',
  `Oyster17` int(1) NOT NULL DEFAULT '0',
  `Oyster18` int(1) NOT NULL DEFAULT '0',
  `Oyster19` int(1) NOT NULL DEFAULT '0',
  `Oyster20` int(1) NOT NULL DEFAULT '0',
  `Oyster21` int(1) NOT NULL DEFAULT '0',
  `Oyster22` int(1) NOT NULL DEFAULT '0',
  `Oyster23` int(1) NOT NULL DEFAULT '0',
  `Oyster24` int(1) NOT NULL DEFAULT '0',
  `Oyster25` int(1) NOT NULL DEFAULT '0',
  `Oyster26` int(1) NOT NULL DEFAULT '0',
  `Oyster27` int(1) NOT NULL DEFAULT '0',
  `Oyster28` int(1) NOT NULL DEFAULT '0',
  `Oyster29` int(1) NOT NULL DEFAULT '0',
  `Oyster30` int(1) NOT NULL DEFAULT '0',
  `Oyster31` int(1) NOT NULL DEFAULT '0',
  `Oyster32` int(1) NOT NULL DEFAULT '0',
  `Oyster33` int(1) NOT NULL DEFAULT '0',
  `Oyster34` int(1) NOT NULL DEFAULT '0',
  `Oyster35` int(1) NOT NULL DEFAULT '0',
  `Oyster36` int(1) NOT NULL DEFAULT '0',
  `Oyster37` int(1) NOT NULL DEFAULT '0',
  `Oyster38` int(1) NOT NULL DEFAULT '0',
  `Oyster39` int(1) NOT NULL DEFAULT '0',
  `Oyster40` int(1) NOT NULL DEFAULT '0',
  `Oyster41` int(1) NOT NULL DEFAULT '0',
  `Oyster42` int(1) NOT NULL DEFAULT '0',
  `Oyster43` int(1) NOT NULL DEFAULT '0',
  `Oyster44` int(1) NOT NULL DEFAULT '0',
  `Oyster45` int(1) NOT NULL DEFAULT '0',
  `Oyster46` int(1) NOT NULL DEFAULT '0',
  `Oyster47` int(1) NOT NULL DEFAULT '0',
  `Oyster48` int(1) NOT NULL DEFAULT '0',
  `Oyster49` int(1) NOT NULL DEFAULT '0',
  `Oyster50` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyuncular`
--

CREATE TABLE `oyuncular` (
  `sqlid` int(11) NOT NULL,
  `kullaniciadi` varchar(24) NOT NULL,
  `sifre` varchar(135) NOT NULL,
  `money` int(11) NOT NULL,
  `Deaths` int(11) NOT NULL,
  `Kills` int(11) NOT NULL,
  `Level` int(11) NOT NULL,
  `Animator` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `LoggedIn` int(11) NOT NULL,
  `LastOn` varchar(30) NOT NULL DEFAULT 'Yok',
  `RegisteredDate` varchar(30) NOT NULL DEFAULT 'Yok',
  `TimesOnServer` int(11) NOT NULL,
  `banned` int(11) NOT NULL,
  `Registered` int(11) NOT NULL DEFAULT '1',
  `Jailed` int(11) NOT NULL,
  `JailTime` int(11) NOT NULL,
  `oyundami` int(11) NOT NULL,
  `savaskazandi` int(11) NOT NULL,
  `yariskazandi` int(11) NOT NULL,
  `etkkazandi` int(11) NOT NULL,
  `DJ` int(11) NOT NULL,
  `ceteid` int(11) NOT NULL DEFAULT '-1',
  `ceterutbeid` int(11) NOT NULL DEFAULT '-1',
  `IP` varchar(30) NOT NULL DEFAULT 's',
  `pinfox` float NOT NULL,
  `pinfoy` float NOT NULL,
  `pinfoz` float NOT NULL,
  `pinfointerior` int(11) NOT NULL,
  `pinfoworld` int(11) NOT NULL,
  `onlinet` int(11) NOT NULL,
  `vayar` int(11) NOT NULL,
  `mayar` int(11) NOT NULL DEFAULT '0',
  `fallkazandi` int(11) NOT NULL,
  `derbykazandi` int(11) NOT NULL,
  `otogiris` int(11) NOT NULL DEFAULT '1',
  `yetkiname` varchar(25) NOT NULL DEFAULT 'Yok',
  `skinplayer` int(11) NOT NULL DEFAULT '-1',
  `rengim` int(11) NOT NULL,
  `shootskil` int(11) NOT NULL DEFAULT '0',
  `weap1` int(11) NOT NULL DEFAULT '-1',
  `weap2` int(11) NOT NULL DEFAULT '-1',
  `weap3` int(11) NOT NULL DEFAULT '-1',
  `weap4` int(11) NOT NULL DEFAULT '-1',
  `Exp` int(11) NOT NULL DEFAULT '0',
  `ExpLevel` int(11) NOT NULL DEFAULT '1',
  `EtkSayim` int(11) NOT NULL DEFAULT '0',
  `bannedtime` int(11) NOT NULL,
  `vehiclemod1` varchar(64) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,-1,0',
  `vehiclemod2` varchar(64) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,-1,0',
  `vehiclemod3` varchar(64) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,-1,0',
  `vehiclemod4` varchar(64) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,-1,0',
  `vehiclemod5` varchar(64) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,-1,0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sban`
--

CREATE TABLE `sban` (
  `serial` varchar(72) NOT NULL,
  `name` varchar(24) NOT NULL,
  `time` int(11) NOT NULL,
  `playerip` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `spraytags`
--

CREATE TABLE `spraytags` (
  `UserID` int(15) NOT NULL DEFAULT '0',
  `Tag1` int(1) NOT NULL DEFAULT '0',
  `Tag2` int(1) NOT NULL DEFAULT '0',
  `Tag3` int(1) NOT NULL DEFAULT '0',
  `Tag4` int(1) NOT NULL DEFAULT '0',
  `Tag5` int(1) NOT NULL DEFAULT '0',
  `Tag6` int(1) NOT NULL DEFAULT '0',
  `Tag7` int(1) NOT NULL DEFAULT '0',
  `Tag8` int(1) NOT NULL DEFAULT '0',
  `Tag9` int(1) NOT NULL DEFAULT '0',
  `Tag10` int(1) NOT NULL DEFAULT '0',
  `Tag11` int(1) NOT NULL DEFAULT '0',
  `Tag12` int(1) NOT NULL DEFAULT '0',
  `Tag13` int(1) NOT NULL DEFAULT '0',
  `Tag14` int(1) NOT NULL DEFAULT '0',
  `Tag15` int(1) NOT NULL DEFAULT '0',
  `Tag16` int(1) NOT NULL DEFAULT '0',
  `Tag17` int(1) NOT NULL DEFAULT '0',
  `Tag18` int(1) NOT NULL DEFAULT '0',
  `Tag19` int(1) NOT NULL DEFAULT '0',
  `Tag20` int(1) NOT NULL DEFAULT '0',
  `Tag21` int(1) NOT NULL DEFAULT '0',
  `Tag22` int(1) NOT NULL DEFAULT '0',
  `Tag23` int(1) NOT NULL DEFAULT '0',
  `Tag24` int(1) NOT NULL DEFAULT '0',
  `Tag25` int(1) NOT NULL DEFAULT '0',
  `Tag26` int(1) NOT NULL DEFAULT '0',
  `Tag27` int(1) NOT NULL DEFAULT '0',
  `Tag28` int(1) NOT NULL DEFAULT '0',
  `Tag29` int(1) NOT NULL DEFAULT '0',
  `Tag30` int(1) NOT NULL DEFAULT '0',
  `Tag31` int(1) NOT NULL DEFAULT '0',
  `Tag32` int(1) NOT NULL DEFAULT '0',
  `Tag33` int(1) NOT NULL DEFAULT '0',
  `Tag34` int(1) NOT NULL DEFAULT '0',
  `Tag35` int(1) NOT NULL DEFAULT '0',
  `Tag36` int(1) NOT NULL DEFAULT '0',
  `Tag37` int(1) NOT NULL DEFAULT '0',
  `Tag38` int(1) NOT NULL DEFAULT '0',
  `Tag39` int(1) NOT NULL DEFAULT '0',
  `Tag40` int(1) NOT NULL DEFAULT '0',
  `Tag41` int(1) NOT NULL DEFAULT '0',
  `Tag42` int(1) NOT NULL DEFAULT '0',
  `Tag43` int(1) NOT NULL DEFAULT '0',
  `Tag44` int(1) NOT NULL DEFAULT '0',
  `Tag45` int(1) NOT NULL DEFAULT '0',
  `Tag46` int(1) NOT NULL DEFAULT '0',
  `Tag47` int(1) NOT NULL DEFAULT '0',
  `Tag48` int(1) NOT NULL DEFAULT '0',
  `Tag49` int(1) NOT NULL DEFAULT '0',
  `Tag50` int(1) NOT NULL DEFAULT '0',
  `Tag51` int(1) NOT NULL DEFAULT '0',
  `Tag52` int(1) NOT NULL DEFAULT '0',
  `Tag53` int(1) NOT NULL DEFAULT '0',
  `Tag54` int(1) NOT NULL DEFAULT '0',
  `Tag55` int(1) NOT NULL DEFAULT '0',
  `Tag56` int(1) NOT NULL DEFAULT '0',
  `Tag57` int(1) NOT NULL DEFAULT '0',
  `Tag58` int(1) NOT NULL DEFAULT '0',
  `Tag59` int(1) NOT NULL DEFAULT '0',
  `Tag60` int(1) NOT NULL DEFAULT '0',
  `Tag61` int(1) NOT NULL DEFAULT '0',
  `Tag62` int(6) NOT NULL DEFAULT '0',
  `Tag63` int(6) NOT NULL DEFAULT '0',
  `Tag64` int(6) NOT NULL DEFAULT '0',
  `Tag65` int(6) NOT NULL DEFAULT '0',
  `Tag66` int(6) NOT NULL DEFAULT '0',
  `Tag67` int(6) NOT NULL DEFAULT '0',
  `Tag68` int(6) NOT NULL DEFAULT '0',
  `Tag69` int(6) NOT NULL DEFAULT '0',
  `Tag70` int(1) NOT NULL DEFAULT '0',
  `Tag71` int(1) NOT NULL DEFAULT '0',
  `Tag72` int(1) NOT NULL DEFAULT '0',
  `Tag73` int(1) NOT NULL DEFAULT '0',
  `Tag74` int(1) NOT NULL DEFAULT '0',
  `Tag75` int(1) NOT NULL DEFAULT '0',
  `Tag76` int(1) NOT NULL DEFAULT '0',
  `Tag77` int(1) NOT NULL DEFAULT '0',
  `Tag78` int(1) NOT NULL DEFAULT '0',
  `Tag79` int(1) NOT NULL DEFAULT '0',
  `Tag80` int(1) NOT NULL DEFAULT '0',
  `Tag81` int(1) NOT NULL DEFAULT '0',
  `Tag82` int(1) NOT NULL DEFAULT '0',
  `Tag83` int(1) NOT NULL DEFAULT '0',
  `Tag84` int(1) NOT NULL DEFAULT '0',
  `Tag85` int(1) NOT NULL DEFAULT '0',
  `Tag86` int(1) NOT NULL DEFAULT '0',
  `Tag87` int(1) NOT NULL DEFAULT '0',
  `Tag88` int(1) NOT NULL DEFAULT '0',
  `Tag89` int(1) NOT NULL DEFAULT '0',
  `Tag90` int(1) NOT NULL DEFAULT '0',
  `Tag91` int(1) NOT NULL DEFAULT '0',
  `Tag92` int(1) NOT NULL DEFAULT '0',
  `Tag93` int(1) NOT NULL DEFAULT '0',
  `Tag94` int(1) NOT NULL DEFAULT '0',
  `Tag95` int(1) NOT NULL DEFAULT '0',
  `Tag96` int(1) NOT NULL DEFAULT '0',
  `Tag97` int(1) NOT NULL DEFAULT '0',
  `Tag98` int(1) NOT NULL DEFAULT '0',
  `Tag99` int(1) NOT NULL DEFAULT '0',
  `Tag100` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bolgeler`
--
ALTER TABLE `bolgeler`
  ADD PRIMARY KEY (`bolgeid`);

--
-- Tablo için indeksler `ceteler`
--
ALTER TABLE `ceteler`
  ADD PRIMARY KEY (`ceteid`);

--
-- Tablo için indeksler `housefurnitures`
--
ALTER TABLE `housefurnitures`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `houseguns`
--
ALTER TABLE `houseguns`
  ADD UNIQUE KEY `HouseID_2` (`HouseID`,`WeaponID`),
  ADD KEY `HouseID` (`HouseID`);

--
-- Tablo için indeksler `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Tablo için indeksler `housesales`
--
ALTER TABLE `housesales`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`mesajid`);

--
-- Tablo için indeksler `oyuncular`
--
ALTER TABLE `oyuncular`
  ADD PRIMARY KEY (`sqlid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `bolgeler`
--
ALTER TABLE `bolgeler`
  MODIFY `bolgeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Tablo için AUTO_INCREMENT değeri `ceteler`
--
ALTER TABLE `ceteler`
  MODIFY `ceteid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `housefurnitures`
--
ALTER TABLE `housefurnitures`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `housesales`
--
ALTER TABLE `housesales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `mesajid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `oyuncular`
--
ALTER TABLE `oyuncular`
  MODIFY `sqlid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `houseguns`
--
ALTER TABLE `houseguns`
  ADD CONSTRAINT `houseguns_ibfk_1` FOREIGN KEY (`HouseID`) REFERENCES `houses` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
