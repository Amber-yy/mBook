
function reurl(){
  url = location.href;
  var times = url.split("?");
  if(times[1] != 1){
    url += "?1";
    self.location.replace(url);
  }
}

var getClientHeight = function (){
  return window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
};

var getClientWidth = function (){
  return window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
};

var smallScreen = function(){
  return getClientWidth() >= 768 ? true : false;
}

var formCheck = function(selector, flag){
  if(flag == false){
    selector.on("submit", function(event){
      event.preventDefault();
      $(".form-error").show();
    });
  }
  if(flag == true){
    selector.off("submit");
  }
}

jQuery.fn.addAnimate=function(animation){
  $(this).addClass('animated ' + animation);
}

jQuery.fn.removeAnimate=function(animation){
  $(this).removeClass('animated ' + animation);
}
