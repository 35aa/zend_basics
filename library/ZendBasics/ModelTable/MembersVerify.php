<?

class ZendBasics_ModelTable_MembersVerify extends Zend_Db_Table_Abstract {
	protected $_name = 'members_verify';
	protected $_rowClass = 'ZendBasics_Model_MembersVerify';

	public function saveNewVerify(ZendBasics_Model_Member $newMember) {
		$newVerify = $this->createRow();

		$newVerify->member_id = $newMember->id;
		$newVerify->generateVerifyKey();
		$newVerify->created = time();

		$newVerify->save();
		return $newVerify;
	}

	public function checkCodeByMemberID(ZendBasics_Model_Member $member, $verify_key) {
		//get all non-verified within 2 hours since code was sent
		$select = $this->select()->where('verified IS NULL')->where('member_id = ?', $member->id)
														 ->where('verify_key = ?', $verify_key)->where('created > unix_timestamp() - 2*3600')->limit(1);
		return $this->fetchRow($select);
	}
}
