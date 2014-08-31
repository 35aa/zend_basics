<?
// here should be implemented logic for restration procedure

class ZendBasics_Mail_SendReset extends Zend_Mail {
	protected $_resetCode;
	protected $_member;
	protected $_host;

	public function getResetCode() {
		return $this->_password_reset;
	}

	public function setResetCode(ZendBasics_Model_MembersReset $value) {
		$this->_password_reset = $value;
	}

	public function getMember() {
		return $this->_member;
	}

	public function setMember(ZendBasics_Model_Member $value) {
		$this->_member = $value;
	}

	public function setHost($host) {
		$this->_host = $host;
	}

	public function getHost() {
		return $this->_host;
	}

	public function sendEmail() {

		$renderer = new Zend_View();
		$includePathOptions = Zend_Controller_Front::getInstance()->getParam('bootstrap')->getApplication()->getOption('includePaths');
		$renderer->setScriptPath($includePathOptions['library'] . '/ZendBasics/Mail/Templates/');
		$renderer->assign('member', $this->getMember());
		$renderer->assign('resetCode', $this->getResetCode());
		$renderer->assign('host', $this->getHost());

		$mail = new Zend_Mail('UTF-8');
		$mail->setFrom('dontreplay@game.mydev.org.ua');
		$mail->setBodyHtml($renderer->render('ResetCode.phtml'));
		$mail->addTo($this->getMember()->email, 'recipient');
		$mail->addBcc(array('zero.ukr@gmail.com', 'alex0germ@gmail.com'), 'recipient');
		$mail->setSubject('ZendBasics::Password Reset');
		$mail->send();
	}
}
