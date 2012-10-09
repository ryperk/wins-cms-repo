<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><?php echo $title; ?></title>
<meta name="keywords" content="<?php echo $keywords; ?>">
<meta name="description" content="<?php echo $description; ?>">
<meta name="robots" content="<?php echo $robots; ?>">
<meta name="author" content="<?php echo $author; ?>">
<!-- Styles -->
<link rel="stylesheet" type="text/css" href="<?php echo $grid_css; ?>">
<link rel="stylesheet" type="text/css" href="<?php echo $main_css; ?>">
<link rel="stylesheet" type="text/css" href="<?php echo $custom_css; ?>">
<body>
<div id="wrapper" class="container_12">
	<!-- left column  -->
	<div id="left-colm" class="grid_3">	
		<?php $this->load->view($sidebar);?>
	</div>
	<!-- /div left column  -->
	<!-- Right Column -->
	<div id="content" class="grid_9">
		<?php $this->load->view($content);?>
	</div>
	<!-- /div right column  -->

</div>
<!-- /div wrapper  -->

<!-- Javascript -->
<script type="text/javascript" src="<?php echo $main_js; ?>"></script>
<script type="text/javascript" src="<?php echo $bootstrap_js; ?>"></script> 
<script type="text/javascript" src="<?php echo base_url('assets/js/custom.js'); ?>"></script>
<script type="text/javascript">
	$(function(){
	   $('.carousel').carousel();
	});

	$(function(){
		$('a').tooltip();
	});
</script>
<!---->
<script type = "text/javascript">
	function countToTen() {
		var cn,now,end=1,els=document.getElementsByName('count');
		if(els.length) for(cn=1;cn<=els.length;cn++) with(els[cn-1]) {
			now=getAttribute('now')|1;
			now=parseFloat(now)+Math.max(Math.round((parseFloat(getAttribute('value'))-now)/4),1);
			if(now!=getAttribute('value')) {
				setAttribute('now',now);
				end=0;
			}
			innerHTML=now;
		}
		if(!end) setTimeout(countToTen,100);
	}
	function countClock() {
		var cn,nm,sc,mn,hr,dy,end=1,els=document.getElementsByName('clock'),now=countClock.now||1;
		if(els.length) for(cn=0;cn<els.length;cn++) with(els[cn]) {
			nm=parseFloat(getAttribute('value'))-now;
			if(nm<0) nm=0; else end=0;
			dy=Math.floor(nm/86400);
			nm=nm%86400;
			hr=Math.floor(nm/3600);
			nm=nm%3600;
			mn=Math.floor(nm/60);
			sc=nm%60;
			innerHTML=dy+':'+hr+':'+mn+':'+sc;
		}
		countClock.now=now+1;
		if(!end) setTimeout(countClock,1000);
	}
	countToTen();
	countClock();
</script>

<!--
<script language="JavaScript">

StartCountDown("clock1","09/30/2012 12:33 PM -0400")
StartCountDown("clock2","09/30/2012 2:00 PM -0400")

/*
	Author:		Robert Hashemian (http://www.hashemian.com/)
	Modified by:	Munsifali Rashid (http://www.munit.co.uk/)
	Modified by:	Tilesh Khatri
*/

function StartCountDown(myDiv,myTargetDate)
{
var dthen	= new Date(myTargetDate);
var dnow	= new Date();
ddiff		= new Date(dthen-dnow);
gsecs		= Math.floor(ddiff.valueOf()/1000);
CountBack(myDiv,gsecs);
}

function Calcage(secs, num1, num2)
{
s = ((Math.floor(secs/num1))%num2).toString();
if (s.length < 2) 
{	
  s = "0" + s;
}
return (s);
}

function CountBack(myDiv, secs)
{
var DisplayStr;
var DisplayFormat = "%%D%% Days %%H%%:%%M%%:%%S%%";
DisplayStr = DisplayFormat.replace(/%%D%%/g,	Calcage(secs,86400,100000));
DisplayStr = DisplayStr.replace(/%%H%%/g,		Calcage(secs,3600,24));
DisplayStr = DisplayStr.replace(/%%M%%/g,		Calcage(secs,60,60));
DisplayStr = DisplayStr.replace(/%%S%%/g,		Calcage(secs,1,60));
if(secs > 0)
{	
  document.getElementById(myDiv).innerHTML = DisplayStr;
  setTimeout("CountBack('" + myDiv + "'," + (secs-1) + ");", 990);
}
else
{
  document.getElementById(myDiv).innerHTML = "Auction Over";
}
}

</script>-->
</body>
<html>