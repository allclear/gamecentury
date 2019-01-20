function login(){
	var ur=$("#username").val();
	var pw=$("#password").val();
	
	var u="admin";
	var p="admin";
	if(ur==u && pw==p){
		$("#nologin").css("display","none");
		$("#haslogin").css("display","block");
		
		$("#loginclose").click();
		
	}
	else{
		alert("账号或密码错误");
	}
	
}
function loginout(){
	$("#nologin").css("display","block");
	$("#haslogin").css("display","none");
}

function remberLogin(){
	$("#remberlogin").click();
}