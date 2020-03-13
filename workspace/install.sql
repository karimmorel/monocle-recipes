
-- *** STRUCTURE:`tbl_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_author` ***

-- *** STRUCTURE:`tbl_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***

-- *** STRUCTURE:`tbl_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `time` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***

-- *** STRUCTURE:`tbl_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (21, 37, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (19, 35, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (20, 36, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (16, 30, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (17, 33, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (18, 34, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (15, 27, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (13, 25, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (14, 26, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (12, 23, NULL);

-- *** STRUCTURE:`tbl_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_select` ***
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (2, 29, 'no', 'no', NULL, 23);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (3, 31, 'no', 'no', NULL, 23);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (4, 32, 'no', 'no', NULL, 27);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (5, 39, 'no', 'no', NULL, 23);

-- *** STRUCTURE:`tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS`tbl_fields_selectbox_link`;
CREATE TABLE`tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_selectbox_link` ***

-- *** STRUCTURE:`tbl_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (9, 38, NULL, 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (8, 28, NULL, 15);

-- *** STRUCTURE:`tbl_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_upload` ***
INSERT INTO`tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (2, 24, '/workspace', '/\\.(?:bmp|gif|jpe?g|png)$/i');

-- *** STRUCTURE:`tbl_entries_data_23` ***
DROP TABLE IF EXISTS`tbl_entries_data_23`;
CREATE TABLE`tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_23` ***
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 7, 'vegetarian-casserole', 'Vegetarian casserole');

-- *** STRUCTURE:`tbl_entries_data_24` ***
DROP TABLE IF EXISTS`tbl_entries_data_24`;
CREATE TABLE`tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_24` ***
INSERT INTO`tbl_entries_data_24` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (1, 7, 'veg-casserole.jpg', 37797, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2020-03-13T14:24:31+00:00\";s:5:\"width\";i:300;s:6:\"height\";i:237;}');

-- *** STRUCTURE:`tbl_entries_data_25` ***
DROP TABLE IF EXISTS`tbl_entries_data_25`;
CREATE TABLE`tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_25` ***
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 7, 'vegetarian-casserole', 'Vegetarian casserole');

-- *** STRUCTURE:`tbl_entries_data_26` ***
DROP TABLE IF EXISTS`tbl_entries_data_26`;
CREATE TABLE`tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_26` ***
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 7, 'vegetarian-casserole', 'vegetarian-casserole');

-- *** STRUCTURE:`tbl_entries_data_27` ***
DROP TABLE IF EXISTS`tbl_entries_data_27`;
CREATE TABLE`tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_27` ***
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 8, 'courgettes', 'courgettes');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 9, 'cumin', 'cumin');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 10, 'dried-thyme', 'dried thyme');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 11, 'garlic-cloves', 'garlic cloves');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 12, 'medium-carrots', 'medium carrots');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 13, 'medium-sticks-celery', 'medium sticks celery');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 14, 'olive-or-rapeseed-oil', 'olive or rapeseed oil');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 15, 'onion', 'onion');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 16, 'red-pepper', 'red pepper');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 17, 'smoked-paprika', 'smoked paprika');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 18, 'springs-fresh-thyme', 'springs fresh thyme');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 19, 'tins-tomatoes-or-peeled-cherry-tomatoes', 'tins tomatoes or peeled cherry tomatoes');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 20, 'vegetable-stock-cube-we-used-1-knorr-vegetable-stock-pot', 'vegetable stock cube (we used 1 Knorr vegetable stock pot)');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 21, 'yellow-pepper', 'yellow pepper');

-- *** STRUCTURE:`tbl_entries_data_28` ***
DROP TABLE IF EXISTS`tbl_entries_data_28`;
CREATE TABLE`tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_28` ***
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 22, 'Heat the oil, in a large, heavy-based pan.', NULL);
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 23, 'Add the onions and cook gently 5 - 10 mins until softened.', NULL);
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 24, 'Add the garlic, spices, dried thyme, carrots, celery, and peppers and cook for 5 minutes.', NULL);
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 25, 'Add the tomatoes, stock, courgettes and fresh thyme and cook for 20 - 25 minutes.', NULL);
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 26, 'Take out the thyme springs.', NULL);
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 27, 'Stir in the lentils and bring back to a simmer.', NULL);
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 28, 'Serve with wild and white basmati rice, mash or quinoa.', NULL);

-- *** STRUCTURE:`tbl_entries_data_29` ***
DROP TABLE IF EXISTS`tbl_entries_data_29`;
CREATE TABLE`tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_29` ***
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 22, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 23, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 24, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 25, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 26, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 27, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 28, 'vegetarian-casserole', 'Vegetarian casserole');

