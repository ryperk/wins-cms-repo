<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Admin extends MX_Controller {
	
	public function __Construct()
	{
		parent::__Construct();
		$this->load->model('admin_display');
	}

	public function index()
	{
		$mydata['title'] = 'Dashboard';
		$mydata['page'] = 'index';
		$this->admin_display->dashboard($mydata);
	}

	public function deal_manage(){
		$mydata['title'] = 'Deal Manager';
		$mydata['page'] = 'deal_manage';
		$this->admin_display->dashboard($mydata);	
	}

	public function deal_add(){
		$mydata['title'] = 'Deal Add';
		$mydata['page'] = 'deal_add';
		$this->admin_display->dashboard($mydata);	
	}

	public function deal_category(){
		$mydata['title'] = 'Deal Category';
		$mydata['page'] = 'deal_category';
		$this->admin_display->dashboard($mydata);	
	}

	public function deal_save(){
		$send = $this->admin_display->save();	
		if($send){
			echo "sukses";
		}else{
			echo "gagal";
		}
	}


}
