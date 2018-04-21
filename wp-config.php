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
define('DB_NAME', 'corporozo');

/** MySQL database username */
define('DB_USER', 'corporozo');

/** MySQL database password */
define('DB_PASSWORD', 'corporozo');

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
define('AUTH_KEY',         'mN]w}PwGUMr!iA7<OV%F_GR?Q[ctl9?j?U<q_}Vk-0z)3^?P:f8~Mu@;fd6+Gu+c');
define('SECURE_AUTH_KEY',  '(xN^O[N+:_1%,DGD3$6t`V<pwyG}ZWdc?=Q.#/MUD/RUe@6_6-;;FXS7Z:$Om0JT');
define('LOGGED_IN_KEY',    'y7ab6eM~vg4sA7qoDLK[S&`Yxd*rQ{v :8s4`<7;JHl46[@0~En9Q!T]`)%Ge0!2');
define('NONCE_KEY',        '3:*xkIbCZwkc04J.miQnw|Ukw}-5czdhW&HUFocHZvV>&Bg(&*oG|emRwJc~L:4N');
define('AUTH_SALT',        'z t30oGwtr&Z9@F34{R%|0e=VT!QviLucIU>_Yf@|&H2#f^;RS68Ky(j#(z5_@F>');
define('SECURE_AUTH_SALT', 'fFT?RiH-MlliMebLoZikbK#BmU8H$ZCR$<@NK9[LK!Xkv5Kd=33/iD3RE9e|b,)S');
define('LOGGED_IN_SALT',   '>pb}{SPpQ?S8Ps,KA;{ $U]%|<q+J1:}[bco+A4-o>~boNzHH3%/L/^c GedvOM_');
define('NONCE_SALT',       'qm?sM_=zdF^jZ;QV+o>pN~MnuAD cI$OvNw,(hqugN]XSc?UDpp_Of}nee|1I[6;');

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