-- *** STRUCTURE:`tbl_entries_data_30` ***
DROP TABLE IF EXISTS`tbl_entries_data_30`;
CREATE TABLE`tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_30` ***
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 22, 1, 1);
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 23, 2, 2);
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 24, 3, 3);
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 25, 4, 4);
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 26, 5, 5);
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 27, 6, 6);
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 28, 7, 7);

-- *** STRUCTURE:`tbl_entries_data_31` ***
DROP TABLE IF EXISTS`tbl_entries_data_31`;
CREATE TABLE`tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_31` ***
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 29, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 30, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 31, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 32, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 33, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 34, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 35, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 36, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 37, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 38, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 39, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 40, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 41, 'vegetarian-casserole', 'Vegetarian casserole');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 42, 'vegetarian-casserole', 'Vegetarian casserole');

-- *** STRUCTURE:`tbl_entries_data_32` ***
DROP TABLE IF EXISTS`tbl_entries_data_32`;
CREATE TABLE`tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_32` ***
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 29, 'olive-or-rapeseed-oil', 'olive or rapeseed oil');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 30, 'onion', 'onion');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 31, 'garlic-cloves', 'garlic cloves');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 32, 'smoked-paprika', 'smoked paprika');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 33, 'cumin', 'cumin');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 34, 'dried-thyme', 'dried thyme');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 35, 'medium-carrots', 'medium carrots');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 36, 'medium-sticks-celery', 'medium sticks celery');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 37, 'red-pepper', 'red pepper');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 38, 'yellow-pepper', 'yellow pepper');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 39, 'tins-tomatoes-or-peeled-cherry-tomatoes', 'tins tomatoes or peeled cherry tomatoes');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 40, 'vegetable-stock-cube-we-used-1-knorr-vegetable-stock-pot', 'vegetable stock cube (we used 1 Knorr vegetable stock pot)');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 41, 'courgettes', 'courgettes');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 42, 'springs-fresh-thyme', 'springs fresh thyme');

-- *** STRUCTURE:`tbl_entries_data_33` ***
DROP TABLE IF EXISTS`tbl_entries_data_33`;
CREATE TABLE`tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_33` ***
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 29, 1, 1);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 30, 1, 1);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 31, 3, 3);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 32, 1, 1);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 33, '½', '½');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 34, 1, 1);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 35, 3, 3);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 36, 2, 2);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 37, 1, 1);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 38, 1, 1);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 39, 2, 2);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 40, 250, 250);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 41, 2, 2);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 42, 2, 2);

-- *** STRUCTURE:`tbl_entries_data_34` ***
DROP TABLE IF EXISTS`tbl_entries_data_34`;
CREATE TABLE`tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_34` ***
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 29, 'tbsp', ' tbsp');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 32, 'tsp', ' tsp');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 33, 'tsp', ' tsp');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 34, 'tbsp', ' tbsp');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 39, 'x-400g', ' x 400g');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 40, 'ml', 'ml');

-- *** STRUCTURE:`tbl_entries_data_35` ***
DROP TABLE IF EXISTS`tbl_entries_data_35`;
CREATE TABLE`tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_35` ***
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 30, 'finely-chopped', 'finely chopped');
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 31, 'sliced', 'sliced');
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 35, 'sliced-about-200g', 'sliced (about 200g)');
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 36, 'finely-sliced-about-120g', 'finely sliced (about 120g)');
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 37, 'chopped', 'chopped');
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 38, 'chopped', 'chopped');
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 41, 'sliced-thickly-about-300g', 'sliced thickly (about 300g)');

-- *** STRUCTURE:`tbl_entries_data_36` ***
DROP TABLE IF EXISTS`tbl_entries_data_36`;
CREATE TABLE`tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_36` ***
INSERT INTO`tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 43, 'karim', 'Karim');

-- *** STRUCTURE:`tbl_entries_data_37` ***
DROP TABLE IF EXISTS`tbl_entries_data_37`;
CREATE TABLE`tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_37` ***
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 43, 'job-karimmorel-gmail-com', 'job.karimmorel@gmail.com');

-- *** STRUCTURE:`tbl_entries_data_38` ***
DROP TABLE IF EXISTS`tbl_entries_data_38`;
CREATE TABLE`tbl_entries_data_38` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_38` ***
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 43, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL);

