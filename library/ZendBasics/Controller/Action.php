<?

class ZendBasics_Controller_Action extends Zend_Controller_Action {

	public function preDispatch() {
		if (!ZendBasics_Auth::getInstance()->hasIdentity()) return $this->_forward('index', 'index');
	}

	public function postDispatch() {
		$this->view->controller = $this->getRequest()->getControllerName();
		$this->view->action = $this->getRequest()->getActionName();
	}

}
