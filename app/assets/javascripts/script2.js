window.addEventListener("page:load", initAll2, false);
window.addEventListener("load", initAll2, false);

function initAll2() {


var allLinks4 = document.getElementsByTagName("a");		
			for (var i=0; i<allLinks4.length; i++) {
		if (allLinks4[i].className.indexOf("dochid") > -1) {
			allLinks4[i].addEventListener("click",showDel,false);
		}
		if (allLinks4[i].className.indexOf("dochid2") > -1) {
			allLinks4[i].addEventListener("click",hideDel,false);
		}
	}
	
	var allLinks5 = document.getElementsByClassName("behid");		
			for (var i=0; i<allLinks5.length; i++) {
		
			allLinks5[i].style.display = "none"
		
		
	}		

}	

function showDel() {
	var clickName = this.id.slice(-1)
	document.getElementById("downdelhid"+clickName).style.display = "block";
	event.preventDefault();
}

function hideDel() {
	var clickName = this.id.slice(-1)
	document.getElementById("downdelhid"+clickName).style.display = "none";
	event.preventDefault();
}