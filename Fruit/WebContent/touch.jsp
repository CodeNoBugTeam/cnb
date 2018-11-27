<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>最新资讯</title>
    <link href="css/touch.css"rel="stylesheet">
    <link href="css/share.css"rel="stylesheet">
    <script src="js/jquery-1.12.3.js"></script>
</head>
<body>
<!--顶部导航-->
<jsp:include page="/public/head.jsp"></jsp:include>
<!--顶部导航结束-->
<!--banner图片-->
<div class="her-banner">

</div>
<!--banner图片结束-->
<div class="content">
    <!--建议开始-->
    <div class="recommand clear">
        <div class="rec-cont clear">
            <div class="rec-left">
				<jsp:include page="/public/leftmenu.jsp"></jsp:include>
            </div>
            <div class="rec-right">
                <div class="rec-top">
                    <div class="rt-left">
                        <img src="images/tou-1.png">
                    </div>
                    <div class="rt-right">
                        <span style="line-height: 32px;">
                            <span style=""><div style="">
                                <span style="color: rgb(51, 51, 51); font-size: 18px; background-color: transparent;">
                                    向越来越多的人提供最好吃的水果
                                </span><br style=""></div><div style=""><span style="">
                                <p style="color: rgb(0, 0, 0); font-family: 宋体; font-size: 12px;">
                                    <span style="font-size: 14px; font-family: 微软雅黑; color: rgb(51, 51, 51);">
                                        FRESH蔬果（集团）有限公司以蔬果、水果、粮油、肉类、冻品、水产、南北干货以及花卉等农产品批发市场经营管理、生鲜配送为主力业态。
                                    </span></p>
                                <p style="color: rgb(0, 0, 0); font-family: 宋体; font-size: 12px;"><span style="font-size: 14px; font-family: 微软雅黑; color: rgb(51, 51, 51);">
                                    用毕生精力致力于水果产业链和水果专营连锁业态的发展，为消费者提供最好吃的水果。开拓创新立宏愿，决心“一生只做一件事，一心一意做水果”。
                                </span></p></span><p style="color: rgb(0, 0, 0); font-family: 宋体; font-size: 12px;"></p></div></span><div style="">
                            <p style="color: rgb(0, 0, 0); font-family: 宋体; font-size: 12px;"></p></div></span>
                    </div>

                </div>
                <div class="fk-editor simpleText  ">
                        <font style="color: rgb(5, 160, 69);" color="#05a045">
                            <span style="font-size: 15px;">
                                &nbsp; &nbsp; &nbsp; &nbsp; * 如有合作需要，请填写以下表单，我们将尽快给您回复，并为您提供最真诚的服务，谢谢您的支持。
                            </span>
                        </font>

                </div>
                <div class="message">
                    <p>姓名</p>
                    <div class="siteFormMiddle">
                        <input _show="1"class="g_itext" type="text"placeholder="请输入真实姓名">
                        <div class="star">*</div>
                    </div>
                    <p>电话</p>
                    <div class="siteFormMiddle">
                        <input _show="1"class="g_itext" type="text"placeholder="请输入真实电话">
                        <div class="star">*</div>
                    </div>
                    <p>联系时间</p>
                    <div class="siteFormMiddle">
                        <select _show="1" class="resize">
                            <option value="none" style="display: none; ">请选择</option>
                            <option value="工作日">工作日</option>
                            <option value="周末">周末</option>
                            <option value="随时">随时</option>
                        </select>
                    </div>
                    <p>留言内容</p>
                    <div class="siteFormMiddle" style="height: 102px; ">
                        <textarea class="g_textarea resize" cols="50" rows="3" maxlength="1000" placeholder="请输入留言"></textarea>
                        <div class="star"style="line-height: 100px;">*</div>
                    </div>
                    <p>购买方式</p>
                    <div class="siteFormMiddle">
                        <div class="siteFormItemCheckItem_N_U siteFormItemCheckItem_N_U_A">
                            <input type="radio" id="M376F1siteFormRadio3I0" name="M376F1siteFormRadioR3" value="批发">
                            <label for="M376F1siteFormRadio3I0">批发</label>
                        </div>
                        <div class="siteFormItemCheckItem_N_U siteFormItemCheckItem_N_U_A">
                            <input type="radio" id="M376F1siteFormRadio3I1" name="M376F1siteFormRadioR3" value="零食">
                            <label for="M376F1siteFormRadio3I1">零食</label>
                        </div>
                    </div>
                    <div class="s_ibutton">

                    </div>
                </div>


            </div>


        </div>
    </div>

    <!--建议结束-->
</div>
<!--底部-->
<jsp:include page="/public/foot.jsp"></jsp:include>
</body>
<script src="js/touch.js"></script>
</html>