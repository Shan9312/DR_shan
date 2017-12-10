$(()=>{
	if(location.search!=''){
		var pid=location.search.split("=")[1];
		//console.log(pid);
		$.ajax({
			type:'get',
			url:"data/controlles/product_detail.php",
			data:{pid:pid},
			success:data=>{
				//console.log(data);//products{},imgs{}
				var html="";
				var imgs=data.imgs;
				var p=data.products
                // 加载右边的产品信息
					html+=`<h4>${imgs[0].details}</h4>
					<h3>${p.title}</h3>
					<h5>多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物</h5>
					<p class="img_promise">${imgs[0].promise}</p>
					<div class="show_box">
						<p>
							<b>淘宝价：</b> ￥<span id="price">${p.price}</span>
						</p>
						<p><b>月销售累记数量:</b> ${p.sold_count}盆 </p>
					</div>
					<div>
						<p><b>颜色种类:<b></p>
						<div class="sorts">
							 <img src="${imgs[0].sm}" alt="" data-lg="${imgs[0].lg}" data-md="${imgs[0].md}">
						</div>
					</div>
					<div class="count_box">
						<b>数量:<b>
						<span id="red">-</span>
						<input id="txt_count" type="text" value="1">
						<span id="add">+</span>
					</div>
					<div class="arow_button">
						<a href="">立即购买</a>
						<a href="" class="add_data" data-toggle="${p.pid}">加入购物车</a>
						<i id="ico" class="icon-caigou-xianxing"></i>
					</div>`;
					$("#show_product").html(html);
					// 点击产品数量的加减
					$(".count_box").on("click","span",e=>{
						var n=parseInt($("#txt_count").val());
						if($(e.target).attr('id')=="red"){
							if(n!=1){
								n--;
								$("#txt_count").val(n);
							  }
						}else
							n++;
							$("#txt_count").val(n);
					})
					// 加载左边的图片；
					var html="";
					html+=`<img id="mImg" src="${imgs[0].md}" alt=""> <div id="mask"></div>
                    <div id="superMask"></div>`;
					$("#preview_md").html(html);
					// 加載下面小图；
					var html2="";
						for(var i=0;i<5;i++){
							html2+=`<li><img src="${imgs[0].sm}" data-md=${imgs[0].md} data-lg=${imgs[0].lg} alt="">`;
						}
					
					$("#preview_sm").html(html2);
					
					// 放大镜
					$("#largeDiv").css("background","url("+imgs[0].lg+")");	
						

					$("#superMask").hover((e)=>{
						$(e.targert).show();
						$("#mask").show();
						$("#largeDiv").show();
					},(e)=>{
						$(e.targert).hide();
						$("#mask").hide();
						$("#largeDiv").hide();
					});
					var MSIZE=175;
					$("#superMask").mousemove(e=>{
					//	console.dir(e)
					//   var offset=$(e.target).offset();
						var x=e.offsetX ,
						    y=e.offsetY;
						//console.log(x+":"+y);
						var top=y-MSIZE/2,
						  left=x-MSIZE/2;
						  //console.log(top+":"+left	);
						if(top<0) top=0;
						else if(top>147) top=147;
						if(left<0) left=0;
						else if(left>265) left=265;
							$("#mask").css({
								"display":"block",
								"top":(top+"px"),
								"left":(left+"px")
							});
							
						$("#largeDiv").css("backgroundPosition",-24/7*left +"px " +(-15/7*top) +"px");	
					})

			},
			error:()=>{
				alert("网络出错");
			}
		})
	}
	
})
$("#show_product").on("click","a.add_data",function(e){
	e.preventDefault();
	$.ajax({
		type:"get",
		url:"data/routes/isLogin.php",
		success:data=>{
		//console.log(data);
			if(data.code<0){
				var url=location.href;
				url=encodeURIComponent(url);
				location.href="login.html?back"+url;
			}else{
				var pid=$(e.target).data("toggle");
				var count=$("#txt_count").val();
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

