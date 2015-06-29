<?php

class Application_Model_Login extends Zend_Db_Table_Abstract
{
	protected $_name = "tb_usuario";
	protected $_primary = "idUsuario";

	public function loginUser($userName, $password)
	{
		$password = md5($password);
		$query = $this->select()
			->where("loginUsuario = ?",$userName)
			->where("senhaUsuario = ?",$password);

		$user = $this->fetchRow($query);
		if(!is_null($user)) {
			$session = new Zend_Session_Namespace('session');
			$session->user = array(
				"login"=> $user->loginUsuario,
				"perfilUsuario" => $user->perfilUsuario
			);
			return true;
		} else {
			return false;
		}
	}


}