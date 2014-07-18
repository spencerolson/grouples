$(document).ready(function() {
	function handleDropEvent(event, ui){
		var draggable = ui.draggable;
		alert("the squre with id" + draggable.attr("id"))
	};
});