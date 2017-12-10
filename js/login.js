$(()=>{
	var $phone=$("#phone");
	var reg=/^1[35678]\d{9}$/;
	$phone.blur(e=>{
	   if(!reg.test($(e.target).val())){
			 $("#tel_text").html("手机格式不正确");
		 }
	})      
})
$("#btns").click(e=>{
		$.ajax({
			type:"post",
			url:"data/routes/login.php",
			data:$("#form_list").serialize(),
			success:data=>{
				if(data.code<0){
					$("#msg_text").html(data.msg);
				}else{
					// console.log(location.search);
					  if(location.search!=""){
                         location=decodeURIComponent(
							location.search.slice(5));
						}else{
						   alert("登录成功，3s自动跳转首页，请稍等");
						    location="index.html";
					    }
				}
			},
			error:function(){
				alert("网络出错");
			}
		})
	})
	$("#setYzm").click(function(){
		$(this).attr("src", "data/03_code_gg.php");
		});

