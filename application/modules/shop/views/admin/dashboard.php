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
  	<h1>Dashboard</h1>
  	<span><? echo $this->session->userdata('fullname') ?></span><span><? echo anchor('access/logout','Logout'); ?></span>
  </div>

  <div id="navi" class="grid_12">  
    <ul id="nav">  
      <? foreach($menu as $main){ ?>
        <li><a href="#"><?php echo $main->name;  ?></a>
          <ul> 
          <? foreach($submenu as $sub){ 
            if($sub->parent_id == $main->id){ ?>
            <li><a href="<? echo base_url('shop/'.$sub->route); ?>"><?php echo $sub->name; ?></a></li>
          <? }} ?>
          </ul>
        </li>
      <? } ?>  
    </ul>
  </div>

  <div id="content" class="grid_12">
    <?echo $this->load->view($content);?>
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