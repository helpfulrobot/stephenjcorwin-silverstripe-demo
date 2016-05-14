<?php

global $project;
$project = 'SS Demonstration';

global $database;

// Use _ss_environment.php file for configuration
require_once('conf/ConfigureFromEnv.php');

define('MYSITE_PATH', basename(dirname(__FILE__)));
define('CSS_PATH', MYSITE_PATH . '/css');
define('JS_PATH', MYSITE_PATH . '/javascript');