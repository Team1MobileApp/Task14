/*
* Author: Qianwen Li
* Date: 5/28/2015
*/

$(document).ready(function() {

	// date
	var d = new Date();
	var month = d.getMonth()+1;
	var day = d.getDate();

	var rev_date = "Revised @ " + (month<10 ? '0' : '') + month + '/' +
    (day<10 ? '0' : '') + day + '/' + d.getFullYear(); 
    $("p#rev_date").text(rev_date);

	// institute
	if (sessionStorage.getItem('institute')) {
    	var institute = sessionStorage.getItem('institute');
    	console.log("institute = " + institute);
    	$("h2#institute-name").text(institute);
    	$("th#rating").text(institute + " Rating");
    	$("h3#whatdoque").text("What does " + institute +  " do with your Personal Information?");
    	$("div#how").text("All financial companies need to share customers personal information to run their everyday business. In the next section, we list the reasons  why  financial companies can share their customers personal information; the reasons "+ institute + " chooses to share; and whether you can limit this sharing.");
    	$("th#shareque").text("Does "+ institute + " Share?");
    	$("p#footerp").append(institute + " " + d.getFullYear());
    	document.title = institute + " | U.S. Consumer Privacy Notice";

    }

    // whatinfo
    if (sessionStorage.getItem('whatinfo')) {
    	var whatinfo = sessionStorage.getItem('whatinfo');
    	console.log("wahtinfoarr = " + whatinfo);

    	$("ul#whatinfocheck").html("<li>" + whatinfo + "</li>");

    }

    var rating2 = "";
    // sharing2
    if (sessionStorage.getItem('sharing2')) {
    	var sharing2 = sessionStorage.getItem('sharing2');
    	rating2 += sharing2 + ",";
    	$("td#sharing2").append(sharing2);
    }
    // optout2
    if (sessionStorage.getItem('optout2')) {
    	var optout2 = sessionStorage.getItem('optout2');
    	rating2 += optout2;
    	$("td#optout2").append(optout2);
    }
    $("td#rating2").text(rating2);


    var rating3 = "";
    // sharing3
    if (sessionStorage.getItem('sharing3')) {
    	var sharing3 = sessionStorage.getItem('sharing3');
    	rating3 += sharing3 + ",";
    	$("td#sharing3").append(sharing3);
    }
    // optout3
    if (sessionStorage.getItem('optout3')) {
    	var optout3 = sessionStorage.getItem('optout3');
    	rating3 += optout3;
    	$("td#optout3").append(optout3);
    }
    $("td#rating3").text(rating3);

    var rating4 = "";
    // sharing4
    if (sessionStorage.getItem('sharing4')) {
    	var sharing4 = sessionStorage.getItem('sharing4');
    	rating4 += sharing4 + ",";
    	$("td#sharing4").append(sharing4);
    }
    // optout4
    if (sessionStorage.getItem('optout4')) {
    	var optout4 = sessionStorage.getItem('optout4');
    	rating4 += optout4;
    	$("td#optout4").append(optout4);
    }
    $("td#rating4").text(rating4);

    // sharing5
    if (sessionStorage.getItem('sharing5')) {
    	var sharing5 = sessionStorage.getItem('sharing5');
    	$("td#sharing5").append(sharing5);
    }
    // optout5
    if (sessionStorage.getItem('optout5')) {
    	var optout5 = sessionStorage.getItem('optout5');
    	$("td#optout5").append(optout5);
    }

    var rating6 = "";
	// sharing6
    if (sessionStorage.getItem('sharing6')) {
    	var sharing6 = sessionStorage.getItem('sharing6');
    	rating6 += sharing6 + ",";
    	$("td#sharing6").append(sharing6);
    }
    // optout6
    if (sessionStorage.getItem('optout6')) {
    	var optout6 = sessionStorage.getItem('optout6');
    	rating6 += optout6;
    	$("td#optout6").append(optout6);
    }
    $("td#rating6").text(rating6);

    var rating7 = "";
    // sharing7
    if (sessionStorage.getItem('sharing7')) {
    	var sharing7 = sessionStorage.getItem('sharing7');
    	rating7 += sharing7 + ",";
    	$("td#sharing7").append(sharing7);
    }
    // optout7
    if (sessionStorage.getItem('optout7')) {
    	var optout7 = sessionStorage.getItem('optout7');
    	rating7 += optout7;
    	$("td#optout7").append(optout7);
    }
    $("td#rating7").text(rating7);

    // phone
    if (sessionStorage.getItem('phone')) {
    	var phone = sessionStorage.getItem('phone');
    	$("li#sharephone").text("Call toll free " + phone + " - Our menu will promt you through your choices, or");
    	$("p#otherphone").text(phone);

    }

    // web
    if (sessionStorage.getItem('web')) {
    	var web = sessionStorage.getItem('web');
    	$("a#shareweb").attr('href', web);
    	$("a#shareweb").html(web);
    	$("a#otherweb").attr('href', web);
    	$("a#otherweb").html(web);
    }

    // othermethods
    if (sessionStorage.getItem('othermethods')) {
    	var othermethods = sessionStorage.getItem('othermethods');
    	$("li#othermethods").html(othermethods);
    }

    // direct contact
    if (sessionStorage.getItem('direct_contact')) {
    	var direct_contact = sessionStorage.getItem('direct_contact');
    	$("li#direct_contact").text(direct_contact);
    }

    // email
    if (sessionStorage.getItem('email')) {
    	var email = sessionStorage.getItem('email');
    	$("li#email").html("Email: <a href='mailto:"+ email + "'>" + email + "</a>");
    }

    // address
    if (sessionStorage.getItem('address')) {
    	var address = sessionStorage.getItem('address');
    	$("li#mailladd").text("Mailing address: " + address);
    }

    // legal entity name -- legalname
    if (sessionStorage.getItem('legalname')) {
    	var legalname = sessionStorage.getItem('legalname');
    	$("td#legalname").append(legalname);
    	$("td#protectQue").text("How does " + legalname + " protect your personal information? ");
    	$("td#collectQue").text("How does " + legalname + " collect your personal information? ");
    }

    // measures
    if (sessionStorage.getItem('measures')) {
    	var measures = sessionStorage.getItem('measures');
    	$("ul#measures").append("<li>" + measures + "</li>");
    }

    // how
    if (sessionStorage.getItem('how')) {
    	var how = sessionStorage.getItem('how');
    	console.log("how = " + how);

    	$("ul#howColl").html("<li>" + how + "</li>");

    }

    // affiliate
    if (sessionStorage.getItem('affiliate')) {
    	var affiliate = sessionStorage.getItem('affiliate');
    	$("li#affiliate").append("<i>" + affiliate + "</i>");

    }

    // naffiliate
    if (sessionStorage.getItem('naffiliate')) {
    	var naffiliate = sessionStorage.getItem('naffiliate');
    	$("li#naffiliate").append("<i>" + naffiliate + "</i>");
    }

    // nonaffiliates
    if (sessionStorage.getItem('nonaffiliates')) {
    	var nonaffiliates = sessionStorage.getItem('nonaffiliates');
    	$("li#nonaffiliatesjoin").append("<i>" + nonaffiliates + "</i>");

    }

    // receipt
    if (sessionStorage.getItem('receipt')) {
    	var receipt = sessionStorage.getItem('receipt');
    	$("a#receiptlink").attr('href', receipt);
    }

    // business
    if (sessionStorage.getItem('business')) {
    	var business = sessionStorage.getItem('business');

    }

    // states and law
    if (sessionStorage.getItem('states')) {
    	var states = sessionStorage.getItem('states');
    	$("td#stateslaw").append(states);
    	$("p#referother").html("State laws and individual companies may give you additional rights to limit sharing. See <a href=\"#Other\">Other Important Information</a> for more on your rights under state law.");

    }

    // apply
    if (sessionStorage.getItem('apply')) {
    	var apply = sessionStorage.getItem('apply');
    	$("td#accountorpolicy").html(apply);
    }

    // collection
    if (sessionStorage.getItem('collection')) {
    	var collection = sessionStorage.getItem('collection');
    	$("li#collection").text(collection);
    }

    // expireday
    if(sessionStorage.getItem('expireday')) {
    	var expireday = sessionStorage.getItem('expireday');
    	$("p#expireday").text(expireday);

    }



});