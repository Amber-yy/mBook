
$(document).ready(function(){
  var img_h =new Array(
    "img/1.jpg",
    "img/2.jpg",
    "img/3.jpg"
  );
  var num_h = 0;
  setInterval(function(){
    if(num_h == img_h.length - 1){
      num_h = 0;
    }else{
      num_h += 1;
    }
    $('#head').css('backgroundImage', 'url(' + img_h[num_h] + ')');
  }, 15000);

  var clientHeight = getClientHeight();
  $('#head').css('height', clientHeight);

  $(".menu").click(function(){
    $('.menu_nav').addClass('menu_nav_active');
    $('.overlay_full').fadeIn();
  });
  $(".overlay_full").click(function(){
    $('.menu_nav').removeClass('menu_nav_active');
    $(this).fadeOut();
  });
});
