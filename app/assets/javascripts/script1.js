window.addEventListener("load", initAll, false);

function initAll() {
	var allLinks = document.getElementById("drophidden");

			allLinks.addEventListener("mouseover",changeText,false);
			allLinks.addEventListener("mouseout",changeBackText,false);
	
	var allLinks2 = document.getElementById("hiddendrop");

	
			allLinks2.addEventListener("mouseover",changeText,false);
			allLinks2.addEventListener("mouseout",changeBackText,false);
		

}	

function changeText() {
	
	
	document.getElementById("hidcontain").style.display = "block";
}

function changeBackText() {
	
	document.getElementById("hidcontain").style.display = "none";
}