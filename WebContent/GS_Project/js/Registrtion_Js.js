function title_check() {

	var title_len = Registrtion_form.studyTitle.value.length
	var title_val = Registrtion_form.studyTitle.value
	if (title_len == 0) {
		alert("스터디 제목을 입력해주세요.")
		Registrtion_form.studyTitle.value = ""
			Registrtion_form.studyTitle.focus()
	}else{
		Registrtion_form.submit();
	} 
}
