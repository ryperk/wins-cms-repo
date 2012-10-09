<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Shop extends MX_Controller {

	public function __Construct() {
		parent::__Construct();
		$this->load->model('shop_display');
	}

	public function index()
	{
		$mydata = array(
			'title' => 'Directory | WINSGlobal',
			'param' => $this->uri->segment('3'),
			'cat' 	=> $this->uri->segment('2'),
			'icon'	=> base_url('assets/images_baru/icon_deal.png')		
		);
		$this->shop_display->deals($mydata);		
	}

	public function index_old() {
		$mydata = array (
			'title' => "Homepage | WINSGlobal",
			'cat' => $this->uri->segment('2')
		);	
		$this->shop_display->homepage($mydata);
	}

	public function deals()
	{
		$mydata = array(
			'title' => 'Deals | WINSGlobal',
			'param' => $this->uri->segment('3'),
			'cat' => $this->uri->segment('2'),
			'icon'	=> base_url('assets/images_baru/icon_deal.png')
		);
		$this->shop_display->deals($mydata);	
	}

	public function products()
	{
		$mydata = array(
			'title' => 'Products | WINSGlobal',
			'param' => $this->uri->segment('3'),
			'cat' => $this->uri->segment('2'),
			'icon' => base_url('assets/images_baru/icon_product.png')
		);
		$this->shop_display->products($mydata);		
	}

	public function category()
	{
		$mydata = array(
			'title' => 'Products | WINSGlobal',
			'param' => $this->uri->segment('3'),
			'cat' => $this->uri->segment('2'),
			'icon' => base_url('assets/images_baru/icon_product.png')
		);
		$this->shop_display->category($mydata);			
	} 
}