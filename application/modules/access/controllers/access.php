<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Access extends MX_Controller {

	function __Construct(){
		parent::__Construct();
		$this->load->helper('form');
		$this->load->library('form_validation');
		$this->load->model('access_model');
	}

	function index()
	{
		$data = array
		(	
			'title'  => '<h3>Login Form</h3>',
			'action' => 'access/validate'
		);
		$data['error'] = '';
		$this->load->view('login',$data);
	}

	function validate(){		
		$result = $this->access_model->checkUser();
		if($result == TRUE)
		{
			$this->load->library('session');
			$newSession = array (
				'userID' => $result[0]->usrID,
				'fullname' => $result[0]->fullname,
				'is_logged_in' => TRUE
			);
			$this->session->set_userdata($newSession);
			redirect('admin/shop');
		}else{
			$this->index();
		}	
	}

	function logout(){
		$this->load->library('session');
		$this->session->sess_destroy();
		redirect('access');
	}
}