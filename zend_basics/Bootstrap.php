<?

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap {
//common init methods
	protected function _initDB() {
		$resource = $this->getPluginResource('db');
		Zend_Db_Table_Abstract::setDefaultAdapter($resource->getDbAdapter());
	}

	protected function _initDate() {
		date_default_timezone_set("Europe/Kiev");
	}

//init methods for site
	protected function _initAuth() {
		ZendBasics_Auth::initAuth();
		//if not logged in here should be redirect on login page
	}

	protected function _initView() {
		$view = new Zend_View();
		$viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper(
			'ViewRenderer'
		);
		$view->headerSmall = true;
		$view->isAuthenticated = ZendBasics_Auth::getInstance()->hasIdentity();
		
		# this need to output member near logout button
		if (ZendBasics_Auth::getInstance()->hasIdentity()) {
			$view->member = ZendBasics_Auth::getInstance()->getIdentity();
		}

		$viewRenderer->setView($view);
		return $view;
	}
}
