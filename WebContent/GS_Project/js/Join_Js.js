function id_check() {
	var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	var id_len = my_form.idinput.value.length
	var id_val = my_form.idinput.value
	if (!(id_len >= 4 && id_len <= 12)) {
		alert("4~12자 사이의 아이디를 입력해주세요")
		my_form.bimil.value = ""
		my_form.bimil.focus()
	} 
	
	
	 for (var i = 0; i < id_len; i++) {
            ch = id_val.charAt(i)
            if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
                alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.")
                my_form.idinput.focus()
                return false;
            }
        }
}

function id_check2() {
	var id_len = my_form.idinput.value.length
	if ((id_len >= 4) && (id_len <= 12)) {
		id_check3()
	} else {
		alert("4~12자 사이의 아이디를 입력해주세요")
	}
}

function id_check3() {
	var id_val = my_form.idinput.value
	var id_len = my_form.idinput.value.length
	for (var i = 0; i < id_len; i++) {
		ch = id_val.charAt(i)
		if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
				&& !(ch >= 'A' && ch <= 'Z')) {
			alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.")
			my_form.idinput.focus()
			return false;
		}
	}
	if (id_len > 1) {
		password_input()
	}
}

function password_input() {
	var sum = 0;
	var pass_len = my_form.bimil.value.length
	if (pass_len == 0) {
		sum += 1;
		alert("비밀번호를 입력하지 않으셨습니다.")
	} else {
		password_len()
	}
}

function password_len() {
	var pass_len = my_form.idinput.value.length
	var sum = 0;

	if ((pass_len >= 4) && (pass_len <= 12)) {
		password()
	} else if (!(pass_len >= 4) && (pass_len <= 12)) {
		sum += 1;
		alert("4~8자 사이의 암호만 유효합니다.")
		my_form.bimil.focus()
	}
}

function password() {
	var sum = 0;
	var pass_len = my_form.bimil.value.length
	if ((pass_len >= 4) && (pass_len <= 12)) {
		password_Check()
	} else if (!(pass_len >= 4) && (pass_len <= 8)) {
		sum += 1;
		alert("4~8자 사이의 암호만 유효합니다.")

	}
}

function password_Check() {
	var sum = 0;
	var pass_len2 = my_form.bimil2.value.length
	if (pass_len2 == 0) {
		sum += 1;
		alert("비밀번호 확인 칸을 입력하지 않으셨습니다.")
	} else {
		password_Check2()
	}
}

function password_Check2() {
	var sum = 0;
	var pass_val1 = my_form.bimil.value
	var pass_val2 = my_form.bimil2.value
	if (pass_val1 !== pass_val2) {
		sum += 1;
		alert("비밀번호가 일치하지 않습니다..")
	} else {
		password_finding()
	}
}

function password_finding() {
	var pwFind_len = my_form.hintanswer.value.length
	var sum = 0;
	if (pwFind_len == 0) {
		sum += 1;
		alert("비밀번호 찾기 답을 입력하지 않았습니다.")
	} else {
		name()
	}
}

function name() {
	var sum = 0;
	var name = my_form.name.value.length
	if (name == 0) {
		sum += 1;
		alert("이름을 입력하지 않았습니다.")
	} else {
		address()
	}
}
function address() {
	var sum = 0;
	var adr_len = my_form.adr.value.length
	if (adr_len == 0) {
		sum += 1;
		alert("주소를 입력하지 않았습니다.")
	} else {
		email()
	}
}
function email() {
	var sum = 0;
	var email = my_form.email.value.length
	if (email == 0) {
		sum += 1;
		alert("이메일을 입력하지 않았습니다.")
	} else {
		phone2()
	}
}

function phone2() {
	var sum = 0;
	var phone2 = my_form.phone2.value.length
	if (phone2 == 0) {
		sum += 1;
		alert("핸드폰번호 앞자리를 입력하지 않았습니다.")
	} else {
		phone3()
	}
}

function phone3() {
	var sum = 0;
	var phone3 = my_form.phone3.value.length
	if (phone3 == 0) {
		sum += 1;
		alert("핸드폰번호를 뒷자리를 입력하지 않았습니다.")
	} else {
		gender()
	}
}

function gender() {
	var gen = "";
	if (my_form.gender.value == 1) {
		gen = "남";
		my_form.submit();
	} else {
		gen = "여";
		my_form.submit();
	}
}

function sample6_execDaumPostcode() {
	new daum.Postcode(
			{
				oncomplete : function(data) {
					var addr = '';
					var extraAddr = '';
					if (data.userSelectedType === 'R') {
						addr = data.roadAddress;
					} else {
						addr = data.jibunAddress;
					}
					if (data.userSelectedType === 'R') {
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraAddr += data.bname;
						}
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						if (extraAddr !== '') {
							extraAddr = ' (' + extraAddr + ')';
						}
						document.getElementById("sample6_extraAddress").value = extraAddr;

					} else {
						document.getElementById("sample6_extraAddress").value = '';
					}
					document.getElementById('sample6_postcode').value = data.zonecode;
					document.getElementById("sample6_address").value = addr;
					document.getElementById("sample6_detailAddress").focus();
				}
			}).open();
}