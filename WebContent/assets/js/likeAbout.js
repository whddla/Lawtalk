/**
 * 
 */

function iike(){
	
	$.ajax({
		url: contextPath + "/userWrite/UserLikeOk.uw",
		type: "get",
		data: {"userWriteNum":userWriteNum},
		contentType: "application/json; charset=utf-8", //전송할 데이터의 타입
		dataType: "json",
		success: function(result){
			$("#likeSpot").text(result);
		}
	});
	
}