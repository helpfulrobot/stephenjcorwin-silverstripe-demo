<?php
class DemonstrationHolder extends Page {

	private static $db = array(
	);

	private static $has_one = array(
	);

	private static $allowed_children = array ('DemonstrationPage');

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('Content');

		return $fields;
	}
}

class DemonstrationHolder_Controller extends Page_Controller {

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

		// redirect to first child if there are children
		if ($this->Children()) {
			$this->redirect($this->Children()[0]->Link());
		}
	}

}
