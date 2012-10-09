<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><?php echo $title; ?></title>
<meta name="description" content="">
<meta name="author" content="">
<!-- Styles -->
<link rel="stylesheet" type="text/css" href="<?php echo $grid_css; ?>">
<link rel="stylesheet" type="text/css" href="<?php echo $main_css; ?>">
<link rel="stylesheet" type="text/css" href="<?php echo $admin_css; ?>">
<body>
<div id="wrapper" class="container_12">
  <div id="header" class="grid_12">
  	<h3>Dashboard</h3>
  	<? echo $this->session->userdata('fullname') ?>
  	<? echo anchor('access/logout','Logout'); ?>
  </div>	
  <div id="navi" class="grid_12">	
  <ul id="nav">	
  <? foreach($menu as $main){ ?>
     <li><a href="#"><?php echo $main->catName;  ?></a>
          <ul> 
          	<? foreach($submenu as $sub){ if($sub->parentID == $main->catID){ ?>
             	<li><a href="<? echo $sub->catUrl; ?>"><?php echo $sub->catName; ?></a></li>
             	<? }} ?>
          </ul>
     </li>
  <? } ?>
  </ul>
  </div>
  <div id="content" class="grid_12">
    <?echo $content;?>
  </div>
</div>
<!-- Javascript -->
<script type="text/javascript" src="<?php echo $main_js; ?>"></script>
<script type="text/javascript" src="<?php echo $bootstrap_js; ?>"></script> 
<script type="text/javascript" src="<?php echo base_url('assets/js/custom.js'); ?>"></script>

<script type="text/javascript">
  var subsubmenu = function (){
    this.navLi=$('#nav > li').children('ul').css('display', 'none').end();
    this.init();
  };
  subsubmenu.prototype={
      init : function(){
          this.setMenu();
      },
      //Memberikan efek slide
      setMenu: function(){
          this.navLi.hover(function(){
          //mouseover
              $(this).find('>ul').stop(true,true).slideDown(250);
          }, function(){
          //mouseout
              $(this).find('>ul').stop(true,true).fadeOut(200);
          });
      }
  }
  new subsubmenu();
</script>

<script type="text/javascript">
	$(function(){
	   $('.carousel').carousel();
	});

	S(function(){
		$('a').tooltip();
	});
</script>

</body>
</html>