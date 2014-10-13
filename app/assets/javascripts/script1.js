window.addEventListener("page:load", initAll, false);
window.addEventListener("load", initAll, false);

function initAll() {
	var allLinks = document.getElementById("drophidden");

			allLinks.addEventListener("mouseover",changeText,false);
			allLinks.addEventListener("mouseout",changeBackText,false);
	
	var allLinks2 = document.getElementById("hiddendrop");

	
			allLinks2.addEventListener("mouseover",changeText,false);
			allLinks2.addEventListener("mouseout",changeBackText,false);
		
	var allLinks3 = document.getElementById("suredeletelink")		

			allLinks3.addEventListener("click",showSure,false)
}	

function changeText() {
	
	
	document.getElementById("hidcontain").style.display = "block";
}

function changeBackText() {
	
	document.getElementById("hidcontain").style.display = "none";
}

function showSure() {
	document.getElementById("suredelete").style.display = "block";
}

