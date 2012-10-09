<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Shop_display extends CI_Model
{

	var $data = array();
	var $base;

	public function __Construct() {
		parent::__Construct();
		// $this->config->item, di setup di config.php line 347
		$this->data['main_css'] = $this->config->item('main_css');
		$this->data['grid_css'] = $this->config->item('grid_css');
		$this->data['custom_css'] = $this->config->item('custom_css');
		$this->data['responsive_css'] = $this->config->item('responsive_css');
		$this->data['main_js'] = $this->config->item('main_js');
		$this->data['bootstrap_js'] = $this->config->item('bootstrap_js');
		$this->data['custom_css'] = $this->config->item('custom_css');

		$this->data['description'] = "WINS Mall, provide by WINSGobal Indonesia";
		$this->data['keywords'] = "winsglobal,wins,global,shop,store,indonesia";
		$this->data['author'] = "Ryan Permana";
		$this->data['meta_viewport'] = "width=device-width, initial-scale=1.0"; 
		$this->data['robots'] = "NOINDEX, NOFOLLOW";
		//$this->data['base_url'] = $this->config->item('base_url');
		$this->base = $this->config->item('base_url');
	}

	public function sidebarData() 
	{
		$this->data['deals'] = array(
			'1'=> array('icon'=>'icon-tag','name'=>'Foods','link'=>$this->base.'shop/deals/previous'),
			'2'=> array('icon'=>'icon-tag','name'=>'Health & Beauty','link'=>$this->base.'shop/deals/monthly'),	
			'3'=> array('icon'=>'icon-tag','name'=>'Products','link'=>$this->base.'shop/deals/monthly'),
			'4'=> array('icon'=>'icon-tag','name'=>'Travel','link'=>$this->base.'shop/deals/monthly')
		);

		$this->data['directory'] = array(
			'0'=> array('id'=>'1','icon'=>'icon-user','name'=>'Fashions','content' => array('0'=>'Mens','1'=>'Women','2'=>'Sport','3'=>'Tailor & Fabric')),
			'1'=> array('id'=>'2','icon'=>'icon-eye-open','name'=>'Watches & Jewellry','content' => array('0'=>'Watches','1'=>'Jewellry')),
			'2'=> array('id'=>'3','icon'=>'icon-leaf','name'=>'Health & Beauty','content' => array()),
			'3'=> array('id'=>'4','icon'=>'icon-wrench','name'=>'Homedecor & Houseware','content' => array()),
			'4'=> array('id'=>'5','icon'=>'icon-glass','name'=>'Food & Beverages','content' => array()),
			'5'=> array('id'=>'6','icon'=>'icon-book','name'=>'Books, Flowers, Gift Cards &amp; Wrapping','content' => array()),	
			'6'=> array('id'=>'7','icon'=>'icon-headphones','name'=>'Music, Audio Visual, Handphones, PDAs &amp; Electronics','content' => array()),
			'7'=> array('id'=>'8','icon'=>'icon-volume-up','name'=>'Entertainment','content' => array()),
			'8'=> array('id'=>'9','icon'=>'icon-gift','name'=>'Department Stores &amp; Supermarkets','content' => array('0'=>'Metro Dept. Store','1'=>'Sogo Dept. Store'))
		);
	}

	public function deals($mydata)
	{
		$this->sidebarData();
		$this->data['sidebar'] = 'display_sidebar_baru'; 
		$this->data['content'] = 'display_pages_baru'; 
		$this->data['listed'] = array(
			'0'=> array('title'=>'title 01','price'=>'100','save'=>'10%','maxbuy'=>'120','maxtime'=>'10', 'content' => array('0'=>'Mens','1'=>'Women','2'=>'Sport','3'=>'Tailor & Fabric')),
			'1'=> array('title'=>'title 02','price'=>'100','save'=>'20%','maxbuy'=>'250','maxtime'=>'345600', 'content' => array('0'=>'Mens','1'=>'Women','2'=>'Sport','3'=>'Tailor & Fabric')),
			'2'=> array('title'=>'title 02','price'=>'100','save'=>'30%','maxbuy'=>'450','maxtime'=>'82000', 'content' => array('0'=>'Mens','1'=>'Women','2'=>'Sport','3'=>'Tailor & Fabric')),
			'3'=> array('title'=>'title 03','price'=>'100','save'=>'40%','maxbuy'=>'500','maxtime'=>'86100' ,'content' => array('0'=>'Mens','1'=>'Women','2'=>'Sport','3'=>'Tailor & Fabric')),
			'4'=> array('title'=>'title 04','price'=>'100','save'=>'50%','maxbuy'=>'1000','maxtime'=>'172800' ,'content' => array('0'=>'Mens','1'=>'Women','2'=>'Sport','3'=>'Tailor & Fabric'))	
		);	
		foreach($mydata as $key => $value){
			$this->data[$key] = $value;
		}
		$this->load->view('display_index_baru',$this->data);	
	}


	public function products($mydata)
	{
		$this->sidebarData();
		$this->data['sidebar'] = 'display_sidebar_baru'; 
		$this->data['content'] = 'display_pages_products';
		$this->data['listed'] = array(
			'0'=> array('title'=>'product 01','price'=>'100','save'=>'10%','maxbuy'=>'120','maxtime'=>'10', 'content' => array('0'=>'Mens','1'=>'Women','2'=>'Sport','3'=>'Tailor & Fabric')),
			'1'=> array('title'=>'product 02','price'=>'100','save'=>'20%','maxbuy'=>'250','maxtime'=>'345600', 'content' => array('0'=>'Mens','1'=>'Women','2'=>'Sport','3'=>'Tailor & Fabric')),
			'2'=> array('title'=>'product 02','price'=>'100','save'=>'30%','maxbuy'=>'450','maxtime'=>'82000', 'content' => array('0'=>'Mens','1'=>'Women','2'=>'Sport','3'=>'Tailor & Fabric')),
			'3'=> array('title'=>'product 03','price'=>'100','save'=>'40%','maxbuy'=>'500','maxtime'=>'86100' ,'content' => array('0'=>'Mens','1'=>'Women','2'=>'Sport','3'=>'Tailor & Fabric')),
			'4'=> array('title'=>'product 04','price'=>'100','save'=>'50%','maxbuy'=>'1000','maxtime'=>'172800' ,'content' => array('0'=>'Mens','1'=>'Women','2'=>'Sport','3'=>'Tailor & Fabric'))	
		); 
		
		foreach($mydata as $key => $value){
			$this->data[$key] = $value;
		}
		$this->load->view('display_index_baru',$this->data);	
	}


	


}