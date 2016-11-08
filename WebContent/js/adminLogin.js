
var smallScreen = smallScreen();

var formError = function(){
  $('form').addAnimate('wobble');
  
  setTimeout(function (){
    $('form').removeAnimate('wobble');
  }, 500);
  
  $('.user, .pwd').val("");
}

if(smallScreen){
  $('.user').focusin(function(){
    $('.icon_user').css('color', '#e74c3c');
  }).focusout(function(){
    $('.icon_user').css('color', 'white');
  });

  $('.pwd').focusin(function(){
    $('.icon_pwd').css('color', '#e74c3c');
  }).focusout(function(){
    $('.icon_pwd').css('color', 'white');
  });
}

$(document).ready(function(){
  $(".btn").click(function(){
    if($('.user').val() == "" || $('.pwd').val() == ""){
      if(smallScreen){
        formError();
      }
      formCheck($('form'), false);
    }else{
      formCheck($('form'), true);
    }
  });

  var clientHeight = getClientHeight() - 75;
  $('footer').css('top', clientHeight);
});
