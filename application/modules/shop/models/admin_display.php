<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Admin_display extends CI_Model
{

	var $data = array();
	var $base;

	public function __Construct() {
		parent::__Construct();
		$this->load->library('session');
		// $this->config->item, di setup di config.php line 347
		//$this->data['main_css'] = $this->config->item('main_css');
		$this->data['grid_css'] = $this->config->item('grid_css');
		//$this->data['custom_css'] = $this->config->item('custom_css');
		$this->data['admin_css'] = $this->config->item('admin_css');
		//$this->data['responsive_css'] = $this->config->item('responsive_css');
		
		$this->data['main_js'] = $this->config->item('main_js');
		//$this->data['bootstrap_js'] = $this->config->item('bootstrap_js');
		//$this->data['custom_css'] = $this->config->item('custom_css');
		
		$this->data['description'] = "WINS Mall, provide by WINSGobal Indonesia";
		$this->data['keywords'] = "winsglobal,wins,global,shop,store,indonesia";
		$this->data['author'] = "Ryan Permana";
		$this->data['meta_viewport'] = "width=device-width, initial-scale=1.0"; 
		$this->data['robots'] = "NOINDEX, NOFOLLOW";
		$this->base = $this->config->item('base_url');
		// Check session 
		$this->is_logged_in();
	}

	public function is_logged_in() {
		$is_logged_in = $this->session->userdata('is_logged_in');	
		if(!isset($is_logged_in) || $is_logged_in != true)
		{
			redirect('access');
		}
	}

	function getFieldTable($table){
		$fieldsData = $this->db->field_data($table);
		$res = array();
		foreach ($fieldsData as $idx => $row) {
			$res[] = $row;
		}
		return $res;
		
	}

	public function dashboard($mydata)
	{
		// Data  
		$this->data['menu'] 	= $this->db->query("SELECT * FROM admin_menu WHERE parent_id=0")->result();
		$this->data['submenu']	= $this->db->query("SELECT * FROM admin_menu")->result();
		$this->data['deals'] 	= $this->db->get('wns_deals')->result();
		$this->data['fields'] 	= $this->getFieldTable($table='wns_deals');

		$mydata['content'] = $mydata['page'];
		$mydata['deal_menu_list'] ='';

		foreach ($mydata as $key => $value) {
			$this->data[$key] = $value;
		}
		$this->load->view('admin/dashboard',$this->data);
	}

	public function save()
	{
		$dataPost = array (
			'id' => ''
			);
	}

}	