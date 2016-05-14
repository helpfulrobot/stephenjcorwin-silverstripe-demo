<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);


	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$tab = 'Root.Main';

		return $fields;
	}
}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		$this->loadCSS();
		$this->loadFonts();
		$this->customJQueryScripts();
		$this->loadJS();
	}

	public function customJQueryScripts($html = '') {
		$html .= 'var baseURL = "'. Director::baseURL() .'";';
		$html .= 'var linkURL = "'. $this->Link() .'";';
		$html .= 'var directivesURL = "'. DIRECTIVES_PATH .'";';
		$html .= 'var ThemeDir = "' .  $this->ThemeDir() . '";';
		Requirements::customScript($html);
	}

	/**
	 * Loads all css needed by this page
	 */
	public function loadCSS() {
		
	}

	/**
	 * Loads any additional fonts needed by this page
	 */
	public function loadFonts() {
		
	}

	/**
	 * Loads any additional javascript files needed by this page
	 */
	public function loadJs() {
		Requirements::javascript('framework/thirdparty/jquery/jquery.js');
		Requirements::javascript(JS_PATH . '/angular/angular-1.4.7.min.js');
		Requirements::javascript($this->ThemeDir() . 'javascript/script.js');
	}
}
