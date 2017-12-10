    // 加载产品页面函数
    function loadProducts(pno=0){
    $.ajax({
        type:"get",
        url:"data/controlles/searchproductByKw.php",
        data:location.search.slice(1)+"&pno="+pno,
        success:data=>{
           //console.log(data);// {count: 31, pno: 0, pageSize: 8, pageCount: 4, data: Array(8)}
            var html="";
            for(var p of data.data){
                html+=`
				<li>
                   <a  href="product_detaile.html?pid=${p.pid}">
					  <img src="${p.pic}" alt="">
					</a>
					<p class="p_detail">
						<span class="price">￥${p.price}</span>
					</p>
					<p><a  href="product_detaile.html?pid=${p.pid}" class="pids">${p.title}</a></p>
					<div class="cars">
						<span class="reduce">-</span>
						<input type="text" id="txt_cont" value="1">
						<span class="add">+</span>
					</div>
					<p><a href="javascript:;" data-toggle="${p.pid}" class="addCart">加入购物车</a></p>
				</li>
			
                `;
            }
            $("#show-list").html(html);
            var pageCount=data.pageCount,
                pno=data.pno;
            var html2=`<a href="javascript:;" class="previous">上一页</a>`;
            for(var i=1;i<=data.pageCount;i++){
                html2+=`
                <a href="javascript:;">${i}</a>`;
            }
            html2+=`<a href="javascript:;" class="next">下一页</a>`;
           $("#pages").html(html2);
           checkAStatus($divPages,pageCount,pno)
           $("#pages").children(":eq("+(pno+1)+")").addClass("current");
           //    点击页数，添加curren属性
           $("#pages").off("click").on("click","a",function(e){
               var $tar=$(e.target);
               if($tar.is("a")){//如果目标元素是a
				//如果a不是divPages的第一个子元素和最后一个子元素
				if(!$tar.is(":first-child,:last-child")){
					//如果当前a的class不是current
					if(!$tar.is(".current")){
						//获得当前a的内容-1，保存在pno中
						var pno=$tar.html()-1;
						//调用loadProducts(pno)重新加载第pno页
						loadProducts(pno);
					}
				}else{
					//如果class不以disabled结尾
					if(!$tar.is(".disabled")){
						//在divPages下查找class为current的a
						var $curr=
                        $("#pages").children(".current");
						//如果class以next开头
						if($tar.is(".next")){
							//重新加载商品列表传入current的内容作为pno
							loadProducts($curr.html());
						}else{
							loadProducts($curr.html()-2);
						}
					}
                }	
           }
        })
    },
        error:()=>{
            alert("网络出现故障");
        }
     })
  }
  loadProducts();
  var $divPages=$("#pages")
  function checkAStatus($divPages,pageCount,pno){
	//获得divPages下两个a
	var $prev=$divPages.children().first();
	var $next=$divPages.children().last();
	//如果pageNo不是0，也不是pageCount
	if(pno!=0&&pno!=pageCount-1){
		//两个按钮都启用
		$prev.removeClass("disabled");
		$next.removeClass("disabled");
	}else{//否则
		if(pno==0)//如果pageNo==0,就prev禁用
			$prev.addClass("disabled");
		//如果pageNo==pageCount-1,就next禁用
		if(pno==pageCount-1)
			$next.addClass("disabled");
	}
}
$("#show-list").click(e=>{
	var $tar=$(e.target);
	  if($tar.is(".reduce")){
		  if(parseInt($tar.next().val())>1){
			var n=parseInt($tar.next().val());
			n--;
			$tar.next().val(n);
		 }
	    }else if($tar.is(".add")){
			var n=parseInt($tar.prev().val());
			n++;
			$tar.prev().val(n);
		}
		
})
$("#show-list").on("click","a.addCart",function(e){
	e.preventDefault();
	$.ajax({
		type:"get",
		url:"data/routes/isLogin.php",
		success:data=>{
			if(data.code<0){
				var url=location.href;
				url=encodeURIComponent(url);
				location.href="login.html?back"+url;
			}else{
				var pid=$(e.target).data("toggle");
				var count=$(e.target).parent().prev().children(":eq(1)").val();
				//console.log(count);
               $.ajax({
				   type:"get",
				   url:"data/controlles/addCart.php",
				   data:{pid:pid,count:count},
				   success:data=>{
					   //console.log(data);
					   if(data.code>0){
						   alert(data.msg);
					   }else{
						   alert("添加失败");
					   }
				   },
				   error:()=>{
					   alert("网络故障");
				   }
			   });
			}
		},
		error:()=>{alert("网络故障")}
	})
	 
})
