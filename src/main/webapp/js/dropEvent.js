function dropEventEdit(dropParams){
	console.log(dropParams);
	$.ajax({
		type : "GET",
		async:false,
		url:"/lms/calendar/dropUpdate",
		data : dropParams,
		success:function(result){
			calendar.refetchEvents();
		},
		error :function(error){
			
		}
	});
}