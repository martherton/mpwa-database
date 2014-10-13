$(document).on "ready page:load", ->

	alterDataShown = (element, display) ->
		element.style.display = display
		document.getElementById("resumeexpb").style.display = "none"
		document.getElementById("resumeedub").style.display = "none"
		document.getElementById("resumeothb").style.display = "none"
		document.getElementById("resumetabaexp").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabaedu").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabaoth").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabaexp").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabaedu").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabaoth").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabakey").style.backgroundColor = "#F7F7F7"
		document.getElementById("resumetabakey").style.borderBottomColor = "#F7F7F7"
		document.getElementById("resumetabakey").style.borderBottomStyle = "solid"
		document.getElementById("resumetabakey").style.borderBottomWidth = "0.2em"




	$ ->
		$("a[data-display1").click ->
			display = $(this).data("display1")
			blocktoChange = document.getElementById("resumekeygo")
			alterDataShown(blocktoChange, display)	

	alterDataShown2 = (element, display) ->
		element.style.display = display
		document.getElementById("resumekeygo").style.display = "none"
		document.getElementById("resumeedub").style.display = "none"
		document.getElementById("resumeothb").style.display = "none"
		document.getElementById("resumetabakey").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabaedu").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabaoth").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabakey").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabaedu").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabaoth").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabaexp").style.backgroundColor = "#F7F7F7"
		document.getElementById("resumetabaexp").style.borderBottomColor = "#F7F7F7"
		document.getElementById("resumetabaexp").style.borderBottomStyle = "solid"
		document.getElementById("resumetabaexp").style.borderBottomWidth = "0.2em"


	$ ->
		$("a[data-display2").click ->
			display = $(this).data("display2")
			blocktoChange = document.getElementById("resumeexpb")
			alterDataShown2(blocktoChange, display)	

	alterDataShown3 = (element, display) ->
		element.style.display = display
		document.getElementById("resumeexpb").style.display = "none"
		document.getElementById("resumekeygo").style.display = "none"
		document.getElementById("resumeothb").style.display = "none"
		document.getElementById("resumetabaexp").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabakey").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabaoth").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabaexp").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabakey").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabaoth").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabaedu").style.backgroundColor = "#F7F7F7"
		document.getElementById("resumetabaedu").style.borderBottomColor = "#F7F7F7"
		document.getElementById("resumetabaedu").style.borderBottomStyle = "solid"
		document.getElementById("resumetabaedu").style.borderBottomWidth = "0.2em"


	$ ->
		$("a[data-display3").click ->
			display = $(this).data("display3")
			blocktoChange = document.getElementById("resumeedub")
			alterDataShown3(blocktoChange, display)	

	alterDataShown4 = (element, display) ->
		element.style.display = display
		document.getElementById("resumeexpb").style.display = "none"
		document.getElementById("resumeedub").style.display = "none"
		document.getElementById("resumekeygo").style.display = "none"
		document.getElementById("resumetabaexp").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabaedu").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabakey").style.backgroundColor = "#C8C8C8"
		document.getElementById("resumetabaexp").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabaedu").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabakey").style.borderBottomColor = "#C8C8C8"
		document.getElementById("resumetabaoth").style.backgroundColor = "#F7F7F7"
		document.getElementById("resumetabaoth").style.borderBottomColor = "#F7F7F7"
		document.getElementById("resumetabaoth").style.borderBottomStyle = "solid"
		document.getElementById("resumetabaoth").style.borderBottomWidth = "0.2em"


	$ ->
		$("a[data-display4").click ->
			display = $(this).data("display4")
			blocktoChange = document.getElementById("resumeothb")
			alterDataShown4(blocktoChange, display)		


			$(document).on('page:load', ready);			