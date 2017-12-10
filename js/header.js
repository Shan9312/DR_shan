$(() => {
    //  获取登录用户名  
    function localStatus() {
        $.get("data/routes/isLogin.php").then(data => {
           // console.log(data);//{code: 1, uname:"亮"}
            if (data.code > 0) {
                $("#login_name").html(data.uname);
                $("#loginOut").show().siblings().hide();
            } else
                $("#loginOut").hide().siblings().show();
                $("#loginOut").data("uid",data.uid);
        });
    }
    // 把头部加载到其他页面上
    $("#header").load("header.html", html => {
        // 注销账号
        localStatus();
        $("#loginOut").click(e => {
            e.preventDefault();
            console.log(1);
            $.get("data/routes/loginOut.php").then(() => {
                location.reload();
            })
        });
        if(location.search)
        $("#txtSearch").val(
            decodeURI(location.search.split("=")[1])
        );
        $("[data-trigger=search]").click(()=>{
			//获得id为txtSearch的内容,去掉开头和结尾的空格保存在变量kw中
			var kw=$("#txtSearch").val().trim();
			if(kw!=="")//如果kw不为""
				//用location跳转到products.html?kw=kw
				location="product.html?kw="+kw;
		});
        //搜索帮助:
        var $txtSearch = $("#txtSearch"),
            $shelper = $("#shelper");
        $txtSearch.keyup(e => {
            if (e.keyCode != 13) {
                if (e.keyCode == 40) {
                    if (!$shelper.is(":has(.focus)")) {
                        $shelper.children()
                            .first().addClass("focus");
                    } else {
                        if ($shelper.children().last()
                            .is(".focus")) {
                            $shelper.children(".focus")
                                .removeClass("focus");
                            $shelper.children()
                                .first().addClass("focus");
                        } else {
                            $shelper.children(".focus")
                                .removeClass("focus")
                                .next().addClass("focus");
                        }
                    }
                    $txtSearch.val(
                        $shelper.children(".focus")
                            .attr("title")
                    );
                } else if (e.keyCode == 38) {
                    if (!$shelper.is(":has(.focus)")) {
                        $shelper.children()
                            .last().addClass("focus");
                    } else {
                        if ($shelper.children()
                            .first().is(".focus")) {
                            $shelper.children(".focus")
                                .removeClass("focus");
                            $shelper.children()
                                .last().addClass("focus");
                        } else {
                            $shelper.children(".focus")
                                .removeClass("focus")
                                .prev().addClass("focus");
                        }
                    }
                    $txtSearch.val(
                        $shelper.children(".focus").attr("title")
                    );
                } else {
                    var $tar = $(e.target);
                    $.get(
                        "data/controlles/searchHelper.php",
                        "term=" + $tar.val()
                    ).then(data => {
                        var html = "";
                        for (var p of data) {
                            html += `<li title="${p.title}">
                                    <div class="search-item" title="${p.title}" data-url="product.html">${p.title}</div>
                                    </li>`
                        }
                        $shelper.show().html(html);
                    });
                }
            } else
                $("[data-trigger=search]").click();
        }).blur(() => $shelper.hide());
    });
})