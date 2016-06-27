//
$(document).ready(function() {
	
	//
	loadCarData();
	
	//
	$('#producerSelect').change(function(){
		//
		var selectedBrand = $(this).val();
		
		//
		$('#modelSelect').html('');
		
		$('#modelSelect').append('<option value="---">Select</option>')
		//
		for(var i = 0; i < carsData[selectedBrand].length; i++){
			$('#modelSelect').append('<option value="'+carsData[selectedBrand][i]+'">'+carsData[selectedBrand][i]+'</option>')
		}
	});
	
	//
	$('#modelSelect').change(function(){
		var selectedModel = $(this).val();
		alert(selectedModel)
	});
});

//
var carsData;

function loadCarData() {
	//
	$.ajax({
		url : contextPath + "/cars/brands",
		type : 'get',
		contentType : "json",
		success : function(data) {
			carsData = data;
			//
			fillDropdowns(data);
		},
		error : function(error) {
			alertMe("Invalid Request!")
		}
	});
}

function fillDropdowns(data) {
	var producerSelect =  $('#producerSelect');
	var modelSelect = $('#modelSelect');
	//
	for ( var property in data) {
		if (data.hasOwnProperty(property)) {
			producerSelect.append('<option value="'+property+'">'+property+'</option>')			
		}
	}
}