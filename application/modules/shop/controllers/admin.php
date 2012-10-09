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
		$this->admin_display->dashboard($mydata);
	}

	public function list_deals()
	{
		$mydata['title'] = 'Deals';
		$this->admin_display->dashboard($mydata);
	}

	public function list_products()
	{
		$mydata['title'] = 'Products';
		$this->admin_display->dashboard($mydata);
	}

	public function statistic()
	{
		$mydata['title'] = 'Products';
		$this->admin_display->dashboard($mydata);
	}

	public function deal_manage(){
		$mydata['title'] = 'Deal Manager';
		$this->admin_display->deal_manage($mydata);	
	}
}
