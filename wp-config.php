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
define( 'DB_NAME', 'wplearning' );

/** MySQL database username */
define( 'DB_USER', 'wp' );

/** MySQL database password */
define( 'DB_PASSWORD', 'wp' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '536dTMT&*SD._|{J)ZR]YzfGCO$LF>xd$EmvE5y4]0M}uj?}pvi]cSW?`[Dq%.89' );
define( 'SECURE_AUTH_KEY',   'y-gz^yq-x#B%48baxb5<zO|(u9Ex5%EaK^ro$>n10(wnNd>Zx{S40#ddhyVc.1?X' );
define( 'LOGGED_IN_KEY',     'jbgyOiuDam.&GlNK6^7;J[=A#a%gcK#EA`Vem1I.yy3+a`-3Fa#:;07LL6Y B=$;' );
define( 'NONCE_KEY',         'a#6znV2_(A{o@^u`%@&1XTUj;2?eZ+(u6Ep:3mA>GB^s[s_fAWZiW3mYE>89>JmR' );
define( 'AUTH_SALT',         ',{|2fc1JJdbz=8$1XR|OAuqPO*>P,HizUU#;Q45JOG%X8fkPce=qzcNRYlf:jBq.' );
define( 'SECURE_AUTH_SALT',  'L57&W(c8i~YgJ|WUQCH1+W*e12/Co0X`Z[s}w@@a*.YAN*>`GZbPjKIs5gIpklp9' );
define( 'LOGGED_IN_SALT',    '(?g`-p(|ubI&ZTaWRT{z)/E!%L*.-5Su*3R3S|:dv[2PD0/*) }9q]SqoC8.5GfG' );
define( 'NONCE_SALT',        'BNK6Op0z(u/qT[gA W&-m3IfW5K.>igCTEVU7{Pc.o?`TEHz%<)RA/AuMf_x+JPK' );
define( 'WP_CACHE_KEY_SALT', ']M0nvykrHce/G!CjxL1V RD#I#5:,Z%Om;5(=ksO^LE:->{=B#ybjR)u>y)[W%j8' );

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


define( 'WP_DEBUG', true );
define( 'WP_DEBUG_DISPLAY', true );
define( 'WP_DEBUG_LOG', true );


/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
