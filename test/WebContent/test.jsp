<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title></title>
</head>
<body>

<style>

#css_menus {
    font-family:'nanumgothic', '나눔고딕', 'malgun gothic', '맑은 고딕', 'dotum', '돋움', sans-serif
}
/* 탭 선택 시 표시할 요소(div) 정의(1번 탭 선택 시 첫 번째 div 요소 표시) */
#css_menus input:nth-of-type(1), #css_menus input:nth-of-type(1) ~ div:nth-of-type(1), 
#css_menus input:nth-of-type(2), #css_menus input:nth-of-type(2) ~ div:nth-of-type(2), 
#css_menus input:nth-of-type(3), #css_menus input:nth-of-type(3) ~ div:nth-of-type(3), 
#css_menus input:nth-of-type(4), #css_menus input:nth-of-type(4) ~ div:nth-of-type(4), 
#css_menus input:nth-of-type(5), #css_menus input:nth-of-type(5) ~ div:nth-of-type(5) {
    display:none
}
#css_menus input:nth-of-type(1):checked ~ div:nth-of-type(1), 
#css_menus input:nth-of-type(2):checked ~ div:nth-of-type(2), 
#css_menus input:nth-of-type(3):checked ~ div:nth-of-type(3), 
#css_menus input:nth-of-type(4):checked ~ div:nth-of-type(4), 
#css_menus input:nth-of-type(5):checked ~ div:nth-of-type(5) {
    display:block
}
/* 라벨 기본 스타일 지정 */
#css_menus > label {
    display:inline-block;
    font-variant:small-caps;
    font-size:.9em;
    padding:5px;
    text-align:left;
    width:9%;
    line-height:1.8em;
    font-weight:700;
    border-radius:3px 3px 0 0;
    background:#fff;
    color:#ccc;
    border:0px solid #ccc;
    border-width:0px 0px 0;
}
#css_menus > label:hover {
    cursor:pointer;
    width: 9%;
}
#css_menus label[for=tab1] {
    margin-left:0;
    width: 9%;
}
/* 선택된 라벨, 커서를 올린 라벨 스타일 지정 */
#css_menus input:nth-of-type(1):checked ~ label:nth-of-type(1), #css_menus > label[for=tab1]:hover {
    background:#fff;
    color:#777;
    width: 9%;
    border-bottom-color:gray;
}
#css_menus input:nth-of-type(2):checked ~ label:nth-of-type(2), #css_menus > label[for=tab2]:hover {
    background:#fff;
    color:#777;
    width: 9%;
    border-bottom-color:gray;
}
#css_menus input:nth-of-type(3):checked ~ label:nth-of-type(3), #css_menus > label[for=tab3]:hover {
    background:#fff;
    color:#777;
    width: 9%;
    border-bottom-color:gray;
}
#css_menus input:nth-of-type(4):checked ~ label:nth-of-type(4), #css_menus > label[for=tab4]:hover {
    background:#fff;
    color:#777;
    width: 9%;
    border-bottom-color:gray;
}
#css_menus input:nth-of-type(5):checked ~ label:nth-of-type(5), #css_menus > label[for=tab5]:hover {
    background:#fff;
    color:#777;
    width: 9%;
    border-bottom-color:gray;
}
/* 실제 내용이 담긴 div 요소 스타일 지정 */
#css_menus .tab1_content, #css_menus .tab2_content, #css_menus .tab3_content, #css_menus .tab4_content, #css_menus .tab5_content {
    padding:2px;
    border-top:0px solid #ddd;
    width:80%;
    height:100%
}
</style>

<center>
<div id="css_menus">
    <input id="tab1" type="radio" name="tab" checked="checked" />
   
    <input id="tab2" type="radio" name="tab" />
   
    <input id="tab3" type="radio" name="tab" />
    
    <input id="tab4" type="radio" name="tab" />

    <input id="tab5" type="radio" name="tab" />
   
    <label for="tab1">어디로 갈까?</label>
    <label for="tab2">어디서 잘까?</label>
    <label for="tab3">무엇을 먹을까?</label>
    <label for="tab4">무엇을 즐길까?</label>
    <label for="tab5">무엇을 쓸까?</label>
    <div class="tab1_content"><jsp:include page="jsp/tourism.jsp" flush="false"/> </div>
    <div class="tab2_content"><jsp:include page="jsp/inn.jsp" flush="false"/> </div>
    <div class="tab3_content"><jsp:include page="jsp/restaurant.jsp" flush="false"/> </div>
    <div class="tab4_content"><jsp:include page="jsp/play.jsp" flush="false"/> </div>
    <div class="tab5_content"><jsp:include page="jsp/write.jsp" flush="false"/> </div>
</div>
</body>
</html>
