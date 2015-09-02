<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'drpp');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'LiV59I/|`L8EK `76]IV,,&nCp4c4E|/hS<XgJNI0+PGJ(EQD|~$_U9&7OAkR5-r');
define('SECURE_AUTH_KEY',  '*?:[.8PA{oA72-D0D|CGeP/.b!1CQ7->_%FtqF=La.@G.Eu3>g`698=qUQ+?jr4=');
define('LOGGED_IN_KEY',    'aRP%XUH+4`oN-B@kgPO]bAA_4`:6;b0:8X.X8h%oj/9#I_oj3^z| l{M|$[{i(-H');
define('NONCE_KEY',        '+Zo-K2w-jD|4s!QjG_^`%p!6.s_?4vI4_L@4=/bBk^8F<-Z;(qz].W=ZZ3kX`.to');
define('AUTH_SALT',        '1+,g!S]s6ECC0Vt-Iz2as|e@r15t^oS+R[|AhBV#]hcUgI-JAY-?q@xY.L:4g>L+');
define('SECURE_AUTH_SALT', ' :`/D_Z~O}% 7[EVsl]sh1fz|V+<WifElwq~0E%wzE* o#hiz ]<e9fm-_t,Vb(R');
define('LOGGED_IN_SALT',   '~l9cNzBIy^GPo?(}MoPsdbBvlMG`J{l{B&B@h~1wc:K@l?gFvz!A+=1wLqJ;|KW ');
define('NONCE_SALT',       's#f9nC]zv0%tC+0j&FXNC)A~$oVa|zAqG%lCZricm0xmeuA)BZ+3Mlm#7]uy/EM^');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
