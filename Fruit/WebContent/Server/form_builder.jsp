<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="css/shop.css" type="text/css" rel="stylesheet" />
<link href="css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<link href="css/summernote/summernote.css" rel="stylesheet" type="text/css" />
<link href="css/summernote/summernote-bs3.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery-ui-1.10.4.min.js" type="text/javascript"></script>
<script src="js/beautifyhtml.js" type="text/javascript"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<title>è¡¨åæå»ºå¨</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
<![endif]-->
  <style>
.droppable-active {background-color: #ffe !important;}
.tools a {cursor: pointer;font-size: 80%;}
.form-body .col-md-6,
.form-body .col-md-12 {min-height: 400px;}
.draggable {cursor: move;}
.modal-body textarea{ width:100%;}
.tools a{ margin:0px 5px; color:#1D9FC0}
.ibox-content .alert{ margin-top:0px;}
 </style>
<body class="gray-bg">
<div class="margin" id="page_style">
        <div class="wrapper wrapper-content" id="Sellerber">
        <div class="row">
            <div class="col-sm-5">
                <div class="ibox float-e-margins">
                    <div class="ibox-title"><h5>åç´ </h5></div>
                    <div class="ibox-content">
                        <div class="alert alert-info">
                        <p>ææ½å·¦ä¾§çè¡¨ååç´ å°å³ä¾§åºåï¼å³å¯çæç¸åºçHTMLä»£ç ï¼è¡¨åä»£ç ï¼è½»æ¾æå®ï¼</p>
                        <p>æ¶é´è®¾ç½®éå¼ç¨laydate.jså°é¡µé¢é</p></div>
                        <form role="form" class="form-horizontal m-t">
                            <div class="form-group draggable">
                                <label class="col-sm-3 label_nameedit ">ææ¬æ¡ï¼</label>
                                <div class="col-sm-9">
                                    <input type="text" name="" class="form-control" placeholder="è¯·è¾å¥ææ¬">
                                    <span class="help-block">è¯´ææå­</span>
                                </div>
                            </div>
                             <div class="form-group draggable">
                                <label class="col-sm-3 label_nameedit ">ææ¬æ¡ï¼</label>
                                <div class="col-sm-9">
                                    <input type="text" name="" class="form-control"  placeholder="è¯·è¾å¥ææ¬">
                                    <span class="help-block m-b-none">è¯´ææå­</span>
                                </div>
                            </div>
                            <div class="form-group draggable">
                                <label class="col-sm-3 label_nameedit ">å¤è¡ææ¬ï¼</label>
                                <div class="col-sm-9">
                                    <textarea name="" cols="" rows=""></textarea>
                                    <span class="help-block m-b-none">è¯´ææå­</span>
                                </div>
                            </div>
                            <div class="form-group draggable">
                                <label class="col-sm-3 label_nameedit ">å¯ç æ¡ï¼</label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" name="password" placeholder="è¯·è¾å¥å¯ç ">
                                </div>
                            </div>
                            <div class="form-group draggable">
                                <label class="col-sm-3 label_nameedit ">éæ©æ¶é´ï¼</label>
                                <div class="col-sm-9">
                                   <input type="text" name="" class="form-control laydate-icon"  id="times"  style=" height:30px;">
                                   <script>laydate({
									              elem: '#times',
												  format: 'YYYY/MM/DD',
												  min: laydate.now(), //è®¾å®æå°æ¥æä¸ºå½åæ¥æ
												  max: '2099-06-16', //æå¤§æ¥æ
												  istime: true,
												  istoday: false,})
                                    </script>
                                </div>
                            </div>
                            <div class="form-group draggable">
                                <label class="col-sm-3 label_nameedit ">æ¶é´æ®µï¼</label>
                                <div class="col-sm-9">
                                     <span class="laydate-icon" id="start" style="width:150px;height:30px; line-height:30px; float:left"></span>
                                     <span  style=" float:left; margin:0px 5px; color:#666; line-height:32px;">è³</span>
                                     <span class="laydate-icon" id="end" style="width:150px;height:30px; line-height:30px; float:left"></span>
                                </div>
                                <script>
                                var start = {
								  elem: '#start',
								  format: 'YYYY/MM/DD ',
								  min: laydate.now(), //è®¾å®æå°æ¥æä¸ºå½åæ¥æ
								  max: '2099-06-16 23:59:59', //æå¤§æ¥æ
								  istime: true,
								  istoday: false,
								  choose: function(datas){
									   end.min = datas; //å¼å§æ¥éå¥½åï¼éç½®ç»ææ¥çæå°æ¥æ
									   end.start = datas //å°ç»ææ¥çåå§å¼è®¾å®ä¸ºå¼å§æ¥
								  }
							  };
							  var end = {
								  elem: '#end',
								  format: 'YYYY/MM/DD',
								  min: laydate.now(),
								  max: '2099-06-16 23:59:59',
								  istime: true,
								  istoday: false,
								  choose: function(datas){
									  start.max = datas; //ç»ææ¥éå¥½åï¼éç½®å¼å§æ¥çæå¤§æ¥æ
								  }
							  };
							  laydate(start);
							  laydate(end);
                                </script>
                            </div>
                            <div class="form-group draggable">
                                <label class="col-sm-3 label_nameedit ">ä¸æåè¡¨ï¼</label>
                                <div class="col-sm-9">
                                    <select class="form-control"  style=" width:200px" name="">
                                        <option>éé¡¹ 1</option>
                                        <option>éé¡¹ 2</option>
                                        <option>éé¡¹ 3</option>
                                        <option>éé¡¹ 4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group draggable">
                              <label class="col-sm-3 label_nameedit ">æä»¶åï¼</label>
                              <div class="col-sm-9">
                                <div class="line"> 
                                <span class="span"> 
                                <input name="" type="text" id="viewfile" onmouseout="document.getElementById('upload').style.display='none';" class="inputstyle form-control" /> 
                                </span> 
                                <label for="unload" onmouseover="document.getElementById('upload').style.display='block';" class="file1">æµè§...</label> 
                                <input type="file" onchange="document.getElementById('viewfile').value=this.value;this.style.display='none';" class="file" id="upload" /> 
                                </div>
                                </div>
                            </div>
                            <div class="form-group draggable">
                                <label class="col-sm-3 label_nameedit ">çº¯ææ¬ï¼</label>

                                <div class="col-sm-9">
                                    <p class="form-control-static">è¿éæ¯çº¯æå­ä¿¡æ¯</p>
                                </div>
                            </div>
                            <div class="form-group draggable">
                                <label class="col-sm-3 label_nameedit ">åéæ¡ï¼
                                </label>

                                <div class="col-sm-9">
                                   <label class="radio-inline"><input type="radio"  name="optionsRadios" class="ace radio"><span class="lbl">åéæ¡</span></label>
                                   <label class="radio-inline"><input type="radio"  name="optionsRadios" class="ace radio"><span class="lbl">åéæ¡</span></label>
                               </div>
                            </div>
                            <div class="form-group draggable">
                                <label class="col-sm-3 label_nameedit">å¤éæ¡ï¼</label>

                                <div class="col-sm-9">
                                   <label class="checkbox-inline"><input type="checkbox" class="ace"><span class="lbl">å¤éæ¡åç§°</span></label>
                                   <label class="checkbox-inline"><input type="checkbox" class="ace"><span class="lbl">å¤éæ¡åç§°</span></label>
                                   <label class="checkbox-inline"><input type="checkbox" class="ace"><span class="lbl">å¤éæ¡åç§°</span></label>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group draggable">
                                <div class="Button_operation">
                                    <button class="btn button_btn bg-deep-blue" type="submit">ä¿å­åå®¹</button>
                                    <button class="btn button_btn bg-gray" type="submit">åæ¶</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
    <div class="col-sm-7">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>ææ½å·¦ä¾§è¡¨ååç´ å°æ­¤åºå</h5>
                <div class="ibox-tools ibox-columns" >
                    è¯·éæ©æ¾ç¤ºçåæ°ï¼
                    <select id="n-columns">
                        <option value="1">æ¾ç¤º1å</option>
                        <option value="2">æ¾ç¤º2å</option>
                    </select>
                </div>
            </div>
            <div class="ibox-content">
                <div class="row form-body form-horizontal m-t clearfix">
                    <div class="col-md-12 droppable sortable">
                    </div>
                    <div class="col-md-6 droppable sortable" style="display: none;">
                    </div>
                    <div class="col-md-6 droppable sortable" style="display: none;">
                    </div>
                </div>
                <button type="submit" class="btn button_btn bg-deep-blue" data-clipboard-text="testing" id="copy-to-clipboard">å¤å¶ä»£ç </button>
        </div>
     </div>
    </div>        
   </div>
 </div>
</div>
</body>
</html>
<script>
	$(function() { 
	$("#Sellerber").frame({
		float : 'left',
		color_btn:'.skin_select',
		Sellerber_menu:'.list_content',
		page_content:'.list_show',//åå®¹
		datalist:".ibox",//æ°æ®åè¡¨é«åº¦åå¼
		header:65,//é¡¶é¨é«åº¦
		mwidth:200,//èåæ å®½åº¦
		
	});
});
	
/***********æå»ºå¨***********/
$(document).ready(function () {
	setup_draggable();
	$("#n-columns").on("change", function () {
		var v = $(this).val();
		if (v === "1") {
			var $col = $('.form-body .col-md-12').toggle(true);
			$('.form-body .col-md-6 .draggable').each(function (i, el) {
				$(this).remove().appendTo($col);
			})
			$('.form-body .col-md-6').toggle(false);
		} else {
			var $col = $('.form-body .col-md-6').toggle(true);
			$(".form-body .col-md-12 .draggable").each(function (i, el) {
				$(this).remove().appendTo(i % 2 ? $col[1] : $col[0]);
			});
			$('.form-body .col-md-12').toggle(false);
		}
	});
	$("#copy-to-clipboard").on("click", function () {
		var $copy = $(".form-body").clone().appendTo(document.body);
		$copy.find(".tools, :hidden").remove();
		$.each(["draggable", "droppable", "sortable", "dropped","ui-sortable", "ui-draggable", "ui-droppable", "form-body"], function (i, c) {
			$copy.find("." + c).removeClass(c).removeAttr("style");
		})
		var html = html_beautify($copy.html());
		$copy.remove();
		$modal = get_modal(html).modal("show");
		$modal.find(".btn").remove();
		$modal.find(".modal-title").html("å¤å¶HTMLä»£ç ");
		$modal.find(":input:first").select().focus();
		return false;
	})
});
var setup_draggable = function () {
	$(".draggable").draggable({
		appendTo: "body",
		helper: "clone"
	});
	$(".droppable").droppable({
		accept: ".draggable",
		helper: "clone",
		hoverClass: "droppable-active",
		drop: function (event, ui) {
			$(".empty-form").remove();
			var $orig = $(ui.draggable)
			if (!$(ui.draggable).hasClass("dropped")) {
				var $el = $orig
					.clone()
					.addClass("dropped")
					.css({
						"position": "static",
						"left": null,
						"right": null
					})
					.appendTo(this);
				// update id
				var id = $orig.find(":input").attr("id");
				if (id) {
					id = id.split("-").slice(0, -1).join("-") + "-" + (parseInt(id.split("-").slice(-1)[0]) + 1)

					$orig.find(":input").attr("id", id);
					$orig.find("label").attr("for", id);
				}
				// tools
				$('<p class="tools col-sm-12 col-sm-offset-3 margin-top">\
				<a class="edit-link">ç¼è¾HTML<a> | \
				<a class="remove-link">ç§»é¤</a></p>').appendTo($el);
			} else {
				if ($(this)[0] != $orig.parent()[0]) {
					var $el = $orig
						.clone()
						.css({
							"position": "static",
							"left": null,
							"right": null
						})
						.appendTo(this);
					$orig.remove();
				}
			}
		}
	}).sortable();
}
var get_modal = function (content) {
	var modal = $('<div class="modal" style="overflow: auto;" tabindex="-1">\
	<div class="modal-dialog">\
		<div class="modal-content">\
			<div class="modal-header">\
				<a type="button" class="close"\
					data-dismiss="modal" aria-hidden="true">&times;</a>\
				<h4 class="modal-title">ç¼è¾HTML</h4>\
			</div>\
			<div class="modal-body ui-front">\
				<textarea class="form-control" \
					style="min-height: 200px; margin-bottom: 10px;\
					font-family: Monaco, Fixed">' + content + '</textarea>\
				<button class="btn button_btn bg-deep-blue">æ´æ°HTML</button>\
			</div>\
		</div>\
	</div>\
	</div>').appendTo(document.body);
	return modal;
};
$(document).on("click", ".edit-link", function (ev) {
	var $el = $(this).parent().parent();
	var $el_copy = $el.clone();
	var $edit_btn = $el_copy.find(".edit-link").parent().remove();
	var $modal = get_modal(html_beautify($el_copy.html())).modal("show");
	$modal.find(":input:first").focus();
	$modal.find(".button_btn").click(function (ev2) {
		var html = $modal.find("textarea").val();
		if (!html) {
			$el.remove();
		} else {
			$el.html(html);
			$edit_btn.appendTo($el);
		}
		$modal.modal("hide");
		return false;
	})
});
$(document).on("click", ".remove-link", function (ev) {
	$(this).parent().parent().remove();
});
</script>
