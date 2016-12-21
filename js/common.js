function setCookie(name, value, expiredays) {
	if (value == null)
		return;
	var exdate = new Date();
	exdate.setTime(exdate.getTime() + expiredays * 24 * 60 * 60 * 1000);
	document.cookie = name + "=" + escape(value)
			+ ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString());
}
function getCookie(name) {
	
	var arr=[], reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
	if (arr = document.cookie.match(reg))
		return unescape(arr[2]);
	else{
		return null;
	}
}
function getPar(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = window.location.search.substr(1).match(reg);
	if (r != null)
		return unescape(r[2]);
	return null;
}
