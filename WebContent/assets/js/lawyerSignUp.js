/**
 * 
 */

function checkId() {

    if ($("#account-id").val() == '') {
      alert('아이디를 입력해주세요.')
      return false;
    }
    $.ajax({
    	url: "/kovengerss/LawyerCheckIdOk.ll",
		type: "get",
		data: {lawyerId: $("input[name='lawyerId']").val()},
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function (result) {
        if (result.check==1) {
          alert("이미 존재하는 아이디 입니다.");
          idCheck.css("color","red");
          idCheck.text("이미 존재하는 아이디입니다.");
          $("#account-id").focus();
        } else {
          idCheck.css("color","rgb(99 193 76)");
          idCheck.text("사용 가능한 아이디입니다.");
          $('lawyerId').attr("result", "success");
        }
      }
    });
    console.log("중복체크 들어옴");
  }
var userIdCheck = RegExp(/^[A-Za-z0-9_\-]{5,20}$/);
var passwdCheck = RegExp(/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{8,16}$/);
var nameCheck = RegExp(/^[가-힣]{2,6}$/);
var officeCheck = RegExp(/^[가-힣]{1,12}$/);
var emailCheck2 = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
var phoneNumCheck = RegExp(/^01[0179][0-9]{7,8}$/);
var officeHP= RegExp(/^0[1-7][0-9][0-9]{6,8}$/);
$(document).ready(function() {
	console.log("이용약관체크 들어옴");
	$("#cbx_chkAll").click(function() {
		if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});

	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;

		if(total != checked) $("#cbx_chkAll").prop("checked", false);
		else $("#cbx_chkAll").prop("checked", true); 
	});
});
    
	
	/* 이메일 유효성 검사 */    	
    let emailCheck = $(".account-email-error");
	let $email = $("#account-email");
	$email.on("keyup", function(){
		console.log("이메일체크 들어옴");
		if(emailCheck2.test($email.val())){
			emailCheck.css("color","rgb(99 193 76)");
			emailCheck.text("이메일 입력완료.");
		} else if(nameCheck.test($email.val())){
			emailCheck.css("color","red");
			emailCheck.text("한글은 입력 할 수 없습니다.");
		} else if($email.val() ==""){
			emailCheck.css("color","red");
			emailCheck.text("이메일을 입력해주세요");
		}
		else{
			emailCheck.css("color","red");
			emailCheck.text("이메일 형식에 맞지 않습니다.");
		}
	});
	
	let nameChecked = $(".account-name-error");
	let $name =$("#account-name");
	$name.on("keyup", function(){
		console.log("이름체크 들어옴");
    	if(nameCheck.test($name.val())){
    		nameChecked.css("color", "rgb(99 193 76)");
    		nameChecked.text("이름 입력 완료");
    	}
    	else {
    		nameChecked.css("color", "red");
    		nameChecked.text("잘못된 이름입니다.");
    	}
	});
	
	/* 아이디 유효성 검사  */    	
    let idCheck = $(".account-id-error");
	let $id = $("#account-id");
	$id.on("keyup", function(){
		if(userIdCheck.test($id.val())){
			idCheck.css("color","rgb(99 193 76)");
			idCheck.text("아이디 입력완료.");
		}else if($id.val() == ""){
        	idCheck.css("color","red");
        	idCheck.text("아이디는 반드시 입력해야합니다.");
		}
		else{
			idCheck.css("color","red");
			idCheck.text("아이디 형식에 맞지 않습니다.");
		}
	});
	
	
	
	
    let pwCheck = $(".account-password-error");
	let $pw = $("#account-password");
	$pw.on("keyup", function(){
		if(passwdCheck.test($pw.val())){
			pwCheck.css("color","rgb(99 193 76)");
			pwCheck.text("비밀번호 입력완료.");
		}
		else if($pw.val() == ""){
			pwCheck.css("color","red");
			pwCheck.text("비밀번호는 반드시 입력해야합니다.");
		}
		else {
			pwCheck.css("color","red");
			pwCheck.text("8~16자로 영문 대 소문자, 숫자, 특수기호를 조합해서 사용하세요.");
		}
	});

	let pwConfirm= $(".account-password-confirm-error");
	let $pwc= $("#account-password-confirm");
	
	
	$pwc.on("keyup", function(){
		
		if($pwc.val() !== passwdCheck.test($pw.val())){
			pwConfirm.css("color","red");
			pwConfirm.text("비밀번호가 일치하지 않습니다.");
			if($pwc.val() == ""){
				pwConfirm.css("color","red");
				pwConfirm.text("비밀번호를 입력해주세요.");
			}
		}
		
		if($pwc.val() == $pw.val()){
			pwConfirm.css("color","rgb(99 193 76)");
			pwConfirm.text("비밀번호 일치");
		}
	});
	
	/* 핸드폰 유효성 검사  */
	let $hp = $("#account-hp");
	let hpCheck = $(".tel-error");
	$hp.on("keyup",function(){
		if(phoneNumCheck.test($hp.val())){
			hpCheck.css("color","rgb(99 193 76)");
			hpCheck.text("핸드폰 번호 입력완료.");
		}else{
			hpCheck.css("color","red");
			hpCheck.text("핸드폰 번호를 입력해주세요.");
		}
	});	
	
	let $officeHP = $("#account-office-hp");
	let officeHpError = $(".account-office-hp-error");
	$officeHP.on("keyup", function(){
		if(officeHP.test($officeHP.val())){
			officeHpError.css("color","rgb(99 193 76)");/*색상변경*/
			officeHpError.text("사무실 번호가 입력되었습니다.");/*오류메시지*/
		}else{
			officeHpError.css("color","red");/*색상변경*/
			officeHpError.text("잘못된 번호입니다.");/*오류메시지*/
		}
	});
	
	let $office = $("#account-office");
	let officeError = $(".account-office-error");
		$office.on("keyup",function(){
		if(officeCheck.test($office.val())){
			officeError.css("color", "rgb(99 193 76)");/*색상변경*/
			officeError.text("사무소,회사명 입력 완료.");/*오류메시지*/
		}else{
			officeError.css("color", "red");/*색상변경*/
			officeError.text("한글로만 작성해주세요.");/*오류메시지*/
		}		
	});
		
		

    	function checks(){
    		console.log("checks 들어옴");
    		//이메일 공백 확인
    		if($("#account-email").val() == ""){
    			alert("이메일을 입력해주세요");
    			$("#account-email").focus();
    			return false;
    		}
    		
    		//이메일 유효성 검사
    		if(!emailCheck2.test($("#account-email").val())){
    			alert("이메일형식에 맞게 입력해주세요")
    			$("#account-email").val("");
    			$("#account-email").focus();
    			return false;
    		}
    		//아이디 공백 확인
    		if($("#account-id").val() == ""){
    			alert("아이디 입력해주세요");
    			$("#account-id").focus();
    			return false;
    		}

    		if(!userIdCheck.test($("#account-id").val())){
    			alert("아이디를 다시 확인해주세요.");
    			$("#account-id").focus();
    			return false;
    		}
    		
        //비밀번호
        if(!passwdCheck.test($("#account-password").val())) {
        alert("비밀번호 형식에 맞춰서 입력해주세요.");
        $("#account-password").val("");
        $("#account-password").focus();
        return false;
        }
   
        //아이디랑 비밀번호랑 같은지
        if ($("#account-Id").val()==($("#account-password").val())) {
        alert("비밀번호는 아이디와 다르게 입력해주세요.");
        $("#account-password").val("");
        $("#account-password").focus();
      }
   
        //비밀번호 똑같은지
        if($("#account-password").val() != ($("#account-password-confirm").val())){ 
        alert("비밀번호가 다릅니다.");
        $("#account-password").val("");
        $("#account-password-confirm").val("");
        $("#account-password").focus();
        return false;
       }
   
	        //이름의 유효성 검사
	        if(!nameCheck.test($("#account-name").val())){
	        	alert("이름을 다시 입력해주세요");
	        	$("#account-name").val("");
	        	$("#account-name").focus();
	        	return false;
	        }
	        
	        //이름 유효성
	        if (!nameCheck.test($("#account-name").val())) {
	        	alert("이름을 다시 입력해주세요.");
	        	$("#account-name").val("");
	        	$("#account-name").focus();
	        	return false;
	        }
	        if(!officeCheck.test($("#account-office").val())) {
	        	alert("사무실 이름을 확인해주세요.");
	        	$("#account-office").val("");
	        	$("#account-office").focus();
	        	return false;
	        }
	        if(!officeHP.test($("#account-office-hp").val())) {
	        	alert("사무실 번호를 확인해주세요.");
	        	$("#account-office-hp").val("");
	        	$("#account-office-hp").focus();
	        	return false;
	        }
        //핸드폰번호 확인
        if(!phoneNumCheck.test($("#account-hp").val())) {
        	alert("핸드폰 번호를 확인해주세요.");
        	$("#account-hp").val("");
        	$("#account-hp").focus();
        	return false;
        }
   
        if($("#lawyerGraduateTest").val() == ''){
        	alert("출신시험을 선택해주세요.");
        	$("#lawyerGraduateTest").focus();
        	return false;
        	
        }
        // 성별 확인
        if($("#lawyerGender").val() == ''){
        	alert("성별을 선택해주세요.");
        	$("#lawyerGender").focus();
        	return false;
        	
        }
        
        if($("#checkList1").is(":checked")== 0){
        	alert("필수 항목을 체크해주세요.");
        	console.log("1");
        	return false;
        }
        if($("#checkList2").is(":checked")== 0){
        	alert("필수 항목을 체크해주세요.");
        	console.log("2");
        	return false;
        }
        if($("#checkList3").is(":checked")== 0){
        	alert("필수 항목을 체크해주세요.");
        	console.log("3");
        	return false;
        }
        // 출생년도 확인
        if($("#year").val() == ''){
        	alert("출생년도를 선택해주세요.");
        	$("#year").focus();
        	return false;
        }
        
        if(checkId("#account-id")){
        	alert("이미 존재하는 아이디 입니다.");
        	return ;
        }
        alert("회원가입이 완료되었습니다.");
}        