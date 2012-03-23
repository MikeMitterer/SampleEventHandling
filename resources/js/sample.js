function initSample() {
	var obj = $('#jqclicker');
	obj.click(eventHandler);
}

function eventHandler( event) {
		var message = $("#status").html();
		message = message + "~";
		$("#status").html(message);
}