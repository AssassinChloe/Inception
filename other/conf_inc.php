<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', getenv("MYSQL_DATABASE"));

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', getenv("MYSQL_USER") );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', getenv("MYSQL_PASSWORD") );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', getenv("WP_DB_HOST"));

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Nt`Q=TpWvIX;yk`DMINA2>_hb_x_O]>(Dhy<2,<dtr1dT+j2^yM<f`.4E0i01eg%' );
define( 'SECURE_AUTH_KEY',  'TZ*U<MYbE,k&TU1NDo 4voD>ie*0XiR?ybt+Hx!*{:}3U!vZF{:MEAD>qF|+L8JJ' );
define( 'LOGGED_IN_KEY',    '4&)0NT.km|*N)F6=Tu#8BmR?ol<}#8=y#U~:Y!rIIZk*Tm>d_Czgp#@hzeEZ>:1(' );
define( 'NONCE_KEY',        ':qDngVf,NM+2@|whWh.=uRoF7Wz9)HH(sy19*UIHcoa3)N1Z1A8-`[xMP2cknz5T' );
define( 'AUTH_SALT',        'jlEM_jjq=P*>([kj5ea2}q:^N1w[Ut_NJTugAw]W{2v3O4,j|68A:QGWSdHJc8MJ' );
define( 'SECURE_AUTH_SALT', 'Kacl:<7XN >t){y0-N;0[Wf%ysv_K RoLvfHV?3D7K2xW&:#SnV&:oVaM$h1C`I>' );
define( 'LOGGED_IN_SALT',   '!)$^Z#pU,O(}AgmOiL,;)3:Z,a1qe=W*R/:}UU)hL-W7T:a0#OIf18_;5(]T^3tA' );
define( 'NONCE_SALT',       '(@)%y,qzg/|T1o[]$RRE;b<p!/az5^DYAF$TN$R8~<-|`GO=&4%1.jD*v0(k.[B-' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = getend("WP_PREFIX");

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );
