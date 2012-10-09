<?php
  
	// read the xml source as string http://www.buy.com/ct/rss/digitalcameras.xml
  $str = file_get_contents("data/digitalcameras.xml");

  // load the string as xml object
  $xml = simplexml_load_string($str);

  // initialize the return array
  $result = array();
		
  $data = array(
		    'sku' => '//item/p:sku',
		  'title' => '//item/title',
			'price' => '//item/p:price',
		'pubDate' => '//item/pubDate',
		  'image' => '//item/enclosure/@url',
		 'detail' => '//item/p:description'	
	);
		
	// parse the xml nodes
  foreach($data as $key => $xpath) {
	  $values = $xml->xpath("{$xpath}");
	  foreach($values as $value) {
      $result[$key][] = (string)$value;
    }
  }
  	
	$data_set=array();
	$data_inset=array();
	foreach($result as $key=>$item) {
		foreach($item as $idx=>$value) {
			if(!isset($data_set[$idx])) $data_set[$idx]=array();
			$data_set[$idx][$key]=$value;
		}
	}
	//var_dump($data_set);
	foreach($data_set as $idx=>$item) {
		$row=array();
		foreach($item as $key=>$value) {
			$row[]="'".str_replace(array(',',"'",'(',')',"\n","\t","\r"),array('&#44;','&#39;','&#40;','&#41;','<br>','',''),trim($value))."'";
		}
		$data_insert[]='('.implode(',',$row).')';
	}
	$datasend = implode(',',$data_insert);
	mysql_query("INSERT IGNORE INTO vshop_feed_product VALUES $datasend");
	//http://localhost/project/outsource/testing/xpath.php
?>