/**
 * 
 */

let commentList;
let check = false;

getList();

//댓글 등록
function insert(){
	console.log("insert");
   let $content = $("#content").val();
   $.ajax({
      url: contextPath + "/lawyerComment/LawyerCommentOk.lcc",
      type: "post",
      data: {content: $content},
      success: function(){
         $("#content").val("");
         getList();
      }
   });
}

//댓글 목록
function getList(){
	console.log("getList");
	$.ajax({
      url: contextPath + "/LawyerCommentListOk.lcc", //요청할 URL
      type: "get", //실행할 서블릿 메소드 방식
//      data를 통해 JS 객체를 JSON으로 전송할 때 contentType은 text로 설정해야 한다.
      data: {"lawyerName": lawyerName}, //전송할 데이터(JS Object 형식으로 전송)
      contentType: "application/json; charset=utf-8", //전송할 데이터의 타입
      dataType: "json", //받을 데이터의 타입
      success: showList
   });
}
console.log("getList 끝난 뒤 중간");

//댓글 목록
function showList(comments){
	console.log("showList");
    commentList = comments;
    var text = "";
    if(comments != null && comments.length != 0){
        $.each(comments, function(index, comment){
        	text += "<div class='a-card-question-list'>"
        	text +=	"<aside class='a-card-aside-card'>"
        	text +=	"<div class='a-wrapper'>"
        	text +=	"<div class='badge'>"
        	text += "<img style='width: 21px;' src='http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png'>"	
        	text += "<p class ='number'>" + "</p>"
        	text += "</div>"
        	text +=	"</div>"          
        	text += "</aside>"	
	        	text += "<div id='reply'>"
	            text += "<h4 class='writer'>" + comment.lawyerName + "  변호사" +"</h4>"
	            text += "<div class='content' id='content"+ index +"' style='width:100%'>"
	            
	            text +=	"</div>"
	        text += "<div class='a-card-main'>"
	        text += "<header class='a-card-header'>"
	        text += "<a href=''>"
	        text += "<h1 class='a-card-header-title'>"+ "</h1>"
	        text += "<span class='a-card-headerInfo'>" + comment.writeDate + "</span>"   	
	        text += "</a>"    	
	        text += "</header>"     	
	        text += "<div class='a-card-content' id='testt' style='width:1030px;overflow:hidden;word-wrap:break-word;'>" + comment.content + "</div>"
	        text += "<div class='a-card-footer'>"   
	        text += "<span class='viewCount'>"   
	        text += "<i class='number'>" + "</i>"
	        text += "</span>"
	        text += "<span class='앤서'>" + "</span>"
	        text += "</div>"        							
	    	text += "</div>"   	
            text += "</div>"
            if(lawyerName == comment.lawyerName){
            	text += "<div class = 'updt' style='margin-left: 966px;display: inherit;'>"
                text += "<input type='button' id='ready" + index + "' class='primary' value='수정' style='width: 63px;' onclick='readyToUpdate(" + index + ")'>"
                text += "<input type='button' id='ok" + index + "' class='primary' style='display:none;' value='수정 완료' onclick='update(" + index +")'>"
                //버튼 마다 삭제할 댓글의 번호를 같이 전달한다.
                text += "<input type='button' style='width: 63px;' id='remove" + index + "' class='primary' value='삭제' onclick='remove(" + comment.lawyerNum + ")'>"
                text += "</div>"
            }
            text += "</div>"
        });
    }else{
        //댓글 없음
        text = "<p>댓글이 없습니다.</p>";
    }

   $("#comments").html(text);
}

//댓글 수정 버튼 클릭
function readyToUpdate(index){
   if(check){
      alert("이미 수정중인 댓글이 있습니다.");
      return;
   }
   var div = $("#content" + index);
   var updateReady = $("#ready" + index);
   var updateOk = $("#ok" + index);
   var remove = $("#remove" + index);
   console.log(remove);
   remove.replaceWith("<input type='button' id='cancel" + index +"' value='취소' onclick='updateCancel(" + index + ")'>");
   div.replaceWith("<textarea name='replyContent' id='content" + index +"' style='resize:none; border-radius:0; background:white'>" + div.text() + "</textarea>");
   
   check = true;
   
   updateReady.hide();
   updateOk.show();
}

//댓글 수정 취소
function updateCancel(index){
  
   check = false;
   
   var div = $("#content" + index);
   var updateReady = $("#ready" + index);
   var updateOk = $("#ok" + index);
   var cancel = $("#cancel" + index);
   
   updateReady.show();
   updateOk.hide();
   
   cancel.replaceWith("<input type='button' id='cancel" + index +"' value='삭제' onclick='remove(" + commentList[index].content + ")'>");
   div.replaceWith("<div class='content' id='content"+ index +"' style='width:100%'><pre>" + commentList[index].content + "</pre></div>");   
}


////댓글 수정
function update(index){
   $.ajax({
      url: contextPath + "/LawyerCommentUpdateOk.lcc",
      type: 'post',
////      JSON으로 데이터 전달할 때에는 아래와 같이 전달하고,
////      contentType:text로 반드시 설정한다. 생략 가능!
      data: {lawyerName: commentList[index].lawyerName, content: $("#content" + index).val()},
      success: function(){
         getList();
         check = false;
      }
   });
}

//댓글 삭제
function remove(lawyerName){
   $.ajax({
      url: contextPath + "/LawyerDeleteOk.lcc",
      type: 'get',
      data: {content: content},
      success: function(){
         getList();
      }
   });
}












