$(document).ready(function(){
        // alert("hi");
	$("#save").click(function(){
		var email=$("#email_id").val();
		var password=$("#password").val();
		if(email==""){
			$("#email_id").css("border","1px solid red");
			$("#email_id").focus();
			return false;
		}
		else{
			$("#email").css("border","1px solid green");
		}
		if(password==""){
			$("#password").css("border","1px solid red");
			$("#password").focus();
			return false;
		}
		else{
			$("#password").css("border","1px solid green");
		}
		$.ajax({
			type:"POST",
			url:"php/login.php",
			dataType:"json",
			data:$("#login").serialize(),
			success:function(res){
				if(res.status=="login"){
					window.location="profile.html";
				}
			}

		})
	})
})