//加载轮播图 
$(()=>{
		$.get("data/controlles/banner.php").then(data=>{
		var html="";
		for(var p of data){
           html+=`<li style="background:url(${p.img}) 50% 55%  no-repeat;"></li>`;
		}
		$("ul.slides").html(html);
		$(document).ready(function () {
			$('.flexslider').flexslider({
				directionNav: true,
				pauseOnAction: false,
				slideshowSpeed: 3000,
			});
		});

	});
})
// 加载多肉展图信息
$(()=>{
	$.get("data/controlles/product_one.php").then(
		data=>{
			console.log(data);
			var html="";
			for(var p of data){
				html+=`<li class="item">
				<figure>
					<div class="view"> <img src="${p.pic}" /> </div>
					<figcaption>
						<p><span> <a href="#">${p.title}</a></span></p>
						<p><span>${p.spec}</span></p>
					</figcaption>
				</figure>
				<div class="date">2017</div>
			</li>`;
			}
			$(".portfolio-items").html(html);
			
		}
	);
})
// 加载楼层产品信息
$(()=>{
	$.get("data/controlles/product_sec.php").then(data=>{
		var html=`<h1 style="margin-bottom: 20px;"><b class="icon-heart-6">新品上市</b></h1><div class="section_box">`;
		var html2=`<h1 style="margin-bottom: 20px;"><b class="icon-heart-3">热销推荐</b></h1><div class="section_box">`;
		for(var key in data){
			var p=data[key];
			if(key>3&&key<8){
				 html+=`<div class="product_one">
					<img src="${p.pic}" data-img="${p.pic}">
					<p class="name">${p.title}</p>
					<p class="spec">${p.spec}</p>
					<p class="price">¥${p.price}</p>
					<a href="${p.href}" class="view" data-toggle="${p.pid}">查看详情</a>
				 </div>`;
			}
			if(key>8&&key<=12){
				html2+=`<div class="product_one">
				<img src="${p.pic}" data-img="${p.pic}">
				<p class="name">${p.title}</p>
				<p class="spec">${p.spec}</p>
				<p class="price">¥${p.price}</p>
				<a href="${p.href}" class="view" data-toggle="${p.pid}">查看详情</a>
			 </div>`;
			}
		}
		html+=`</div>`;
		$("#section_f1").html(html);
		$("#section_f2").html(html2);
	});
})
