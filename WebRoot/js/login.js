function check(form) {
	var errorStr1="";
	var errorStr2="";
    var account = document.login.account.value.trim();
    var password = document.login.password.value.trim();
//	var role = document.login.role.value;
    var errorAct = $("#account_error");
    var errorPsw = $("#password_error");
    if (!account || account.length < 0) {alert("账号不能为空！");document.login.ipt_acc.focus();return false;}
    else if (!password || password.length < 0) {alert("密码不能为空！");document.login.ipt_pas.focus();return false;}
    else if (!/^[0-9]{6,12}$/.test(account)) {alert("账号不合法！");document.login.ipt_acc.focus();return false;}
//	if (errorStr1==""&&errorStr2=="") {return true;}
//  else{
//  	errorAct.text(errorStr1);
//  	errorPsw.text(errorStr2);
//  	return false;
//  }
}
function selectRole(obj) {
    if (obj.value == 0) {document.login.action = 'teacher_login.asp';}
    else if (obj.value == 1) {document.login.action = 'student_login.asp';}
}
$(function(){
	$("#ipt_acc").on("keyup",function(){
		var acc=document.getElementById("fak_acc");
		acc.value=this.value;
  	});
	$("#ipt_pas").on("keyup",function(){
		var pas=document.getElementById("fak_pas");
		pas.value=this.value;
   	});
	$("#ipt_acc").blur(function(){				//当输入框失去焦点时
	var keyVal = $(this).val();
	var reg = /^[0-9]{6,12}$/;
	if (keyVal.length == 0){
    $("#account_error").html("账号不能为空！");   //如果未输入，显示“不能为空”
   	} else {
	    if(!(reg.test(keyVal))){
	    	$("#account_error").html("账号不合法！");
	    } else {
	    	$("#account_error").html("");
	    }
    }
 	});
 	$("#ipt_pas").blur(function(){
	var keyVal = $(this).val();
	if (keyVal.length == 0){
    $("#password_error").html("密码不能为空！");
    } else {
    	$("#password_error").html("");
    }
 	});
});