<?php
class DeveloperAssistance_ContentControllerExtension extends Extension {
	public function onAfterInit() {
		$this->loadCSS();
		$this->loadFonts();
		$this->loadJS();
	}

	public function getCurrentMember() {
		return Member::currentUserID();
	}

	public function isCMSAdmin() {
		return $this->getCurrentMember() ? true : false;
	}

	/**
	 * Loads all css needed by this page
	 * If the user is an admin, this will load the non-minified version of the css
	 */
	public function loadCSS() {		
		if ($this->isCMSAdmin()) {
			Requirements::css(CSS_PATH . '/concat/style.concat.css');
		} else {
			Requirements::css(CSS_PATH . '/min/style.min.css');
		}
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
		if ($this->isCMSAdmin()) {
			Requirements::javascript(JS_PATH . '/concat/app.concat.js');
		} else {
			Requirements::javascript(JS_PATH . '/min/app.min.js');
		}
	}
}