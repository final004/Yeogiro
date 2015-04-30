new tabView({menu:"tab", menuTag:"LI", callEvent:"click", imageArea:"image_list", imageTag:"DIV"});
new tabView({menu:"tab2", menuTag:"IMG", callEvent:"mouseover", imageArea:"image_list_2", imageTag:"DIV"});

function tabView(json){
	
	if(json.callEvent == "mouseover"){
		e(json.menu).onmouseover = function(event){
			var tabs = tn(e(json.menu), json.menuTag);
			var evt = event || window.event;
			var t = evt.target || evt.srcElement;
			
			for(n in tabs){
				if(tabs[n] == t){
					viewContent(n);
					rollOver(t);
					break;
				}
			}
		}
	}else if(json.callEvent == "click"){
		e(json.menu).onclick = function(event){
			var tabs = tn(e(json.menu), json.menuTag);
			var evt = event || window.event;
			var t = evt.target || evt.srcElement;
			
			for(n in tabs){
				if(tabs[n] == t){
					viewContent(n);
					//rollOver(event.srcElement);
					rollOver(t);
					break;
				}
			}
		}
	};
	

	//내용 보이기
	function viewContent(nIdx){
		var els = tn(e(json.imageArea), json.imageTag);
		if(els.length == 0) return;
		var arr = new Array();
		
		for(n=0; n<els.length; n++){
			if(els[n].getAttribute('class').indexOf('content_frame') > 0 ){
				arr.push(els[n]);
			}
		}

		for(n=0; n<arr.length; n++){
			if(typeof arr[n]=="object"){
				if(n==nIdx){
					arr[n].style.display = "block";	
				}else{
					arr[n].style.display = "none";
				}
			}
		}
	}

	//라벨 onmouseover 시 클래스 적용
	function rollOver(obj){
		//if(c.label == null) return;
		//var els = c.label.getElementsByTagName(c.labelType);
		var els = tn(e(json.menu), json.menuTag);
		if(els.length==0) return;
		
		if(json.menuTag == "IMG"){
			for(n in els){
				if(typeof els[n] == "object"){
					if(els[n] == obj){
						els[n].src = els[n].getAttribute("oversrc");
					}else{
						els[n].src = els[n].getAttribute("outsrc");
					}
				}
			}
		}else{
			for(n in els){
				if(typeof els[n] == "object"){
					if(els[n] == obj){
						var ocss = els[n].className;
						els[n].className = ocss+" "+els[n].getAttribute("overcss");
					}else{
						els[n].className = els[n].getAttribute("outcss");
					}
				}
			}
		}
	}// e function rollOver(obj){
}


//객체 반환
function e(id){
	return document.getElementById(id);
}

//pa에 속한 태그들 반환
function tn(pa, tagName){
	return pa.getElementsByTagName(tagName);
}