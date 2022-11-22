-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2022 a las 23:10:07
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kindred_dbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `achievements`
--

CREATE TABLE `achievements` (
  `ID_ACHI` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `IMG_ACHI_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NAME_ACHI` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addons`
--

CREATE TABLE `addons` (
  `ID_ADDON` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `IMG_ADDON_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `RARITY_ADDONS_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NAME_ADDON` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TYPE` enum('KILLER','SURVIVOR') COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backgrounds`
--

CREATE TABLE `backgrounds` (
  `ID_BACKG` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `NAME_BACKG` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TYPE` enum('SURVIVOR','KILLER') COLLATE utf8_spanish_ci DEFAULT NULL,
  `URL` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `CHARACTER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloodpoints`
--

CREATE TABLE `bloodpoints` (
  `ID_BLP` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `CODE` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `EXPIRED` tinyint(4) DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dlc`
--

CREATE TABLE `dlc` (
  `ID_DLC` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `IMG_DLC_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NAME_DLC` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `RELEASE_DATE` date DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genders`
--

CREATE TABLE `genders` (
  `ID_GEN` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `NAME_GEN` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `ID_IMG` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `URL` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `CATEGORY` enum('USER','ADDON','OFFERING','BANNER','DLC','ITEM','POWER','ICON_CHARACTER','PERK','MORI','OVERVIEWCHARACTER') COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `CREATED` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `MODIFIED` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `ID_ITEM` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `IMG_ITEM_SURV_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `RARITY_ITEM_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NAME_ITEM` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TYPE` enum('KILLER','SURVIVOR') COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `killers`
--

CREATE TABLE `killers` (
  `ID_KILLER` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `IMG_KILLER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IMG_KILLER_BANNER_FK` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `GENDER_KILLER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DLC_KILLER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `MORI_KILLER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `WEAPON_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `POWER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `PERK_KILLER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NAME_KILLER` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NICKNAME` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `SPEED` float DEFAULT NULL,
  `TERROR_RA` float DEFAULT NULL,
  `ATTACK` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ABOUT` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NATIONALITY` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `LORE` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `VOICES_ACTOR` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `ID_LANG` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `NAME_LANG` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `SHORTNAME_LANG` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages_translations`
--

CREATE TABLE `languages_translations` (
  `ID_LANG_TRAN` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `LANGUAGE_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TRANSLATION_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `ID_LOG` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `USER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `OPERATION` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `SQL` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `ID_MENU` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `MENU_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NAME_MENU` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ICON_MENU` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `COLOR_MENU` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus_roles`
--

CREATE TABLE `menus_roles` (
  `ID_MENUS_ROLES` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `MENU_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ROLE_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moris`
--

CREATE TABLE `moris` (
  `ID_MORIS` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `NAME_MORI` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `VIDEO_MORI_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IMG_MORI_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offerings`
--

CREATE TABLE `offerings` (
  `ID_OFF` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `IMG_OFF_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `RARITY_OFFERINGS_FK` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NAME_OFF` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `PHRASE` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TYPE` enum('KILLER','SURVIVOR','GENERAL') COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perks`
--

CREATE TABLE `perks` (
  `ID_PER` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `IMG_PERKS_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NAME_PERK` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `PHRASE` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TYPE` enum('KILLER','SURVIVOR','GENERAL') COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `ID_PERM` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `NAME_PERM` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions_roles`
--

CREATE TABLE `permissions_roles` (
  `ID_PERM_ROL` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `PERMISSIONS_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ROLE_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `powers`
--

CREATE TABLE `powers` (
  `ID_POWER` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `NAME_POWER` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IMG_POWER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prime_gifts`
--

CREATE TABLE `prime_gifts` (
  `ID_PRIMEG` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `NAME_PRIMEG` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IMG_PRIMEG` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rarity`
--

CREATE TABLE `rarity` (
  `ID_RARITY` int(11) NOT NULL,
  `NAME_RARITY` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `ID_ROL` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `NAME_ROL` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suggestions`
--

CREATE TABLE `suggestions` (
  `ID_SUG` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `USER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `COMMENT_SUG` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survivors`
--

CREATE TABLE `survivors` (
  `ID_SURV` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `GENDER_SURV_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IMG_SURV_BANNER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IMG_SURV_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DLC_SURV_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `PERK_SURV_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NAME_SURV` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ABOUT_SURV` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `LORE` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NATIONALITY` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `VOICES_ACTOR` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiers`
--

CREATE TABLE `tiers` (
  `ID_TIER` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `NAME_TIER` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `SHORT_TIER` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `COLOR` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tier_characters`
--

CREATE TABLE `tier_characters` (
  `ID_T_CHA` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `NAME_TIER` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `CHARACTER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TIER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `WIN_RATE` float DEFAULT NULL,
  `PERIOD` date DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `ID_TRAN` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `SHORT_NAME` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `TEXT` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `ID_USER` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `GENDER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IMG_USER_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ROLE_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NAMES_USER` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `LAST_NAME_USER` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `EMAIL_USER` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `PASSWORD_USER` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NUMBER_PHONE_USER` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `LAST_LOGIN_USER` date DEFAULT NULL,
  `BIRTHDAY_USER` date DEFAULT NULL,
  `AUTH_TWO_STEPS` tinyint(4) DEFAULT NULL,
  `CODE_TWO_STEPS` smallint(4) DEFAULT NULL,
  `CODE_VERIFY_REGISTER` mediumint(6) DEFAULT NULL,
  `VERIFIED` tinyint(4) DEFAULT NULL,
  `SECOND_NUMBER_AUTH` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weapons`
--

CREATE TABLE `weapons` (
  `ID_WEAPON` char(36) COLLATE utf8_spanish_ci NOT NULL,
  `NAME_WEAPON` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPTION` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IMG_WEAPON_FK` char(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`ID_ACHI`);

--
-- Indices de la tabla `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`ID_ADDON`);

--
-- Indices de la tabla `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`ID_BACKG`);

--
-- Indices de la tabla `bloodpoints`
--
ALTER TABLE `bloodpoints`
  ADD PRIMARY KEY (`ID_BLP`);

--
-- Indices de la tabla `dlc`
--
ALTER TABLE `dlc`
  ADD PRIMARY KEY (`ID_DLC`);

--
-- Indices de la tabla `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`ID_GEN`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID_IMG`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ID_ITEM`);

--
-- Indices de la tabla `killers`
--
ALTER TABLE `killers`
  ADD PRIMARY KEY (`ID_KILLER`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`ID_LANG`);

--
-- Indices de la tabla `languages_translations`
--
ALTER TABLE `languages_translations`
  ADD PRIMARY KEY (`ID_LANG_TRAN`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID_LOG`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`ID_MENU`);

--
-- Indices de la tabla `menus_roles`
--
ALTER TABLE `menus_roles`
  ADD PRIMARY KEY (`ID_MENUS_ROLES`);

--
-- Indices de la tabla `moris`
--
ALTER TABLE `moris`
  ADD PRIMARY KEY (`ID_MORIS`);

--
-- Indices de la tabla `offerings`
--
ALTER TABLE `offerings`
  ADD PRIMARY KEY (`ID_OFF`);

--
-- Indices de la tabla `perks`
--
ALTER TABLE `perks`
  ADD PRIMARY KEY (`ID_PER`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`ID_PERM`);

--
-- Indices de la tabla `permissions_roles`
--
ALTER TABLE `permissions_roles`
  ADD PRIMARY KEY (`ID_PERM_ROL`);

--
-- Indices de la tabla `powers`
--
ALTER TABLE `powers`
  ADD PRIMARY KEY (`ID_POWER`);

--
-- Indices de la tabla `prime_gifts`
--
ALTER TABLE `prime_gifts`
  ADD PRIMARY KEY (`ID_PRIMEG`);

--
-- Indices de la tabla `rarity`
--
ALTER TABLE `rarity`
  ADD PRIMARY KEY (`ID_RARITY`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID_ROL`);

--
-- Indices de la tabla `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`ID_SUG`);

--
-- Indices de la tabla `survivors`
--
ALTER TABLE `survivors`
  ADD PRIMARY KEY (`ID_SURV`);

--
-- Indices de la tabla `tiers`
--
ALTER TABLE `tiers`
  ADD PRIMARY KEY (`ID_TIER`);

--
-- Indices de la tabla `tier_characters`
--
ALTER TABLE `tier_characters`
  ADD PRIMARY KEY (`ID_T_CHA`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`ID_TRAN`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_USER`);

--
-- Indices de la tabla `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`ID_WEAPON`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
