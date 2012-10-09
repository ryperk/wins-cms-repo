<?php
	class Menu{
		function show_menu()
		{
		$obj =& get_instance();
		$obj->load->helper('url');

		$menu = anchor("start/hello/fred","Home | ");
		$menu .= anchor("start/hello/bert","Deals | ");
		$menu .= anchor("start/another_function","Shop |");
		return $menu;
		}
	}
?>