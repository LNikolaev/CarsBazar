$(document).ready(function() {
//         var opelItems = '<option selected="selected" value="0">- Select -</option>';
//         var audiItems = '<option selected="selected" value="0">- Select -</option>';
// 		 var producers = '<option selected="selected" value="0">- Select -</option>';		
 		
 		 
//		 for (var i = 0; i < jsonData.OpelList.length; i++) {
//	         opelItems += "<option value='" + jsonData.OpelList[i].opelValue + "'>" + jsonData.OpelList[i].opelname + "</option>";
//		 }
// 
//		 $("#Opel").html(opelItems);
//	      for (var i = 0; i < jsonData.AudiList.length; i++) {
//	          audiItems += "<option value='" + jsonData.AudiList[i].audiValue + "'>" + jsonData.AudiList[i].audiname + "</option>";
//	      }
//	      
//	      $("#Audi").html(audiItems);
//	 
//	 
//	 
//		 for (var i = 0; i < jsonData.producers.length; i++) {
//			 producers += "<option value='" + jsonData.producers[i].producerValue + "'>" + jsonData.producers[i].producerName + "</option>";
//	     }
//     
//		 $("#Producers").html(producers);
// 		$('#msg').html("This is updated by jQuery")
	loadCarData();
});

var carsData;

function loadCarData(){
	$.ajax({
		url: contextPath + "/cars/brands",
		type: 'get',
        contentType: "json",
		success: function(data){
			fillDropdowns(data);
		},
		error: function(error){
			alertMe("Invalid Request!")
		}
	});
}

function fillDropdowns(){
	//TODO
	for (var property in data) {
	    if (data.hasOwnProperty(property)) {
	        alert(data[property][0])
	    }
	}
}