/**
 * Author: Qianwen Li
 * Date: 5/28/2015
 * 
 */

$(document).ready(function() {
	console.log("in optout.html");
	if (sessionStorage.getItem('institute')) {
		var insitute = sessionStorage.getItem('institute');
		$("h3#institute").text(institute);
	}
});