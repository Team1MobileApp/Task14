/*
* Author: Qianwen Li
* Date: 5/28/2015
*/

$(document).ready(function() {
		$("#preview").click(function(event) {
			/* Confirm with Camilo */
			/* var href = $("#demo").attr('class');
     		var href = href.replace('disabled', 'D');
     		$("#demo").attr('class', href);
     		*/


			// institute name
			var institute = $("input#institution-name").val();
			console.log("institute = " + institute);
			sessionStorage.setItem('institute', institute);

			// whatinfo
			// console.log("checked value = " + document.f1.whatinfo[i].value);
			// var whatinfo = $('input[name="whatinfo"]').val();
			var whatinfo = [];
		     $('input[name="whatinfo"]:checked').each(function() {
		     	var notrim = $(this).val();
		       console.log("whatinfo = " + notrim);
		       whatinfo.push($.trim(notrim));
		     });
		     sessionStorage["whatinfo"] = whatinfo.join(" and</li><li> ");

		     // sharing2
		     var sharing2 = $("input[name=sharing2]:checked").val();
		     console.log("sharing2 = " + sharing2);
		     sessionStorage.setItem('sharing2', sharing2);

		     // optout2
		     var optout2 = "We don't share";
		     if (sharing2 == "Yes") {
		     	console.log("checked");
		     	optout2 = $("input[name=optout2]:checked").val();
		     }
		     console.log("optout2 = " + optout2);
		     sessionStorage.setItem('optout2', optout2);

		     // sharing3
		     var sharing3 = $("input[name=sharing3]:checked").val();
		     console.log("sharing3 = " + sharing3);
		     sessionStorage.setItem('sharing3', sharing3);

		     // optout3
		     var optout3 = "We don't share";
		     if (sharing3 == "Yes") {
		     	console.log("checked");
		     	optout3 = $("input[name=optout3]:checked").val();
		     }
		     console.log("optout3 = " + optout3);
		     sessionStorage.setItem('optout3', optout3);

		     // sharing4
		     var sharing4 = $("input[name=sharing4]:checked").val();
		     console.log("sharing4 = " + sharing4);
		     sessionStorage.setItem('sharing4', sharing4);

		     // optout4
		     var optout4 = "We don't share";
		     if (sharing4 == "Yes") {
		     	console.log("checked");
		     	optout4 = $("input[name=optout4]:checked").val();
		     }
		     console.log("optout4 = " + optout4);
		     sessionStorage.setItem('optout4', optout4);

		     // sharing5
		     var sharing5 = $("input[name=sharing5]:checked").val();
		     console.log("sharing5 = " + sharing5);
		     sessionStorage.setItem('sharing5', sharing5);

		     // optout5
		     var optout5 = "We don't share";
		     if (sharing5 == "Yes") {
		     	console.log("checked");
		     	optout5 = $("input[name=optout5]:checked").val();
		     }
		     console.log("optout5 = " + optout5);
		     sessionStorage.setItem('optout5', optout5);

		     // sharing6
		     var sharing6 = $("input[name=sharing6]:checked").val();
		     console.log("sharing6 = " + sharing6);
		     sessionStorage.setItem('sharing6', sharing6);

		     // optout6
		     var optout6 = "We don't share";
		     if (sharing6 == "Yes") {
		     	console.log("checked");
		     	optout6 = $("input[name=optout6]:checked").val();
		     }
		     console.log("optout6 = " + optout6);
		     sessionStorage.setItem('optout6', optout6);

		     // sharing7
		     var sharing7 = $("input[name=sharing7]:checked").val();
		     console.log("sharing7 = " + sharing7);
		     sessionStorage.setItem('sharing7', sharing7);

		     // optout7
		     var optout7 = "We don't share";
		     if (sharing7 == "Yes") {
		     	console.log("checked");
		     	optout7 = $("input[name=optout7]:checked").val();
		     }
		     console.log("optout7 = " + optout7);
		     sessionStorage.setItem('optout7', optout7);

		     // phone
		     var phone = $("input#phone").val();
			 console.log("phone = " + phone);
			 sessionStorage.setItem('phone', phone);

			 // site/web
			 var web = $("input#web").val();
			 console.log("web = " + web);
			 sessionStorage.setItem('web', web);

			 // limit sharing [Other Methods]
			 var othermethods = "";
			 if ($("textarea#limitstext2").val().length != 0) {
			 	othermethods = $("textarea#limitstext2").val();
			 }
			 console.log("othermethods = " + othermethods);
			 sessionStorage.setItem('othermethods', othermethods);

			 // how to limit direct marketing contacts
			 var direct_contact = "";
			 if ($("textarea#limitstext").val().length != 0) {
			 	direct_contact = $("textarea#limitstext").val();
			 }
			 console.log("direct_contact = " + direct_contact);
			 sessionStorage.setItem('direct_contact', direct_contact);

			 // email
			 var email = $("input#email").val();
			 console.log("email = " + email);
			 sessionStorage.setItem('email', email);

			 // address
			 var address = $("textarea#mailadd").val() + ", " + $("input#l3").val()
			 + ", " + $("input#zip").val() + ", " + $( "#stateselect option:selected" ).text();
			 console.log("address = " + address);
			 sessionStorage.setItem('address', address);

			 // legal entity name
			 var legalname = $("input#legalname").val();
			 if ($("textarea#alias").val().trim().length > 0) {
			 	legalname += " (" + $("textarea#alias").val().trim() + ")";
			 }
			 
			 console.log("legalname = " + legalname);
			 sessionStorage.setItem('legalname', legalname);

			 // measures
			 var measures = $("textarea#measures").val();
			 console.log("measures = " + measures);
			 sessionStorage.setItem('measures', measures);

			 // how
		     var how = [];
		     $('input[name="how"]:checked').each(function() {
		     	var howtrim = $(this).val().trim();
		       console.log("howtrim = " + howtrim);
		       how.push(howtrim);
		     });
		     sessionStorage["how"] = how.join("</li><li>");


		     // affiliate
		     var affiliate = $("input[name=affiliate]:checked").val();
		     switch(affiliate) {
		     	case "1":
		     	affiliate = "Company does not have affiliates";
		     	break;
		     	case "2":
		     	affiliate = "Company does not share with affiliates";
		     	break;
		     	case "3":
		     	affiliate = "Company shares consumers' personal information with affiliates: " +
		     	$("textarea#fieldaf").val().trim();
		     }

		     console.log("affiliate = " + affiliate);
		     sessionStorage.setItem('affiliate', affiliate);

		     // naffiliate
		     var naffiliate = $("input[name=naffiliate]:checked").val();
		     switch(naffiliate) {
		     	case "1":
		     	naffiliate = "Company does not share with nonaffiliates 3rd parties";
		     	break;
		     	case "2":
		     	naffiliate = "Company shares with nonaffiliates 3rd parties: " +
		     	$("textarea#fieldnaf").val().trim();;
		     	break;
		     }

		     console.log("naffiliate = " + naffiliate);
		     sessionStorage.setItem('naffiliate', naffiliate);

		     // nonaffiliates
		     var nonaffiliates = $("input[name=nonaffiliates]:checked").val();
		     switch(nonaffiliates) {
		     	case "1":
		     	nonaffiliates = "Company does not jointly market";
		     	break;
		     	case "2":
		     	nonaffiliates = "Company does jointly market with the following partners: " +
		     	$("textarea#joint").val().trim();
		     	break;
		     }
		     console.log("nonaffiliates = " + nonaffiliates);
		     sessionStorage.setItem('nonaffiliates', nonaffiliates);

		     // receipt
		     var receipt = $("input#receipt").val();
			 console.log("receipt = " + receipt);
			 sessionStorage.setItem('receipt', receipt);

			 // business
			 var business = $("input[name=joint]:checked").val();
			 console.log("business = " + business);
			 sessionStorage.setItem('business', business);

			 // states and laws
			 if ($("textarea#states").val().trim().length > 0) {
			 	var states = $("textarea#states").val().trim();
			 	console.log("states = " + states);
			 	sessionStorage.setItem('states', states);

			 }

			 // limit sharing apply
			 var apply = $("input[name=choice]:checked").val();
			 switch (apply) {
			 	case "only to your":
				 	apply = "Your choices will apply only to your " +
				 	business + ", unless you <a onclick=\"optout()\">tell us otherwise</a>.";
              	break;
	            case "to everyone":
	              	apply = "Your choices will apply to everyone on the " + business + ", unless you <a onclick=\"optout()\">tell us otherwise</a>.";
	            break;

			 }
			 console.log("apply = " + apply);
			 sessionStorage.setItem('apply', apply);

			 // collection
			 var collection = $("input[name=collection]:checked").val();
		     switch(collection) {
		     	case "1":
		     	collection = "We collect personal information from affiliates and/or credit bureaus";
		     	break;
		     	case "2":
		     	collection = "We collect personal information from other companies, different than affiliates and/or credit bureaus";
		     	break;
		     	case "3":
		     	collection = "We do not collect any personal information from affiliates, credit bureaus, or other companies";
		     }

		     console.log("collection = " + collection);
		     sessionStorage.setItem('collection', collection);

		     // expireday
		     var expireday = $("input#days").val();
		     console.log("expireday = " + expireday);
		     sessionStorage.setItem('expireday', expireday);


			$("#notice")[0].contentWindow.location.reload(true);
			window.open("Output/notice.html");
			window.open("Output/optout.html");

			 event.preventDefault();
			 return false;
			
			
		});
});
