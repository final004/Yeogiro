<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title></title>
</head>
<body>


<center>
<div id="css_tabs">
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
    <div class="tab1_content"><jsp:include page="tourism.jsp" flush="false"/> </div>
    <div class="tab2_content"><jsp:include page="inn.jsp" flush="false"/> </div>
    <div class="tab3_content"><jsp:include page="restaurant.jsp" flush="false"/> </div>
    <div class="tab4_content"><jsp:include page="play.jsp" flush="false"/> </div>
    <div class="tab5_content"><jsp:include page="write.jsp" flush="false"/> </div>
</div>
</body>
</html>
