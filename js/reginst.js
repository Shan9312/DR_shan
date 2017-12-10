$(()=>{
	var  $uname=$("#uname");
	     $phone=$("#phone"),
	     $pwd=$("#upwd"),
		   $pwd2=$("#upwd2");
    //验证用户名
	$uname.blur(e=>{
        checkName($(e.target).val());
	})
	function checkName(txt){
		
		var $span=$("#name_text");
	$.ajax({
		type:"post",
		url:"data/routes/checkName.php",
		data:{uname:$uname.val().trim()},
		success:data=>{
            if(data.code<0){
              $span.html("<img src='img/err.png' >"+data.msg);
			}else{
              $span.html("<img src='img/ok.png' >");
			}
		},
		error:()=>{
			alert("网络故障");
		}
	})
  } 
  //验证手机号
  $phone.blur(e=>{
	  var reg=/^1[35678]\d{9}$/;
	  if(reg.test($phone.val())){
        $phone.next().html("<img src='img/ok.png'>");
	  }else{
        $phone.next().html("<img src='img/err.png'>手机格式不正确");
	  }
  })
 //验证密码的格式
 $pwd.blur(e=>{
	var $pwd=$(e.target);
	var $p=$pwd.next();
	if($pwd.val().trim()!=""){
		if(/^[a-zA-Z0-9_]{6,12}$/.test($pwd.val().trim())){
			$p.html("<img src='img/ok.png'>");
		}else
		  $p.html("<img src='img/err.png' >请输入6-12位数字，字母或下划线");	
	}	
});
  //验证第2次输入的密码
	$pwd2.blur(e=>{
		var $p=$(e.target).next();
		if($pwd.val().trim()==$pwd2.val().trim()){	
			$p.html("<img src='img/ok.png'>验证通过 ");
		}else
			$p.html("<img src='img/err.png' >密码输入不一致，请重新输入");		
	});
  //提交数据
  $("#btns").click(e=>{
      $.ajax({
		  type:"post",
		  url:"data/routes/reginst.php",
		  data:$("#form_list").serialize(),
		  success:function(data){
			  if(data.code>0){
					 alert("注册成功，3s自动跳转首页，请稍等");
					 //$("#login_name").html($uname.val()).css("color","#FC7136");
					 location="index.html";
					
		  	}else{
					alert(data.msg);
			   }
		  },
		  error:()=>{
			  alert("网络故障");
		  }
	  })
  })


})