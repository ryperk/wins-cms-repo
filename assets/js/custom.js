/*
    Navigate Site
*/
$(document).ready(function(){
  var menu = '#nav-deals > li > a';
  $(menu).click(function(){
    alert(menu)
  });   
});

/* 
    MENU HOVER 
    Use for directory menu navigation 
*/
$(document).ready(function(){
    
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
});


