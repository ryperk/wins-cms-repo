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
		$mydata['page'] = 'admin_dashboard';
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
		$dataPost = array (
			'id' 			=> $this->input->post('deal_id'),
			'title'			=> $this->input->post('deal_title'),
			'price'			=> $this->input->post('deal_price'),
			'discount'		=> $this->input->post('deal_discount'),
			'expired_date'	=> $this->input->post('deal_expired_date'),
			'description'	=> $this->input->post('deal_desc'),
			'userID'		=> $this->input->post('deal_id')
		);
		$send = $this->admin_display->save_deal($dataPost);	
		if($send){
			redirect('admin/shop');
		}else{
			echo "gagal";
		}
	}


}