-- *** STRUCTURE:`tbl_entries_data_39` ***
DROP TABLE IF EXISTS`tbl_entries_data_39`;
CREATE TABLE`tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_39` ***
INSERT INTO`tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 43, 'vegetarian-casserole', 'Vegetarian casserole');

-- *** DATA:`tbl_entries` ***
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (10, 8, 1, 1, '2020-03-13 14:24:58', '2020-03-13 14:24:58', '2020-03-13 14:24:58', '2020-03-13 14:24:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (9, 8, 1, 1, '2020-03-13 14:24:49', '2020-03-13 14:24:49', '2020-03-13 14:24:49', '2020-03-13 14:24:49');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (12, 8, 1, 1, '2020-03-13 14:25:15', '2020-03-13 14:25:15', '2020-03-13 14:25:15', '2020-03-13 14:25:15');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (11, 8, 1, 1, '2020-03-13 14:25:06', '2020-03-13 14:25:06', '2020-03-13 14:25:06', '2020-03-13 14:25:06');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (8, 8, 1, 1, '2020-03-13 14:24:43', '2020-03-13 14:24:43', '2020-03-13 14:24:43', '2020-03-13 14:24:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 7, 1, 1, '2020-03-13 14:24:31', '2020-03-13 14:24:31', '2020-03-13 14:24:31', '2020-03-13 14:24:31');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (13, 8, 1, 1, '2020-03-13 14:25:23', '2020-03-13 14:25:23', '2020-03-13 14:25:23', '2020-03-13 14:25:23');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (14, 8, 1, 1, '2020-03-13 14:25:37', '2020-03-13 14:25:37', '2020-03-13 14:25:37', '2020-03-13 14:25:37');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (15, 8, 1, 1, '2020-03-13 14:25:43', '2020-03-13 14:25:43', '2020-03-13 14:25:43', '2020-03-13 14:25:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (16, 8, 1, 1, '2020-03-13 14:25:48', '2020-03-13 14:25:48', '2020-03-13 14:25:48', '2020-03-13 14:25:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (17, 8, 1, 1, '2020-03-13 14:25:56', '2020-03-13 14:25:56', '2020-03-13 14:25:56', '2020-03-13 14:25:56');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (18, 8, 1, 1, '2020-03-13 14:26:02', '2020-03-13 14:26:02', '2020-03-13 14:26:02', '2020-03-13 14:26:02');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (19, 8, 1, 1, '2020-03-13 14:26:08', '2020-03-13 14:26:08', '2020-03-13 14:26:08', '2020-03-13 14:26:08');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (20, 8, 1, 1, '2020-03-13 14:26:28', '2020-03-13 14:26:28', '2020-03-13 14:26:28', '2020-03-13 14:26:28');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (21, 8, 1, 1, '2020-03-13 14:26:34', '2020-03-13 14:26:34', '2020-03-13 14:26:34', '2020-03-13 14:26:34');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (22, 9, 1, 1, '2020-03-13 14:26:55', '2020-03-13 14:26:55', '2020-03-13 14:26:55', '2020-03-13 14:26:55');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (23, 9, 1, 1, '2020-03-13 14:27:11', '2020-03-13 14:27:11', '2020-03-13 14:27:11', '2020-03-13 14:27:11');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (24, 9, 1, 1, '2020-03-13 14:27:26', '2020-03-13 14:27:26', '2020-03-13 14:27:26', '2020-03-13 14:27:26');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (25, 9, 1, 1, '2020-03-13 14:27:39', '2020-03-13 14:27:39', '2020-03-13 14:27:39', '2020-03-13 14:27:39');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (26, 9, 1, 1, '2020-03-13 14:27:50', '2020-03-13 14:27:50', '2020-03-13 14:27:50', '2020-03-13 14:27:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (27, 9, 1, 1, '2020-03-13 14:28:02', '2020-03-13 14:28:02', '2020-03-13 14:28:02', '2020-03-13 14:28:02');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (28, 9, 1, 1, '2020-03-13 14:28:15', '2020-03-13 14:28:15', '2020-03-13 14:28:15', '2020-03-13 14:28:15');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (29, 10, 1, 1, '2020-03-13 14:29:18', '2020-03-13 14:29:18', '2020-03-13 14:29:18', '2020-03-13 14:29:18');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (30, 10, 1, 1, '2020-03-13 14:29:31', '2020-03-13 14:29:31', '2020-03-13 14:29:31', '2020-03-13 14:29:31');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (31, 10, 1, 1, '2020-03-13 14:29:50', '2020-03-13 14:29:50', '2020-03-13 14:29:50', '2020-03-13 14:29:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (32, 10, 1, 1, '2020-03-13 14:30:07', '2020-03-13 14:30:07', '2020-03-13 14:30:07', '2020-03-13 14:30:07');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (33, 10, 1, 1, '2020-03-13 14:30:42', '2020-03-13 14:30:42', '2020-03-13 14:30:42', '2020-03-13 14:30:42');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (34, 10, 1, 1, '2020-03-13 14:30:55', '2020-03-13 14:30:55', '2020-03-13 14:30:55', '2020-03-13 14:30:55');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (35, 10, 1, 1, '2020-03-13 14:31:11', '2020-03-13 14:31:11', '2020-03-13 14:31:11', '2020-03-13 14:31:11');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (36, 10, 1, 1, '2020-03-13 14:31:24', '2020-03-13 14:31:24', '2020-03-13 14:31:24', '2020-03-13 14:31:24');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (37, 10, 1, 1, '2020-03-13 14:31:34', '2020-03-13 14:31:34', '2020-03-13 14:31:34', '2020-03-13 14:31:34');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (38, 10, 1, 1, '2020-03-13 14:31:47', '2020-03-13 14:31:47', '2020-03-13 14:31:47', '2020-03-13 14:31:47');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (39, 10, 1, 1, '2020-03-13 14:32:07', '2020-03-13 14:32:07', '2020-03-13 14:32:07', '2020-03-13 14:32:07');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (40, 10, 1, 1, '2020-03-13 14:32:31', '2020-03-13 14:32:31', '2020-03-13 14:32:31', '2020-03-13 14:32:31');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (41, 10, 1, 1, '2020-03-13 14:32:46', '2020-03-13 14:32:46', '2020-03-13 14:32:46', '2020-03-13 14:32:46');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (42, 10, 1, 1, '2020-03-13 14:32:56', '2020-03-13 14:32:56', '2020-03-13 14:32:56', '2020-03-13 14:32:56');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (43, 11, 1, 1, '2020-03-13 14:38:46', '2020-03-13 14:38:46', '2020-03-13 14:38:46', '2020-03-13 14:38:46');

-- *** DATA:`tbl_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'jit_image_manipulation', 'enabled', 1.47);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'markdown', 'enabled', 1.21);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'xssfilter', 'enabled', '1.5.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'debugdevkit', 'enabled', '1.3.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'export_ensemble', 'enabled', '2.2.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'selectbox_link_field', 'enabled', '2.0.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'profiledevkit', 'enabled', '1.5.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'maintenance_mode', 'enabled', '1.9.4');

