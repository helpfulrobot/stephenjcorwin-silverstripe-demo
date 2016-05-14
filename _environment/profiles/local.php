<?php
	/**
	 * DATABASE CONFIGURATION
	 */

	// connection details
	define('SS_DATABASE_CLASS', 'MySQLDatabase');
	define('SS_DATABASE_NAME', 'ss_demonstration');
	define('SS_DATABASE_SERVER', 'localhost');
	//define('SS_DATABASE_PORT', <PORT>);

	// use your own credentials
	define('SS_DATABASE_USERNAME', 'root');
	define('SS_DATABASE_PASSWORD', 'root');

	/**
	 * ENVIRONMENT CONFIGURATION
	 */
	define('SS_ENVIRONMENT_TYPE', 'dev');
	define('SS_ERROR_LOG', 'ss_error.log');
	ini_set('date.timezone', 'America/New_York');
	
	define('SS_DEFAULT_ADMIN_USERNAME', 'admin');
	define('SS_DEFAULT_ADMIN_PASSWORD', 'admin');