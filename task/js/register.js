$(document).ready(function(){


	$("#save").click(function(){
		if($("#name").val()==""){
			$("#name").css("border","1px solid red");
			$("#name").focus();
			return false;
		}
		else{
			$("#name").css("border","1px solid green");
		}
		if($("#email_id").val()==""){
			$("#email_id").css("border","1px solid red");
			$("#email_id").focus();
			return false;
		}
		else{
			$("#email_id").css("border","1px solid green");
		}
		if($("#password").val()==""){
			$("#password").css("border","1px solid red");
			$("#password").focus();
			return false;
		}
		else{
			$("#password").css("border","1px solid green");
		}
		if($("#confirmpassword").val()==""){
			$("#confirmpassword").css("border","1px solid red");
			$("#confirmpassword").focus();
			return false;
		}
		else{
			$("#confirmpassword").css("border","1px solid green");
		}
		$.ajax({
			type:"POST",
			url:"php/register.php",
			dataType:"json",
			data:$("#login").serialize(),
			success:function(res){
				if(res.status=="Done"){
					window.location="login.html";
				}
			}

		})
	})
})