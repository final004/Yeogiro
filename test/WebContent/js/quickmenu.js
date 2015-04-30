$(document).ready(function(){ 
        
        b_width = $(document.body).width(); //페이지 전체크기
        d_width = $("#head_menu_layout").width(); //본문 전체 크기임
        t_height = $(document.body).scrollTop(); //상단 높이
    
    
        width = (b_width - d_width) <= 0 ? 900 : b_width/2 - 800; //중앙에서 어느 위치에 놓을지 적는다.
//900은 가운데 정렬한 div 값을 적는다.
//-610은 왼쪽으로 +는 오른쪽으로 놓는것이다.
        height = t_height + 380; //상단부터 띄워야 하는 높이
    
        $("#quick_menu_div").css({top:height, left:width, display:'block'});
        
        
        var currentPosition = parseInt($("#quick_menu_div").css("top"));
        
        $(window).scroll(function() {
            var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
            $("#quick_menu_div").stop().animate({"top":position+currentPosition+"px"},1000);
        });
    });