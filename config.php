<?php


// Eliminate multiple inclusion of config.php
if( !defined('config') )
{
    define('config', 'true', false);

// config.php - useful variables/functions

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for [OpenDocMan */
define('DB_NAME', 'open');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASS', '');

/** MySQL hostname */
/* The MySQL server. It can also include a port number. e.g. "hostname:port" or a path to a 
 * local socket e.g. ":/path/to/socket" for the localhost.  */
define('DB_HOST', 'localhost');

/**
 * Prefix to append to each table name in the database (ex. odm_ would make the tables
 * named "odm_users", "odm_data" etc. Leave this set to the default if you want to keep
 * it the way it was. If you do change this to a different value, make sure it is either
 * a clean-install, or you manually go through and re-name the database tables to match.
 * @DEFAULT 'odm_'
 * @ARG String
 */
$GLOBALS['CONFIG']['db_prefix'] = 'odm_';

/*** DO NOT EDIT BELOW THIS LINE ***/



/** Absolute path to the OpenDocMan directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
}
