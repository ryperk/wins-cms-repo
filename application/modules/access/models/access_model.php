<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Access_model extends CI_Model
{
	function __Construct(){
		parent::__Construct();
	}

	function checkUser()
	{
		$email = $this->input->post('email');
		$passwd = md5($this->input->post('passwd'));
		$checking = $this->db->query("SELECT * FROM usr_account LEFT JOIN usr_private on usr_private.usrID=usr_account.usrID WHERE usr_account.usrID=(SELECT usrID FROM usr_contact WHERE email='$email')
		AND usr_account.password = '$passwd'");
		if($checking->num_rows() == 1){
			return $checking->result();
		}else{
			return FALSE;
		}
	}
}