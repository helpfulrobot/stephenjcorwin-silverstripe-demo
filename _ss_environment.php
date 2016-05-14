<?php
	define('ENIVORNMENT_PATH', '_environment/');
	define('ENIVORNMENT_PROFILES_PATH', ENIVORNMENT_PATH . 'profiles/');

	global $environment_active_profile;
	require_once(ENIVORNMENT_PATH . 'active.php');

	// imports the environment profile file if set
	if ($environment_active_profile) require_once(ENIVORNMENT_PROFILES_PATH . $environment_active_profile . '.php');