-- *** DATA:`tbl_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 1, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 1, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 3, '/blueprints/events/', 'AppendEventFilterDocumentation', 'appendEventFilterDocumentation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 3, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 3, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 3, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 3, '/frontend/', 'FrontendParamsResolve', 'frontendParamsResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 4, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 4, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 5, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 7, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 7, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 8, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 8, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 8, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 8, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (17, 8, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (18, 8, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 8, '/frontend/', 'FrontendParamsResolve', '__addParam');

-- *** DATA:`tbl_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (38, 'Comment', 'comment', 'textarea', 11, 'yes', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Email', 'email', 'input', 11, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Name', 'name', 'input', 11, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Precision', 'precision', 'input', 10, 'no', 4, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Unit', 'unit', 'input', 10, 'no', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Quantity', 'quantity', 'input', 10, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Ingredient', 'ingredient', 'select', 10, 'yes', 1, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Recipe', 'recipe', 'select', 10, 'yes', 0, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Order', 'order', 'input', 9, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Recipe', 'recipe', 'select', 9, 'yes', 1, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Description', 'description', 'textarea', 9, 'yes', 0, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Name', 'name', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Slug', 'slug', 'input', 7, 'yes', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Image description', 'image-description', 'input', 7, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Image', 'image', 'upload', 7, 'yes', 1, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Name', 'name', 'input', 7, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Recipe', 'recipe', 'select', 11, 'yes', 3, 'sidebar', 'yes');

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (77, NULL, 'Recipe', 'recipe', NULL, 'name', 'recipes_quantity,recipe_page,method,comments', 'comments', 1);

-- *** DATA:`tbl_pages_types` ***

-- *** DATA:`tbl_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (10, 'Recipe Ingredients', 'recipe-ingredients', 4, 'no', 'no', 'Relationships', 1, 1, '2020-03-13 14:22:19', '2020-03-13 14:22:19', '2020-03-13 14:22:19', '2020-03-13 14:22:19');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (9, 'Methods', 'method', 3, 'no', 'no', 'Content', 1, 1, '2020-03-13 14:19:38', '2020-03-13 14:19:38', '2020-03-13 14:20:14', '2020-03-13 14:20:14');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (8, 'Ingredients', 'ingredient', 2, 'no', 'no', 'Content', 1, 1, '2020-03-13 14:18:23', '2020-03-13 14:18:23', '2020-03-13 14:18:23', '2020-03-13 14:18:23');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 'Recipes', 'recipe', 1, 'no', 'no', 'Content', 1, 1, '2020-03-13 14:17:52', '2020-03-13 14:17:52', '2020-03-13 14:17:52', '2020-03-13 14:17:52');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (11, 'Comments', 'comments', 5, 'no', 'no', 'Social', 1, 1, '2020-03-13 14:24:04', '2020-03-13 14:24:04', '2020-03-13 14:24:04', '2020-03-13 14:24:04');

-- *** DATA:`tbl_sections_association` ***
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (8, 8, 27, 10, 32, 'yes', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (7, 7, 23, 10, 31, 'yes', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (6, 7, 23, 9, 29, 'yes', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (9, 7, 23, 11, 39, 'yes', NULL, NULL);
