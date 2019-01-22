function login(){
    var form_obj = $("#loginForm");
    //对表单进行序列化操作.
    var formData = form_obj.serialize();
    alert(formData);

	$.ajax({
        type:'get',//get请求
        url:'user/login',//请求的url
        data:formData,
        success:function(data){
            //当后台成功返回之后执行.
            if(data == 0){
                alert("账号或密码错误");
            }else{
                $("#nologin").css("display","none");
                $("#haslogin").css("display","block");

                $("#loginclose").click();
            }
        }
    })
	
}
function loginout(){
	$("#nologin").css("display","block");
	$("#haslogin").css("display","none");
}

function remberLogin(){
	$("#remberlogin").click();
}