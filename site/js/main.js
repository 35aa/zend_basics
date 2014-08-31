//define currencies
var currencies = ['UAH', 'USD', 'EUR', 'GPB'];

//onload method
$(document).ready(function () {

	if ($('#limit_10').length) {
		$('#limit_10').click(function(event) {setLimit(event.target);});
	}
	//add functions for history
	if ($('#limit_25').length) {
		$('#limit_25').click(function(event) {setLimit(event.target);});
	}
	if ($('#limit_50').length) {
		$('#limit_50').click(function(event) {setLimit(event.target);});
	}
	//change offset for history moving forward and back
	if ($('#paginator_left').length) {
		$('#paginator_left').click(function(event) {changeOffset(event.target);});
	}
	if ($('#paginator_right').length) {
		$('#paginator_right').click(function(event) {changeOffset(event.target);});
	}
	if ($('#action').length) {
		$('#action').change(function(event) {$('#offset').val(0);formHistorySubmit()});
	}
});

function changeOffset(targetElement) {
	//moving back
	if (targetElement.id == 'paginator_left') {
		$('#offset').val(parseInt($('#offset').val()) - parseInt($('#limit').val()));
	}
	if (targetElement.id == 'paginator_right') {
		$('#offset').val(parseInt($('#offset').val()) + parseInt($('#limit').val()));
	}
	formHistorySubmit();
}

function setLimit(sourceObject) {
	$('#limit').val(sourceObject.id.split('_')[1]);
	$('#offset').val(0);
	formHistorySubmit()
}

function formHistorySubmit() {
	$('#history').submit();
}

//build option tag and append it to select tag
function addOptionToSelect(objectId, value, text) {
	var o = new Option(text, value);
	$(o).html(text);
	$('#' + objectId).append(o);
}

