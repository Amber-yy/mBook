
jQuery.fn.formChange=function(){
  $(this).siblings("form").hide(); 
  $(this).show();
  $(this).find(".form-focus").focus();
  $(".form-error").hide();
}

$(".btn_extra").click(function(){
  $('#signUp_1').formChange();
});

//$("#signUp_1 .btn").click(function(e){
//		 $('#signUp_2').formChange();
//});
//
//$("#signUp_2 .btn").click(function(){
//   $('#signUp_3').formChange();
// });

$('.form-autofill').on('input',function(){
  $(this).removeClass("form-autofill");
});

//$(".btn").click(function(e){
//  if($(this).prevAll(".pwd").children("input").val().length < 6){
//    $(".form-error").text("密码至少6位");
//    formCheck($(this).parent(), false);
//  }else{
//    formCheck($("#logIn"), true);
//  }
//});
