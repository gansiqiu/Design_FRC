<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="../head.jsp"%>

<link href="resources/css/lib/jquery.toastmessage.css" type="text/css" rel="stylesheet">
<link href="resources/frontend/css/src/main.css" type="text/css" rel="stylesheet">
<style type="text/css">

</style>
<script>
	var id = "${production.id}";
</script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="pageMenu.jsp"%>

	<div class="zyTwoSide zyMargin60" id="zyInfoPanel">
		<div class="zyCLeft zyTipPanel">
			<h2 class="zyTitle">上传作品</h2>
			<div id="zyStep1Tip" class="zyStepTip">
				<p class="zyText">请填写参赛者信息</p>
				<p class="zyText">团队参赛的人员限制<span>2-5</span>人</p>
			</div>
			<div id="zyStep2Tip" class="zyStepTip zyHidden">
				<h5 class="zySubTitle">上传要求</h5>
				<p class="zyText">
					1. 作品版面大小为<font class="zyFF0000">A1</font>（841mm×1189mm）图幅，<font class="zyFF0000">竖构图</font>，jpg格式，精度350dpi；<font class="zyFF0000">不得超过5M</font>,设计版面图内容包含主题阐释、核心图形及字体、辅助视觉元素、
					场景应用示例、必要的结构图、尺寸图及设计说明（必须是中英双语）等。<br> <br> 2.媒体附件1个，H5或在线视频链接形式，就设计方案在影像、动画、Web、印刷品、空间环境或交互装置等媒体形式上的应用进行演示和说明。H5，建议使用“木疙瘩”,“iH5”，“MAKA”等H5工具制作，提供预览链接；
					在线视频，建议制作视频并上传到优酷或腾讯视频，提供预览通用代码。<br>
					<br> 另外，为保证本次大赛评选的公正性，参赛作品及 版面上不得出现作者所在单位、姓名（包括英文或 拼音缩写）或与作者身份有关的任何图标、图形等 个人信息资料。
				</p>
			</div>
		</div>

		<div class="zyCRight zyHandlerPanel">
			<div class="zyStep" id="zyStep">
				<div class="zyStepItem zyActive" data-target="#zyStep1">参赛者信息</div>
				>
				<div class="zyStepItem" data-target="#zyStep2">作品信息</div>
				>
				<div class="zyStepItem" data-target="#zyPreview">预览提交</div>
			</div>
			<div class="zyStepPanel" id="zyStep1">
				<div class="zyForm">
					<div class="zyFormRow" id="zySelectPersonType">
						<input type="radio" name="participantType" value="1" checked="checked" data-target="#zyPersonalInfo"><label>个人</label> <input type="radio"
							name="participantType" value="2" data-target="#zyTeamInfo" style="margin-left: 60px"><label>团体</label> <input type="radio" name="participantType" value="3"
							data-target="#zyCompanyInfo" style="margin-left: 60px"><label>公司</label>
					</div>
					<div id="zyPersonalInfo" class="zyPersonInfoPanel">
						<div class="zyFormRow">
							<label class="zyFormLabel">姓名</label>
							<div class="zyFormControl">
								<input type="text" name="participantName" class="zyInput zyActionRequired">
							</div>
							<span class="zyRequired">*</span>
						</div>

						<div class="zyFormRow">
							<label class="zyFormLabel">身份证号</label>
							<div class="zyFormControl">
								<input id="identityPersonal" type="text" name="participantIdNumber" class="zyInput zyActionRequired">
							</div>
							<span class="zyRequired">*</span>
						</div>

						<div class="zyFormRow">
							<label class="zyFormLabel">所属单位</label>
							<div class="zyFormControl">
								<input type="text" name="affiliatedUnit" class="zyInput">
							</div>
						</div>

						<div class="zyFormRow">
							<label class="zyFormLabel">简介</label>
							<div class="zyFormControl">
								<textarea name="participantBrief" class="zyInput zyTextarea zyActionRequired"></textarea>
							</div>
							<span class="zyRequired">*</span>
						</div>
					</div>
					<div id="zyTeamInfo" class="zyPersonInfoPanel zyHidden">
						<div class="zyFormRow">
							<label class="zyFormLabel">队长姓名</label>
							<div class="zyFormControl">
								<input type="text" name="participantName" class="zyInput zyActionRequired">
							</div>
							<span class="zyRequired">*</span>
						</div>

						<div class="zyFormRow">
							<label class="zyFormLabel">队长身份证号</label>
							<div class="zyFormControl">
								<input id="identityCaptain" type="text" name="participantIdNumber" class="zyInput zyActionRequired">
							</div>
							<span class="zyRequired">*</span>
						</div>

						<div class="zyFormRow">
							<label class="zyFormLabel">队长所属单位</label>
							<div class="zyFormControl">
								<input type="text" name="affiliatedUnit" class="zyInput">
							</div>
						</div>

						<div class="zyFormRow">
							<label class="zyFormLabel">队员</label>
							<div class="zyFormControl">
								<textarea name="teamMember" class="zyInput zyTextarea zyActionRequired" placeholder="中文逗号隔开"></textarea>
							</div>
							<span class="zyRequired">*</span>
						</div>

						<div class="zyFormRow">
							<label class="zyFormLabel">简介</label>
							<div class="zyFormControl">
								<textarea name="participantBrief" class="zyInput zyTextarea zyActionRequired"></textarea>
							</div>
							<span class="zyRequired">*</span>
						</div>
					</div>

					<div id="zyCompanyInfo" class="zyPersonInfoPanel zyHidden">
						<div class="zyFormRow">
							<label class="zyFormLabel">名称</label>
							<div class="zyFormControl">
								<input type="text" name="participantName" class="zyInput zyActionRequired">
							</div>
							<span class="zyRequired">*</span>
						</div>

						<div class="zyFormRow">
							<label class="zyFormLabel">营业执照号</label>
							<div class="zyFormControl">
								<input id="BusinessLicense" type="text" name="participantIdNumber" class="zyInput zyActionRequired">
							</div>
							<span class="zyRequired">*</span>
						</div>

						<div class="zyFormRow">
							<label class="zyFormLabel">简介</label>
							<div class="zyFormControl">
								<textarea name="participantBrief" class="zyInput zyTextarea zyActionRequired"></textarea>
							</div>
							<span class="zyRequired">*</span>
						</div>
					</div>

				</div>

				<button id="zystep" class="zyBtn zyActionNavBtn" data-target="#zyStep2">下一步</button>
			</div>

			<div class="zyStepPanel zyHidden" id="zyStep2">
				<div class="zyForm">
					
					<div id="zyProductInfo" class="zyWorkInfoPanel">
						
						<div class="zyFormRow">
							<label class="zyFormLabel">标题</label>
							<div class="zyFormControl">
								<input type="text" name="title" class="zyInput zyActionRequired">
							</div>
							<span class="zyRequired">*</span>
						</div>

						<div class="zyFormRow">
							<label class="zyFormLabel">简介</label>
							<div class="zyFormControl">
								<textarea name="content" class="zyInput zyTextarea zyActionRequired"></textarea>
							</div>
							<span class="zyRequired">*</span>
						</div>
						
						
						<!-- 口号作品	或者		图幅作品	-->
						<div class="zyFormRow zyHidden" id="zySelectProductType">
							<input type="radio" class="zyProductImgInfoRadio" name="SelectProductType" value="1" checked="checked" data-target="#zyProductImgInfo"><label>图幅作品</label> 
							<input type="radio" class="zyProductsloganInfoRadio"	name="SelectProductType" value="3" data-target="#zyProductSloganInfo" style="margin-left: 60px"><label>口号作品</label> 
						</div>
						<!-- 口号作品	或者		图幅作品 -->
						
						<div id="zyProductImgInfo" class="zyProductInfoPanel">
							<div class="zyFormRow">
								<label class="zyFormLabel">H5网址</label>
								<div class="zyFormControl">
									<input type="text" name="h5Address" class="zyInput">
								</div>
							</div>
							
							<div class="zyFormRow">
								<label class="zyFormLabel">视频分享地址</label>
								<div class="zyFormControl">
									<textarea id="videoAddress" name="videoAddress" class="zyInput zyTextarea"></textarea>
								</div>
							</div>
							
							<div class="zyFormRow">
								<label class="zyFormLabel">图幅</label>
								<div class="zyFormControl zyUploadControl" id="uploadImageContainer1">
									<img id="uploadBg" class="zyActionOtherImage" style="width: 300px;height:430px" src="resources/frontend/images/app/defaultImage.jpg" /> 
									<div id="uploadBgInfo" style="width:300px">
										<div id="ossBgfile">
											<div><b id="bgFileDescribe"><span id="bgFileCompletePersent"></span></b>
												<div  id="ossBgProgress"  class="progress">
													<div class="determinate" style="width: 1%"></div>
												</div>
											</div>
										</div>
										<pre id="bgConsole"></pre>
										<p>&nbsp;</p>
									</div>
								</div>
								<span class="zyRequired">*</span>
							</div>
						</div>
						<div id="zyProductSloganInfo" class="zyProductInfoPanel zyHidden">
							<div class="zyFormRow">
								<label class="zyFormLabel">口号</label>
								<div class="zyFormControl">
									<input id="slogan" type="text" name="slogan" placeholder="仅限16个字符" class="zyInput">
								</div>
								<span class="zyRequired">*</span>
							</div>
						</div>
						
					</div>

					
					<button class="zyBtn zyActionNavBtn" data-target="#zyStep1">上一步</button>
					<button class="zyBtn zyActionNavBtn" data-target="#zyPreview">下一步</button>
				</div>
			</div>
		</div>
	</div>

	<div class="zyStepPanel zyHidden zyMargin60" id="zyPreview">
		<div class="zyStep zyTCenter">
			<div class="zyStepItem" data-target="#zyStep1">参赛者信息</div>
			>
			<div class="zyStepItem" data-target="#zyStep2">作品信息</div>
			>
			<div class="zyStepItem  zyActive" data-target="#zyPreview">预览提交</div>
		</div>

		<div class="zyWorkDetail" id="zyPreviewContent"></div>

		<script type="text/template" id="zyPreviewTpl">
            <h3 class="zyTitle">标题：$ZY{title}</h3>
            <h3 class="zyAuthor">作者：$ZY{participantName}</h3>
            <p class="zyText">简介：$ZY{content}</p>
			{@if slogan}
               <div class="slogan">口号:&nbsp;&nbsp;$ZY{slogan}</div>
            {@/if}

            {@if h5Address}
               <div class="zy20C7BE">H5网页链接:&nbsp;&nbsp;<a class="zy20C7BE" href="$ZY{h5Address}" target="_blank">H5演示地址</a></div>
            {@/if}

            {@if videoAddress}
               <div id="videoContainer" style="text-align:center"></div>
            {@/if}

            {@if pimage}
                <img id="imgProduct" src="$ZY{pimage}" style="margin:10px auto;">
            {@/if}
        </script>

		<div class="zyTCenter" style="margin-top: 50px;">
			<button class="zyBtn zyActionNavBtn" data-target="#zyStep2">上一步</button>
			<button class="zyBtn" id="zySubmitData">提交</button>
		</div>
	</div><br><br><br><br>

    <div class="zyFooter">&copy;长沙-媒体艺术之都视觉形象设计大赛</div>
	<%@ include file="loading.jsp"%>
	
	<script>
		var pageName = "uploadWork";
	</script>

	<script src="resources/js/lib/jquery-1.10.2.min.js"></script>
	<script src="resources/js/lib/jquery.toastmessage.js"></script>
	<script src="resources/js/lib/plupload.full.min.js"></script>
	<script src="resources/js/lib/juicer-min.js"></script>
	<script src="resources/frontend/js/src/config.js"></script>
	<script src="resources/js/src/functions.js"></script>
	<script src="resources/js/src/ZYFormHandler.js"></script>
	<script src="resources/js/src/ZYCOUHandler.js"></script>
	<script src="resources/frontend/js/src/ossupload.js"></script>
	<script src="resources/frontend/js/src/uploadWork.js"></script>
	<script src="resources/frontend/js/src/header.js"></script>
</body>
</html>