<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<script type="text/javascript"
	src="/test/jsp/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
</head>

<body topmargin=0 leftmargin=0 text=#464646>
	<center>
		<br />
		<!-- 입력된 값을 다음 페이지로 넘기기 위해 FORM을 만든다. -->

		<form action="send.jsp" method="post" id="frm">

			<table width=800 border=0 cellpadding=0 cellspacing=1 bgcolor=#cccccc>
				<tr>
					<td height=20 align=center bgcolor=#ffffff><B>글 쓰 기</B></td>
				</tr>
				<!-- 입력 부분 -->
				<tr>
					<td bgcolor=white>

						<table>
							<tr>


								<TEXTAREA name="smarteditor" id="ir1"
									style="width: 100%; height: 300px; min-width: 610px; display: none;"></TEXTAREA>

								<script type="text/javascript">
									var oEditors = [];
									$(function() {
										nhn.husky.EZCreator
												.createInIFrame({
													oAppRef : oEditors,
													elPlaceHolder : "ir1",
													//SmartEditor2Skin.html 파일이 존재하는 경로
													sSkinURI : "jsp/smarteditor/SmartEditor2Skin.html",
													htParams : {
														// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
														bUseToolbar : true,
														// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
														bUseVerticalResizer : true,
														// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
														bUseModeChanger : true,
														fOnBeforeUnload : function() {

														}
													},
													fOnAppLoad : function() {
														//기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
														oEditors.getById["ir1"]
																.exec(
																		"PASTE_HTML",
																		[ "기존 DB에 저장된 내용을 에디터에 적용할 문구" ]);
													},
													fCreator : "createSEditor2"
												});
									});
								</script>



							</tr>
						</TABLE>
					</td>
				</tr>
				<!-- 입력 부분 끝 -->
			</table>
		</form>


	</center>
	<div style="position: relative; margin-left: 0px;">
<fb:like data-layout="button" data-action="like" data-show-faces="true" data-share="true"></fb:like>
</div>
<div style="position: relative; margin-left: 0px;">
<!-- <div class="fb-comments" data-numposts="5" data-colorscheme="light" data-width="100%"></div> --></div>
</body>

</html>