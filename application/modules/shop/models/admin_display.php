<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Admin_display extends CI_Model
{

	var $data = array();
	var $base;

	public function __Construct() {
		parent::__Construct();
		$this->load->library('session');
		// $this->config->item, di setup di config.php line 347
		$this->data['main_css'] = $this->config->item('main_css');
		$this->data['grid_css'] = $this->config->item('grid_css');
		$this->data['custom_css'] = $this->config->item('custom_css');
		$this->data['admin_css'] = $this->config->item('admin_css');
		//$this->data['responsive_css'] = $this->config->item('responsive_css');
		$this->data['main_js'] = $this->config->item('main_js');
		$this->data['bootstrap_js'] = $this->config->item('bootstrap_js');
		$this->data['custom_css'] = $this->config->item('custom_css');
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

	public function dashboard($mydata)
	{
		// Data  
		$this->data['menu']	= $this->db->query("SELECT * FROM admin_menu WHERE parent_id='0'")->result();
		$this->data['submenu']	= $this->db->query("SELECT * FROM admin_menu")->result();
		
		// Tables
		$this->load->library('table'); 
		$tmpl = array (
            'table_open'          => '<table class="table table-striped">',

            'heading_row_start'   => '<tr>',
            'heading_row_end'     => '</tr>',
            'heading_cell_start'  => '<th>',
            'heading_cell_end'    => '</th>',

            'row_start'           => '<tr>',
            'row_end'             => '</tr>',
            'cell_start'          => '<td>',
            'cell_end'            => '</td>',

            'row_alt_start'       => '<tr>',
            'row_alt_end'         => '</tr>',
            'cell_alt_start'      => '<td>',
            'cell_alt_end'        => '</td>',

            'table_close'         => '</table>'
      );

		$this->table->set_template($tmpl);
		$this->table->set_heading('ID', 'Title', 'Price', 'Discount', 'Expired Date', 'Description', 'UserID');
		$deals = $this->db->get('wns_deals');
		

		$this->data['deals_table'] = $this->table->generate($deals); 
		
		$this->data['content']  = $mydata['page'];
		foreach ($mydata as $key => $value) {
			$this->data[$key] = $value;
		}
		$this->load->view('admin/dashboard',$this->data);
	}

	public function save_deal($dataPost)
	{
		$put = $this->db->insert('wns_deals',$dataPost);
		if($put){
			return TRUE;
		}else{
			return FALSE;
		}	
	}	

}	