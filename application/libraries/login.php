<?php
class Login {
	
	$appname='winsapp';
	$ssexpire=7200; // in seconds ( 7200 = 2 hours )
	$ssdomain=''; // shared subdomain session use: .example.com
	$sspath='/'; // session path, empty = root path ( / )
	$session=array();
	
	// init cookie session
	function init() {
		global $appname,$session;
		$cook=isset($_COOKIE[$appname])?$_COOKIE[$appname]:'';
		$cook=explode('~',$cook);
		foreach($cook as $cv) {
			$cp=strpos($cv,':');
			if($cp!==false) {
				$ck=substr($cv,0,$cp);
				$session[$ck]=substr($cv,$cp+1);
			}
		}
	}
	
	// done cookie session
	function done() {
		global $appname,$ssexpire,$ssdomain,$sspath,$session;
		$sess=array();
		$session['last_ip']=$_SERVER['REMOTE_ADDR'];
		$session['last_touch']=time();
		foreach($session as $sk=>$sv) array_push($sess,$sk.':'.$sv);
		setcookie($appname,implode('~',$sess),$ssexpire?$ssexpire+time():0,$sspath,$ssdomain);
	}
}
?>
