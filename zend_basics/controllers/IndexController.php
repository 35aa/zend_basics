<?

class IndexController extends Zend_Controller_Action {

	public function indexAction() {
		if (ZendBasics_Auth::getInstance()->hasIdentity()) return $this->_forward('index', 'home');
		//should redirect user to other controllers
		
		//if user has not logged in yet - send him to login page
	}

}
