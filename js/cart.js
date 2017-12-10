// 请求购物车信息
function loadCart() {
	$.ajax({
		type: "get",
		url: "data/controlles/searchCart.php",
		success: data => {
			//console.log(data);
			var html = "";
			var p_count = data.length;
			for (var p of data) {
				if (!p.pid) {
					$("#content_cart").hide();
				} else {
					$("#content_cart").show();
					$(".cart_empty").hide();
					html += `<tr class="trs">
				 <td><input type="checkbox" class="chkbox"></td>
				 <td>
					 <div class="pro_del">
					 <p><img src="${p.pic}" class="pic" alt="${p.pic}"></p>
					 <p> <b class="title">${p.title}</b></p>
					 <p id="spec">${p.spec}</p>								
					 </div>
				 </td>
				 <td>
					<div id="product-num">
						<span class="reduce">-</span>
						<input type="text" id="text_count" data-pid=${p.pid} value="${p.count}">
						<span class="add">+</span>
					</div> 
				 </td>
				 <td>
				 ￥<span class="price">${p.price}</span>
				 </td>
				 <td>
				 ￥<span class="sum_price">${p.price * p.count}</span>
				 </td>
				 <td><a href="#" class="del"  data-pid=${p.pid}>删除</a></td>
			 </tr>`;
				}
			}
			$("#tbodys").html(html);
			$("#prods_count").html(p_count);
		},
		error: () => { "网络出错" }
	})
}
$(() => {
	loadCart();
	$("#tbodys").click(function (e) {
		var $tar = $(e.target);
		if ($tar.is(".reduce")) {
			if (parseInt($tar.next().val()) > 0) {
				var n = parseInt($tar.next().val()),
					$pal = $tar.parent().parent().parent().children(":eq(4)").children(),
					sum = $pal.html(),
					$pri = $tar.parent().parent().parent().children(":eq(3)").children(),
					i = $pri.html();
				sum = parseFloat(sum);
				i = parseFloat(i);
				n--;
				sum = n * i;
				$tar.next().val(n);
				$pal.html(sum);
			}
		} else if ($tar.is(".add")) {
			var n = parseInt($tar.prev().val()),
				$pal = $tar.parent().parent().parent().children(":eq(4)").children(),
				sum = $pal.html(),
				$pri = $tar.parent().parent().parent().children(":eq(3)").children(),
				i = $pri.html();
			sum = parseFloat(sum);
			i = parseFloat(i);
			n++;
			sum = n * i;
			$tar.prev().val(n);
			$pal.html(sum);
		}
	})
})

$("#chkAll").click(e => {
	var $chkAll = $(e.target);
	var $inputs = $(".chkbox");
	//console.log($inputs);
	$inputs.prop("checked", $chkAll.prop("checked"));
});
$("#tbodys").on("click", "input[type=checkbox]", function (e) {
	var $tar = $(e.target);
	var uncheckde = $(".chkbox:not(:checked)");
	//console.log(uncheckde.length);
	if (uncheckde.length == 0)
		$("#chkAll").prop("checked", true);
	else
		$("#chkAll").prop("checked", false);
	var ck = $tar.is(":checked")
	var sum1 = $tar.parent().parent().children(":eq(4)").children().html();
	sum1 = parseFloat(sum1);
	var sum_s = parseFloat($("#sum_s").html());
	if (ck) {
		sum_s += sum1;
		$("#sum_s").html(sum_s);
	} else {
		sum_s -= sum1;
		$("#sum_s").html(sum_s);
	}
});
$("#clear_pro").click(e => {
	window.confirm("确认全部删除吗？");
	if ($("#chkAll").is(":not(:checked)")) {
		$("input[type=checkbox]").prop("checked", true);
		$.ajax({
			type: "get",
			url: "data/controlles/clearCart.php",
			success: data => {
				if (data.code > 0) {
					alert(data.msg);
					loadCart();
				} else {
					alert(data.msg);
				}
			}
		})
	}
})
$("#tbodys").on("click", ".del", function (e) {
	console.log(2);
	e.preventDefault();
	var $tar = $(e.target);
	window.confirm("确认删除吗？");
	var input = $tar.parent().parent().children(":eq(0)").children();
	input.prop("checked", true);
	var pid = $tar.data("pid");
	$.ajax({
		type: "get",
		url: "data/controlles/delCart.php",
		data: { pid: pid },
		success: data => {
			if (data.code > 0) {
				alert(data.msg);
				loadCart();
			} else {
				alert(data.msg);
			}
		}
	});

})
