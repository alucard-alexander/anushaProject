var reg = /^([A-Za-z0-9_\-\.]){1,}\@([A-Za-z0-9_\-\.]){1,}\.([A-Za-z]{2,4})$/;
var p = /^[0-9]{10}$/;
var p1 = /^[0-9]{6}$/;

function showEmptyError(inputname, msg) {
	var element = $(inputname).addClass('shaker');
	$('h2').html(msg);
	setTimeout(function() {
		element.removeClass('shaker');
	}, 1000);
}

$(document).on('click', '#clickhere', function() {
	if ($('#uname').val() == "") {
		showEmptyError('#uname', 'Item Name is empty');
	} else if ($('#pass').val() == "") {
		showEmptyError('#pass', 'Item price is empty');
	} else {
		return true;
	}
	return false;
})

$(document).on('click', '#clickhere5', function() {
	if ($('#iname').val() == "") {
		showEmptyError('#iname', 'Item Name is empty');
	} else if ($('#iprice').val() == "") {
		showEmptyError('#iprice', 'Item price is empty');
	} else {
		return true;
	}
	return false;
})


$(document).on('click', '#passResetClick', function() {
	if ($('#uname').val() == "") {
		showEmptyError('#uname', 'User Name is empty');
	} else if ($('#qans').val() == "") {
		showEmptyError('#qans', 'Answer is empty');
	} else if ($('#pass').val() == "") {
		showEmptyError('#pass', 'Answer is empty');
	} else if ($('#repass').val() == "") {
		showEmptyError('#repass', 'Answer is empty');
	} else {
		return true;
	}
	return false;
})


$(document).on('click', '#clickhere1', function() {

	if ($('#fname').val() == "") {
		showEmptyError('#fname', 'User Name is empty');
	} else if ($('#mname').val() == "") {
		showEmptyError('#mname', 'Password is empty');
	} else if ($('#lname').val() == "") {
		showEmptyError('#lname', 'Password is empty');
	} else if ($('#dob').val() == "") {
		showEmptyError('#dob', 'Password is empty');
	} else if ($('#uname').val() == "") {
		showEmptyError('#uname', 'User Name is empty');
	} else if ($('#pass').val() == "") {
		showEmptyError('#pass', 'Password is empty');
	} else if ($('#email').val() == "") {
		showEmptyError('#email', 'Email is empty');
	} else if (reg.test($('#email').val()) == false) {
		showEmptyError('#email', 'Email  is invalid');
	} else if ($('#phno').val() == "") {
		showEmptyError('#phno', 'Phone number is empty');
	} else if (p.test($('#phno').val()) == false) {
		showEmptyError('#phno', 'Phone number is invalid');
	} else {
		if ($('#m').is(':checked')) {

		} else if ($('#f').is(':checked')) {

		} else {
			showEmptyError('#m', 'Password is empty');
			showEmptyError('#f', 'Password is empty');
			return false;
		}
		return true;
	}

	return false;
})

$(document).on('click', '#clickhere4', function() {
	if ($('#uname').val() == "") {
		showEmptyError('#uname', 'User Name is empty');
	} else if ($('#pass').val() == "") {
		showEmptyError('#pass', 'Password is empty');
	} else {
		if ($('#chec').is(':checked')) {
			$('#frm').attr("action","AdminLogin.do?type=a");
			$('#frm').submit();
		}else{
			$('#frm').attr("action","AdminLogin.do?type=e");
			$('#frm').submit();
		}
		return true;
	}
	return false;
})




$(document).on('click', '#clickhere2', function() {

	if ($('#dno').val() == "") {
		showEmptyError('#dno', 'Door number is empty');
	} else if ($('#area').val() == "") {
		showEmptyError('#area', 'area is empty');
	} else if ($('#state').val() == "") {
		showEmptyError('#state', 'state is empty');
	} else if ($('#dob').val() == "") {
		showEmptyError('#dob', 'Password is empty');
	} else if ($('#landmark').val() == "") {
		showEmptyError('#landmark', 'landmark is empty');
	} else if ($('#pincode').val() == "") {
		showEmptyError('#pincode', 'pincode is empty');
	} else if (p1.test($('#pincode').val()) == false) {
		showEmptyError('#pincode', 'pincode  is invalid');
	} else if ($('#street').val() == "") {
		showEmptyError('#street', 'street is empty');
	} else if ($('#city').val() == "") {
		showEmptyError('#city', 'city is empty');
	}else{
		return true;
	}

	return false;
})


$(document).on('click', '#clickhere3', function() {
	if ($('#question').val() == "") {
		showEmptyError('#question', 'Name is empty');
	}else {
		return true;
	}
	return false;
})







