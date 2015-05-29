<%@ page import="databeans.Information"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta content="Privacy Policy Generator for the US Federal Trade Commission" name="description">
<meta content="Carnegie Mellon University, eBiz Program 2015. Team 1" name="author">
<link href="https://www.ftc.gov/sites/default/files/favicon_4.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
<title>FTC - Privacy Policy Generator</title>
<!-- Bootstrap Core CSS -->
<link href="external/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="external/css/agency.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="external/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// --><!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="external/js/jquery-2.1.4.js" type="text/javascript"></script>
<!-- Generate Notice JavaScript -->
<script src="external/js/generate.js"></script>
<script type="text/javascript">//<![CDATA[ 
$(window).load(function(){
$(function(){
    $("#no, #yes").change(function(){
        $("#optoutyes, #optoutno").attr("disabled",true);
        if($("#yes").is(":checked")){
            $("#optoutyes").removeAttr("disabled");
            $("#optoutno").removeAttr("disabled");
        }
        else if($("#no").is(":checked")){
			$("#optoutyes, #optoutno").attr("checked",false);
            $("#optoutyes, #optoutno").attr("disabled",true);  
        }
    });


   $("#no3, #yes3").change(function(){
        $("#optoutyes3, #optoutno3").attr("disabled",true);
        if($("#yes3").is(":checked")){
            $("#optoutyes3").removeAttr("disabled");
            $("#optoutno3").removeAttr("disabled");
        }
        else if($("#no3").is(":checked")){
			$("#optoutyes3, #optoutno3").attr("checked",false);
            $("#optoutyes3, #optoutno3").attr("disabled",true);  
        }
    });

   $("#no4, #yes4").change(function(){
        $("#optoutyes4, #optoutno4").attr("disabled",true);
        if($("#yes4").is(":checked")){
            $("#optoutyes4").removeAttr("disabled");
            $("#optoutno4").removeAttr("disabled");
        }
        else if($("#no4").is(":checked")){
			$("#optoutyes4, #optoutno4").attr("checked",false);
            $("#optoutyes4, #optoutno4").attr("disabled",true);  
        }
    });

   $("#no5, #yes5").change(function(){
        $("#optoutyes5, #optoutno5").attr("disabled",true);
        if($("#yes5").is(":checked")){
            $("#optoutyes5").removeAttr("disabled");
            $("#optoutno5").removeAttr("disabled");
        }
        else if($("#no5").is(":checked")){
			$("#optoutyes5").attr("checked",true);
            $("#optoutyes5").attr("disabled",true);  
        }
    });

   $("#no6, #yes6, #na6").change(function(){
        $("#optoutyes6").attr("disabled",true);
        if($("#yes6").is(":checked")){
            $("#optoutyes6").removeAttr("disabled");
        }
        else if($("#no6, #na6").is(":checked")){
			$("#optoutyes6").attr("checked",true);
            $("#optoutyes6, #optoutno6").attr("disabled",true);  
        }
    });
	
	   $("#no7, #yes7").change(function(){
        $("#optoutyes7").attr("disabled",true);
        if($("#yes7").is(":checked")){
            $("#optoutyes7").removeAttr("disabled");
        }
        else if($("#no7").is(":checked")){
			$("#optoutyes7").attr("checked",true);
            $("#optoutyes7").attr("disabled",true);  
        }
    });
});
});//]]>  
</script>
<script type="text/javascript">
function chkcontrol(j) {
var total=0;
for(var i=0; i < document.f1.whatinfo.length; i++){
if(document.f1.whatinfo[i].checked){
total =total +1;}
if(total > 5){
alert("You can only select 5 options including SSN") 
document.f1.whatinfo[j].checked = false ;
return false;
}
}
} </script>
<script type="text/javascript">
function chkcontrol2(j) {
var total=0;
for(var i=0; i < document.f1.how.length; i++){
if(document.f1.how[i].checked){
total =total +1;}
if(total > 5){
alert("You can only select 5 options") 
document.f1.how[j].checked = false ;
return false;
}
}
} </script>
<script type="text/javascript">//<![CDATA[ 
$(window).load(function(){
$("#limits1").click(function() {
    $("#limitstext").attr("disabled", !this.checked); 
});
$("#limits0").click(function() {
    $("#limitstext").attr("disabled", this.checked); 
});
$("#limits3").click(function() {
    $("#limitstext2").attr("disabled", !this.checked); 
});
$("#limits2").click(function() {
    $("#limitstext2").attr("disabled", this.checked); 
});
$("#limits5").click(function() {
    $("#states").attr("disabled", !this.checked); 
});
$("#limits4").click(function() {
    $("#states").attr("disabled", this.checked); 
});
$("#limits7").click(function() {
    $("#receipt").attr("disabled", !this.checked); 
});
$("#limits6").click(function() {
    $("#receipt").attr("disabled", this.checked); 
});
});//]]>  

</script>
<script type="text/javascript">//<![CDATA[ 
$(window).load(function(){
$("#affs1").click(function() {
    $("#fieldaf").attr("disabled", !this.checked);
}); 
$("#affs2").click(function() {
    $("#fieldaf").attr("disabled", this.checked); 
});
$("#affs3").click(function() {
    $("#fieldaf").attr("disabled", this.checked); 
});

$("#naffs1").click(function() {
    $("#fieldnaf").attr("disabled", !this.checked);
}); 
$("#naffs2").click(function() {
    $("#fieldnaf").attr("disabled", this.checked); 
});

$("#show").click(function() {
    $("#joint").attr("disabled", !this.checked);
}); 
$("#hide").click(function() {
    $("#joint").attr("disabled", this.checked); 
});

});//]]>  
</script>
<!-- Confirm with Camilo -->
</head>

<body id="page-top" class="index" onload="enable_text(false);">

<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button class="navbar-toggle" data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" type="button">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span><span class="icon-bar"></span>
			<span class="icon-bar"></span></button>
			<a class="navbar-brand page-scroll" href="#page-top">
			<img src="external/img/logo.png"> </a></div>
		<br>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a class="page-scroll" href="#institution">Institution &gt;&gt;</a>
				</li>
				<li><a class="page-scroll" href="#privacy">Privacy &gt;&gt;</a>
				</li>
				<li><a class="page-scroll" href="#other">Other &gt;&gt;</a> </li>
				<li><a class="page-scroll" href="#save">Save</a> </li>
			</ul>
		</div>
		<!-- /.navbar-collapse --></div>
	<!-- /.container-fluid -->
</nav>
<!-- Header -->
<header>
	<div class="container">
		<div class="intro-text">
			<br><br>
			<div class="intro-heading">
				U.S. Consumer Privacy Notice Generator</div>
			<div class="row">
				<div class="col-md-4">
					<p><font color="#d3a401"><b>What is the CPN Generator?</b></font></p>
					<p align="left">This is a tool developed by the Federal Trade 
					Commission (FTC) for Financial Institutions to generate a standardized 
					U.S. Consumer Privacy Notices (CPN). <br><br>It is important 
					for all institutions operating in the United States to provide 
					a clear and concise notice to consumers. Furthermore, by generating 
					and implementing this notice on the institution's website, the 
					institution will receive the benefit of a "Safe Harbor" in regards 
					to consumer privacy auditing by the FTC.</p>
				</div>
				<div class="col-md-4">
					<p><font color="#d3a401"><b>What does this tool do?</b></font></p>
					<p align="left">This tool generates a Consumer Privacy Notice 
					based on your company's privacy policy and federal regulations. 
					You will be able to download the following files: </p>
					<br>
					<table class="table">
						<tr valign="top">
							<td align="left">
							<span class="glyphicon glyphicon-download-alt">
							</span></td>
							<td>&nbsp; &nbsp;</td>
							<td align="left">A standalone HTML web page that can 
							be added to your company's website.</td>
						</tr>
						<tr valign="top">
							<td align="left">
							<span class="glyphicon glyphicon-file"></span></td>
							<td></td>
							<td align="left">A computer readable XML file that can 
							be uploaded into this tool for future modifications.</td>
						</tr>
					</table>
				</div>
				<div class="col-md-4">
					<p><font color="#d3a401"><b>How to use the tool?</b></font>
					</p>
					<p align="left">To generate a new notice click on the
					<a class="page-scroll" href="#institution">Create New CPN</a> 
					button below and fill out the form according to your institution's 
					privacy policy. As you advance, the navigation bar will show 
					your progress. When you see this icon
					<a title="Hover on the icon for 2 seconds and the info tip will appear">
					<span class="glyphicon glyphicon-info-sign"></span></a>you can 
					hover on it to read more details.<br><br>You can save your work 
					by downloading an XLM file at any time. Simply click
					<a class="page-scroll" href="#save">Save</a> on the navigation 
					bar a the end of the page and then choose the Download XML option. 
					To resume your work, you can import the XML file and the form 
					will be updated with the values saved. Always remember to download 
					the XML file to save your work. </p>
					<br><br></div>
			</div>
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-3">
					<a class="page-scroll btn btn-xl" href="#institution">Create 
					New CPN</a> </div>
				<div class="col-md-3">
					<a class="page-scroll btn btn-xl" data-target="#import" data-toggle="collapse">
					Import XML File</a>
					<div id="import" class="collapse">
						<form action="InputXML.do" enctype="multipart/form-data" method="POST">
							<table>
								<tr>
									<td>
									<div style="margin: 10px">
										<input data-filename-placement="inside" name="file" title="Select the Backup File" type="file" />
									</div>
									</td>
								</tr>
								<tr>
									<td align="left">&nbsp; &nbsp;<input class="btn btn-primary btn-primary-lg" name="upload" type="submit" value="Upload" /></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- First Section -->
<section id="institution">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">Your Institution</h2>
				<h3 class="section-subheading text-muted">In this section you will 
				provide information to identify and contact your company.</h3>
			</div>
		</div>
		<!-- Form Initiation-->
		<div class="row">
			<div class="col-lg-12">
				<form id="policyform" action="choose.do" method="post" name="f1">
					<div class="col-md-6">
						<div class="form-group">
							<h4>Identify the Company</h4>
							<label>Name of the company providing the notice*</label>
							<input id="institution-name" class="form-control" name="company" placeholder="e.g. American Bank" required="" type="text" value="${information.company}">
							<p></p>
							<br><label>Legal entity name*</label>
							<input id="legalname" class="form-control" name="entity" placeholder="e.g. American Bank Corporation" required="" type="text" value="${information.entity}">
							<p></p>
							<br><label>If any, list all other legal entities affiliated 
							with your company that will be providing this notice
							<a title="Affiliate companies are related by common ownership or control. They can be financial or nonfinancial companies">
							<span class="glyphicon glyphicon-info-sign"></span>
							</a></label>
							<textarea id="alias" class="form-control" name="entities" placeholder="e.g. American Advisors LLC, AmericanForex" rows="4">${information.entities}</textarea>
							<p></p>
							<br><label>Financial Institution Primary Business*</label><p>
							</p>
							<label class="radio-inline">
							<input id="joint1" <c:if="" name="joint" test="${information.joint== 'account'}" type="radio" value="account"> 
							checked='checked' : '' </c:if>
							/&gt; Banking</label> <label class="radio-inline">
							<input id="joint2" <c:if="" name="joint" test="${information.joint== 'policy'}" type="radio" value="policy"> 
							checked='checked' : '' </c:if>
							/&gt; Insurance</label> </div>
					</div>
					<div class="form-group">
						<div class="col-md-6">
							<h4>Contact Information</h4>
							<label>Customer service phone number*:</label>
							<input id="phone" class="form-control" name="phone" placeholder="e.g. 1-800-123-4567*" required="" type="tel" value="${information.phone}">
							<p></p>
							<label>Email for privacy matters*:</label>
							<input id="email" class="form-control" name="email" placeholder="e.g. privacy@americanbank.com*" required="" type="email" value="${information.email}">
							<p></p>
							<label>Company's website*:</label>
							<input id="web" class="form-control" name="web" placeholder="e.g. http://www.americanbank.com" required="" type="text" value="${information.web}">
							<p></p>
							<label>Mailing address*:</label>
							<textarea id="mailadd" class="form-control" name="address" placeholder="Street Address*" required="" rows="2">${information.address}</textarea>
							<p></p>
						</div>
						<div class="col-md-2">
							<input id="l3" class="form-control" name="city" placeholder="City*" required="" type="text" value="${information.city}">
							<p></p>
						</div>
						<div class="col-md-2">
							<input id="zip" class="form-control" name="zipcode" placeholder="Zipcode*" required="" type="number" value="${information.zipcode}">
							<p></p>
						</div>
						<div class="col-md-2">
							<select id="stateselect" class="form-control" name="state" required="">
							<option selected="" value="AL">Alabama</option>
							<option value="AK">Alaska</option>
							<option value="AZ">Arizona</option>
							<option value="AR">Arkansas</option>
							<option value="CA">California</option>
							<option value="CO">Colorado</option>
							<option value="CT">Connecticut</option>
							<option value="DE">Delaware</option>
							<option value="DC">District Of Columbia</option>
							<option value="FL">Florida</option>
							<option value="GA">Georgia</option>
							<option value="HI">Hawaii</option>
							<option value="ID">Idaho</option>
							<option value="IL">Illinois</option>
							<option value="IN">Indiana</option>
							<option value="IA">Iowa</option>
							<option value="KS">Kansas</option>
							<option value="KY">Kentucky</option>
							<option value="LA">Louisiana</option>
							<option value="ME">Maine</option>
							<option value="MD">Maryland</option>
							<option value="MA">Massachusetts</option>
							<option value="MI">Michigan</option>
							<option value="MN">Minnesota</option>
							<option value="MS">Mississippi</option>
							<option value="MO">Missouri</option>
							<option value="MT">Montana</option>
							<option value="NE">Nebraska</option>
							<option value="NV">Nevada</option>
							<option value="NH">New Hampshire</option>
							<option value="NJ">New Jersey</option>
							<option value="NM">New Mexico</option>
							<option value="NY">New York</option>
							<option value="NC">North Carolina</option>
							<option value="ND">North Dakota</option>
							<option value="OH">Ohio</option>
							<option value="OK">Oklahoma</option>
							<option value="OR">Oregon</option>
							<option value="PA">Pennsylvania</option>
							<option value="RI">Rhode Island</option>
							<option value="SC">South Carolina</option>
							<option value="SD">South Dakota</option>
							<option value="TN">Tennessee</option>
							<option value="TX">Texas</option>
							<option value="UT">Utah</option>
							<option value="VT">Vermont</option>
							<option value="VA">Virginia</option>
							<option value="WA">Washington</option>
							<option value="WV">West Virginia</option>
							<option value="WI">Wisconsin</option>
							<option value="WY">Wyoming</option>
							</select> </div>
						<p></p>
					</div>
				</form>
			</div>
		</div>
		<br><br><br><hr>
		<p align="center"><a class="page-scroll" href="#privacy">Continue&gt;&gt;</a></p>
	</div>
</section>
<!-- Privacy -->
<section id="privacy" class="bg-light-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">Privacy Policy</h2>
				<h3 class="section-subheading text-muted">What, when, and how you 
				collect and share consumer's information. </h3>
			</div>
		</div>
		<!-- Form Continues-->
		<div class="row">
			<div class="col-lg-12">
				<div class="form-group">
					<h5>What Information do you collect?</h5>
					<div class="col-lg-10">
						<p><font color="#333333">Personally identifiable information 
						(PII), as used in US privacy law is information that can 
						be used on its own or with other information to identify, 
						contact, or locate a single person, or to identify an individual 
						in context. The following list identifies the types of personal 
						information that financial companies collect and share.</font><br>
						<br></p>
						<label>Please select <b>FIVE</b> types of information that 
						your company mostly collects and shares from customers, 
						regardless of the purpose.</label>
						<p></p>
						<div class="col-sm-6 col-md-4">
							<label>
							<input checked disabled name="whatinfo" type="checkbox" value="	Social Security Number	"> 
							Social Security Number
							<a title="Social Security Number is selected by default.">
							<span class="glyphicon glyphicon-info-sign"></span>
							</a></label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Account balances	'}" type="checkbox" value="	Account balances	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Account balances	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Account balances	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Account balances	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Account balances	'}"> 
							checked='checked' : '' </c:if>
							&gt; Account balances </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Account transactions	'}" type="checkbox" value="	Account transactions	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Account transactions	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Account transactions	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Account transactions	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Account transactions	'}"> 
							checked='checked' : '' </c:if>
							&gt; Account transactions </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Assets	'}" type="checkbox" value="	Assets	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Assets	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Assets	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Assets	'}"> 
							checked='checked' : '' </c:if>
							
							&gt; Assets </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Checking account information	'}" type="checkbox" value="	Checking account information	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Checking account information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Checking account information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Checking account information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Checking account information	'}"> 
							checked='checked' : '' </c:if>
							&gt; Checking account information </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Contact Information	'}" type="checkbox" value="	Contact Information	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Contact Information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Contact Information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Contact Information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Contact Information	'}"> 
							checked='checked' : '' </c:if>
							&gt; Contact Information </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Credit card or other debt	'}" type="checkbox" value="	Credit card or other debt	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Credit card or other debt	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Credit card or other debt	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Credit card or other debt	'}"> 
							checked='checked' : '' </c:if>
							
							&gt; Credit card or other debt </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Credit history	'}" type="checkbox" value="	Credit history	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Credit history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Credit history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Credit history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Credit history	'}"> 
							checked='checked' : '' </c:if>
							&gt; Credit history </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Credit scores	'}" type="checkbox" value="	Credit scores	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Credit scores	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Credit scores	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Credit scores	'}"> 
							checked='checked' : '' </c:if>
							&gt; Credit scores </label><br></div>
						<div class="col-sm-6 col-md-4">
							<label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Employment information	'}" type="checkbox" value="	Employment information	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Employment information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Employment information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Employment information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Employment information	'}"> 
							checked='checked' : '' </c:if>
							&gt; Employment information </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Income information	'}" type="checkbox" value="	Income information	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Income information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Income information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Income information	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Income information	'}"> 
							checked='checked' : '' </c:if>
							&gt; Income information </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Insurance claim history	'}" type="checkbox" value="	Insurance claim history	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Insurance claim history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Insurance claim history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Insurance claim history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Insurance claim history	'}"> 
							checked='checked' : '' </c:if>
							&gt; Insurance claim history </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Insurance scores	'}" type="checkbox" value="	Insurance scores	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Insurance scores	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Insurance scores	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Insurance scores	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Insurance scores	'}"> 
							checked='checked' : '' </c:if>
							&gt; Insurance scores </label><br><label>
							<input <c:if="" name="whatinfo" onclick="chkcontrol(13)" test="${information.whatinfo1== '	Investment experiences	'}" type="checkbox" value="	Investment experiences	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Investment experiences	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Investment experiences	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Investment experiences	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Investment experiences	'}"> 
							checked='checked' : '' </c:if>
							&gt; Investment experiences </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Medical expenses	'}" type="checkbox" value="	Medical expenses	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Medical expenses	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Medical expenses	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Medical expenses	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Medical expenses	'}"> 
							checked='checked' : '' </c:if>
							&gt; Medical expenses </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Medical-related debts	'}" type="checkbox" value="	Medical-related debts	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Medical-related debts	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Medical-related debts	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Medical-related debts	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Medical-related debts	'}"> 
							checked='checked' : '' </c:if>
							&gt; Medical-related debts </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Mortgage rates and payments	'}" type="checkbox" value="	Mortgage rates and payments	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Mortgage rates and payments	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Mortgage rates and payments	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Mortgage rates and payments	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Mortgage rates and payments	'}"> 
							checked='checked' : '' </c:if>
							&gt; Mortgage rates and payments </label><br></div>
						<div class="col-sm-6 col-md-4">
							<label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Overdue history	'}" type="checkbox" value="	Overdue history	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Overdue history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Overdue history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Overdue history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Overdue history	'}"> 
							checked='checked' : '' </c:if>
							&gt; Overdue history </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Payments history	'}" type="checkbox" value="	Payments history	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Payments history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Payments history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Payments history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Payments history	'}"> 
							checked='checked' : '' </c:if>
							&gt; Payments history </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Profit/loss history	'}" type="checkbox" value="	Profit/loss history	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Profit/loss history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Profit/loss history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Profit/loss history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Profit/loss history	'}"> 
							checked='checked' : '' </c:if>
							&gt; Profit/loss history </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Purchase history	'}" type="checkbox" value="	Purchase history	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Purchase history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Purchase history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Purchase history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Purchase history	'}"> 
							checked='checked' : '' </c:if>
							&gt; Purchase history </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Retirement assets	'}" type="checkbox" value="	Retirement assets	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Retirement assets	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Retirement assets	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Retirement assets	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Retirement assets	'}"> 
							checked='checked' : '' </c:if>
							&gt; Retirement assets </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Risk tolerance	'}" type="checkbox" value="	Risk tolerance	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Risk tolerance	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Risk tolerance	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Risk tolerance	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Risk tolerance	'}"> 
							checked='checked' : '' </c:if>
							&gt; Risk tolerance </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Transactions history	'}" type="checkbox" value="	Transactions history	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== ' 	Transactions history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Transactions history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Transactions history	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Transactions history	'}"> 
							checked='checked' : '' </c:if>
							&gt; Transactions history </label><br><label>
							<input <c:if="" name="whatinfo" test="${information.whatinfo1== '	Wire transfer instructions	'}" type="checkbox" value="	Wire transfer instructions	"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo2== '	Wire transfer instructions	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo3== '	Wire transfer instructions	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo4== '	Wire transfer instructions	'}"> 
							checked='checked' : '' </c:if>
							<c:if test="${information.whatinfo5== '	Wire transfer instructions	'}"> 
							checked='checked' : '' </c:if>
							&gt; Wire transfer instructions </label><br></div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<hr>
			<div class="col-md-11">
				<div class="form-group">
					<br><br>
					<p></p>
					<h5>For what does your company collect that information?</h5>
					<p><font color="#333333">The following table summarizes the 
					reasons why companies may share consumer's information. Each 
					reason correlates to a specific legal provision of the US Privacy 
					Law. In the middle and right columns please select a response 
					that accurately reflects your information sharing policies and 
					practices with respect to the reason listed on the left.</font><br>
					<br></p>
					<table class="table table-hover table-striped">
						<thead>
							<tr>
								<th>Reasons to share personal information</th>
								<th>Does your company share information for this 
								reason?</th>
								<th>Can your customers opt-out for this?
								<a title="If you do not share this type of information this option will be disabled">
								<span class="glyphicon glyphicon-info-sign">
								</span></a></th>
							</tr>
						</thead>
						<tr>
							<td>For everyday business purposes
							<a title="Consumers do not have the right to limit this use.">
							<span class="glyphicon glyphicon-info-sign"></span>
							</span></a></td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input checked name="sharing1" type="radio" value="Yes" />Yes
								</label></div>
							</td>
							<td><label class="radio-inline">
							<input checked name="optout1" type="radio" value="Yes" /> 
							No </label></td>
						</tr>
						<tr>
							<td>Sharing with service providers for your company's 
							own marketing</td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="yes" <c:if="" name="sharing2" test="${information.sharing2== 'Yes'}" type="radio" value="Yes"> 
								checked='checked' : '' </c:if>
								/&gt; Yes </label><label class="radio-inline">
								<input id="no" <c:if="" name="sharing2" test="${information.sharing2== 'No'}" type="radio" value="No"> 
								checked='checked' : '' </c:if>
								/&gt; No </label></div>
							</td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="optoutyes" disabled name="optout2" type="radio" value="Yes" /> 
								Yes </label><label class="radio-inline">
								<input id="optoutno" disabled name="optout2" type="radio" value="No" /> 
								No</label> </div>
							</td>
						</tr>
						<tr>
							<td>For joint marketing with other financial companies</td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="yes3" <c:if="" name="sharing3" test="${information.sharing3== 'Yes'}" type="radio" value="Yes"> 
								checked='checked' : '' </c:if>
								/&gt; Yes </label><label class="radio-inline">
								<input id="no3" <c:if="" name="sharing3" test="${information.sharing3== 'No'}" type="radio" value="No"> 
								checked='checked' : '' </c:if>
								/&gt; No </label></div>
							</td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="optoutyes3" disabled name="optout3" type="radio" value="Yes" /> 
								Yes </label><label class="radio-inline">
								<input id="optoutno3" disabled name="optout3" type="radio" value="No" /> 
								No</label> </div>
							</td>
						</tr>
						<tr>
							<td>For your affiliates' everyday business purposes 
							| Transactions and experiences</td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="yes4" <c:if="" name="sharing4" test="${information.sharing4== 'Yes'}" type="radio" value="Yes"> 
								checked='checked' : '' </c:if>
								/&gt; Yes </label><label class="radio-inline">
								<input id="no4" <c:if="" name="sharing4" test="${information.sharing4== 'No'}" type="radio" value="No"> 
								checked='checked' : '' </c:if>
								/&gt; No </label></div>
							</td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="optoutyes4" disabled name="optout4" type="radio" value="Yes" /> 
								Yes </label><label class="radio-inline">
								<input id="optoutno4" disabled name="optout4" type="radio" value="No" /> 
								No</label> </div>
							</td>
						</tr>
						<tr>
							<td>For your affiliates' everyday business purposes 
							| Creditworthiness
							<a title="Law grants consumers the right to opt-out in this case">
							<span class="glyphicon glyphicon-info-sign"></span>
							</span></a></td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="yes5" <c:if="" name="sharing5" test="${information.sharing5== 'Yes'}" type="radio" value="Yes"> 
								checked='checked' : '' </c:if>
								/&gt; Yes </label><label class="radio-inline">
								<input id="no5" <c:if="" name="sharing5" test="${information.sharing6== 'Yes'}" type="radio" value="No"> 
								checked='checked' : '' </c:if>
								/&gt; No </label></div>
							</td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="optoutyes5" checked name="optout5" required="" type="radio" value="Yes" /> 
								Yes </label></div>
							</td>
						</tr>
						<tr>
							<td>For your affiliates to market your customers.
							<a title="Consumers are granted the right to opt out indifinitely in this case. If you select 'No' or 'Does not aply' this reason will not be included in the notice. For details regarding a separate notice refer to Â§624 FRCA.">
							<span class="glyphicon glyphicon-info-sign"></span>
							</span></a><br><br>You may choose 'N/A' (Not applicable) 
							if:
							<ul>
								<li>Your company does not have affiliates</li>
								<li>Affiliates do not use PII in a manner that requires 
								opt-out</li>
								<li>Your company provides an affiliate marketing 
								notice separately compliant with FCRA</li>
							</ul>
							</td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="yes6" <c:if="" name="sharing6" test="${information.sharing6== 'Yes'}" type="radio" value="Yes"> 
								checked='checked' : '' </c:if>
								/&gt; Yes </label><label class="radio-inline">
								<input id="no6" <c:if="" name="sharing6" test="${information.sharing6== 'No'}" type="radio" value="No"> 
								checked='checked' : '' </c:if>
								/&gt; No </label><label class="radio-inline">
								<input id="na6" <c:if="" name="sharing6" test="${information.sharing6== 'NA'}" type="radio" value="N/A"> 
								checked='checked' : '' </c:if>
								/&gt; N/A </label></div>
							</td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="optoutyes6" checked disabled name="optout6" type="radio" value="Yes" /> 
								Yes </label></div>
							</td>
						</tr>
						<tr>
							<td>For nonaffiliated to market your customers.
							<a title="Consumers are granted the right to opt out.">
							<span class="glyphicon glyphicon-info-sign"></span>
							</span></a></td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="yes7" <c:if="" name="sharing7" test="${information.sharing7== 'Yes'}" type="radio" value="Yes"> 
								checked='checked' : '' </c:if>
								/&gt; Yes </label><label class="radio-inline">
								<input id="no7" <c:if="" name="sharing7" test="${information.sharing7== 'No'}" type="radio" value="No"> 
								checked='checked' : '' </c:if>
								/&gt; No </label></div>
							</td>
							<td>
							<div class="form-group">
								<label class="radio-inline">
								<input id="optoutyes7" checked disabled name="optout7" type="radio" /> 
								Yes </label></div>
							</td>
						</tr>
					</table>
					<p></p>
					<br><hr><br>
					<h5>How do you collect and protect consumers' personal information?</h5>
					<p><font color="#333333">To protect personal information from 
					unauthorized access and use, federal law requires computer safeguards 
					and secured files and buildings.</font> </p>
					<label>If you take other measures, please list them below</span></span></a></label>
					<br>
					<textarea id="measures" class="form-control" maxlength="200" name="measures" placeholder="Up to 30 words" rows="2" />${information.measures}</textarea>
					<br>
					<p></p>
					<label>How does your company collect consumers' personal information? 
					You must choose any <b>FIVE</b> options from the following:</span></span></a></label>
					<br>
					<p></p>
					<div class="col-sm-6 col-md-4">
						<label>
						<input <c:if="" name="how" test="${information.how1== '	open an account	'}" type="checkbox" value="	open an account	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	open an account	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	open an account	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	open an account	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	open an account	'}"> 
						checked='checked' : '' </c:if>
						&gt; Open an account </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	deposit money	'}" type="checkbox" value="	deposit money	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	deposit money	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	deposit money	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	deposit money	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	deposit money	'}"> 
						checked='checked' : '' </c:if>
						&gt; Deposit money </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	pay your bills	'}" type="checkbox" value="	pay your bills	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	pay your bills	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	pay your bills	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	pay your bills	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	pay your bills	'}"> 
						checked='checked' : '' </c:if>
						&gt; Pay your bills </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	apply for a loan	'}" type="checkbox" value="	apply for a loan	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	apply for a loan	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	apply for a loan	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	apply for a loan	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	apply for a loan	'}"> 
						checked='checked' : '' </c:if>
						&gt; Apply for a loan </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	use your credit or debit card	'}" type="checkbox" value="	use your credit or debit card	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	use your credit or debit card	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	use your credit or debit card	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	use your credit or debit card	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	use your credit or debit card	'}"> 
						checked='checked' : '' </c:if>
						&gt; Use your credit or debit card </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	seek financial or tax advice	'}" type="checkbox" value="	seek financial or tax advice	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	seek financial or tax advice	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	seek financial or tax advice	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	seek financial or tax advice	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	seek financial or tax advice	'}"> 
						checked='checked' : '' </c:if>
						&gt; Seek financial or tax advice </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	apply for insurance	'}" type="checkbox" value="	apply for insurance	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	apply for insurance	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	apply for insurance	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	apply for insurance	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	apply for insurance	'}"> 
						checked='checked' : '' </c:if>
						&gt; Apply for insurance </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	pay insurance premiums	'}" type="checkbox" value="	pay insurance premiums	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	pay insurance premiums	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	pay insurance premiums	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	pay insurance premiums	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	pay insurance premiums	'}"> 
						checked='checked' : '' </c:if>
						&gt; Pay insurance premiums </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	file an insurance claim	'}" type="checkbox" value="	file an insurance claim	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	file an insurance claim	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	file an insurance claim	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	file an insurance claim	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	file an insurance claim	'}"> 
						checked='checked' : '' </c:if>
						&gt; File an insurance claim </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	seek advice about your investments	'}" type="checkbox" value="	seek advice about your investments	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	seek advice about your investments	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	seek advice about your investments	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	seek advice about your investments	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	seek advice about your investments	'}"> 
						checked='checked' : '' </c:if>
						&gt; Seek advice about your investments </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	buy securities from us	'}" type="checkbox" value="	buy securities from us	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	buy securities from us	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	buy securities from us	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	buy securities from us	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	buy securities from us	'}"> 
						checked='checked' : '' </c:if>
						&gt; Buy securities from us </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	sell securities to us	'}" type="checkbox" value="	sell securities to us	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	sell securities to us	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	sell securities to us	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	sell securities to us	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	sell securities to us	'}"> 
						checked='checked' : '' </c:if>
						&gt; Sell securities to us </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	direct us to buy securities	'}" type="checkbox" value="	direct us to buy securities	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	direct us to buy securities	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	direct us to buy securities	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	direct us to buy securities	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	direct us to buy securities	'}"> 
						checked='checked' : '' </c:if>
						&gt; Direct us to buy securities </label><br></div>
					<div class="col-sm-6 col-md-4">
						<label>
						<input <c:if="" name="how" test="${information.how1== '	direct us to sell your securities	'}" type="checkbox" value="	direct us to sell your securities	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	direct us to sell your securities	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	direct us to sell your securities	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	direct us to sell your securities	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	direct us to sell your securities	'}"> 
						checked='checked' : '' </c:if>
						&gt; Direct us to sell your securities </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	make deposits or withdrawals from your account	'}" type="checkbox" value="	make deposits or withdrawals from your account	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	make deposits or withdrawals from your account	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	make deposits or withdrawals from your account	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	make deposits or withdrawals from your account	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	make deposits or withdrawals from your account	'}"> 
						checked='checked' : '' </c:if>
						&gt; Make deposits or withdrawals </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	enter into an investment advisory contract	'}" type="checkbox" value="	enter into an investment advisory contract	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	enter into an investment advisory contract	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	enter into an investment advisory contract	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	enter into an investment advisory contract	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	enter into an investment advisory contract	'}"> 
						checked='checked' : '' </c:if>
						&gt; Enter into invmt advisory contract </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	give us your income information	'}" type="checkbox" value="	give us your income information	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	give us your income information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	give us your income information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	give us your income information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	give us your income information	'}"> 
						checked='checked' : '' </c:if>
						&gt; Give us your income information </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	provide employment information	'}" type="checkbox" value="	provide employment information	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	provide employment information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	provide employment information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	provide employment information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	provide employment information	'}"> 
						checked='checked' : '' </c:if>
						&gt; Provide employment information </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	give us your employment history	'}" type="checkbox" value="	give us your employment history	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	give us your employment history	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	give us your employment history	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	give us your employment history	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	give us your employment history	'}"> 
						checked='checked' : '' </c:if>
						&gt; Give us your employment history </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	tell us about your investment or retirement portfolio	'}" type="checkbox" value="	tell us about your investment or retirement portfolio	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	tell us about your investment or retirement portfolio	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	tell us about your investment or retirement portfolio	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	tell us about your investment or retirement portfolio	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	tell us about your investment or retirement portfolio	'}"> 
						checked='checked' : '' </c:if>
						&gt; Tell us about investment or retirement portfolio
						</label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	tell us about your investment or retirement earnings	'}" type="checkbox" value="	tell us about your investment or retirement earnings	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	tell us about your investment or retirement earnings	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	tell us about your investment or retirement earnings	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	tell us about your investment or retirement earnings	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	tell us about your investment or retirement earnings	'}"> 
						checked='checked' : '' </c:if>
						&gt; Tell us about investment or retirement earnings
						</label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	apply for financing	'}" type="checkbox" value="	apply for financing	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	apply for financing	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	apply for financing	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	apply for financing	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	apply for financing	'}"> 
						checked='checked' : '' </c:if>
						&gt; Apply for financing </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	apply for a lease	'}" type="checkbox" value="	apply for a lease	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	apply for a lease	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	apply for a lease	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	apply for a lease	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	apply for a lease	'}"> 
						checked='checked' : '' </c:if>
						&gt; Apply for a lease </label><br></div>
					<div class="col-sm-6 col-md-4">
						<label>
						<input <c:if="" name="how" test="${information.how1== '	provide account information	'}" type="checkbox" value="	provide account information	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	provide account information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	provide account information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	provide account information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	provide account information	'}"> 
						checked='checked' : '' </c:if>
						&gt; Provide account information </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	give us your contact information	'}" type="checkbox" value="	give us your contact information	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	give us your contact information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	give us your contact information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	give us your contact information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	give us your contact information	'}"> 
						checked='checked' : '' </c:if>
						&gt; Give us your contact information </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	pay us by check	'}" type="checkbox" value="	pay us by check	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	pay us by check	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	pay us by check	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	pay us by check	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	pay us by check	'}"> 
						checked='checked' : '' </c:if>
						&gt; Pay us by check </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	give us your wage statements	'}" type="checkbox" value="	give us your wage statements	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	give us your wage statements	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	give us your wage statements	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	give us your wage statements	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	give us your wage statements	'}"> 
						checked='checked' : '' </c:if>
						&gt; Give us your wage statements </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	provide your mortgage information	'}" type="checkbox" value="	provide your mortgage information	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	provide your mortgage information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	provide your mortgage information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	provide your mortgage information	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	provide your mortgage information	'}"> 
						checked='checked' : '' </c:if>
						&gt; Provide your mortgage information </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	make a wire transfer	'}" type="checkbox" value="	make a wire transfer	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	make a wire transfer	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	make a wire transfer	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	make a wire transfer	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	make a wire transfer	'}"> 
						checked='checked' : '' </c:if>
						&gt; Make a wire transfer </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	tell us who receives the money	'}" type="checkbox" value="	tell us who receives the money	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	tell us who receives the money	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	tell us who receives the money	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	tell us who receives the money	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	tell us who receives the money	'}"> 
						checked='checked' : '' </c:if>&gt; Tell us who receives the 
						money </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	tell us where to send the money	'}" type="checkbox" value="	tell us where to send the money	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	tell us where to send the money	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	tell us where to send the money	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	tell us where to send the money	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	tell us where to send the money	'}"> 
						checked='checked' : '' </c:if>
						&gt; Tell us where to send the money </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	show your government-issued ID	'}" type="checkbox" value="	show your government-issued ID	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	show your government-issued ID	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	show your government-issued ID	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	show your government-issued ID	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	show your government-issued ID	'}"> 
						checked='checked' : '' </c:if>
						&gt; Show your government-issued id </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	show your drivers license	'}" type="checkbox" value="	show your drivers license	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	show your drivers license	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	show your drivers license	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	show your drivers license	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	show your drivers license	'}"> 
						checked='checked' : '' </c:if>
						&gt; Show your driver's license </label><br><label>
						<input <c:if="" name="how" test="${information.how1== '	order a commodity futures or option trade	'}" type="checkbox" value="	order a commodity futures or option trade	"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how2== '	order a commodity futures or option trade	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how3== '	order a commodity futures or option trade	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how4== '	order a commodity futures or option trade	'}"> 
						checked='checked' : '' </c:if>
						<c:if test="${information.how5== '	order a commodity futures or option trade	'}"> 
						checked='checked' : '' </c:if>
						&gt; Order a commodity futures or option trade </label><br>
						<br></div>
				</div>
				<div class="col-lg-10">
					<p></p>
					<br><br><label>Additional forms of collection: please select 
					the options that applies to your company.
					<a title="If you collect information from credit bureaus, affiliates and other companies, select the second option">
					<span class="glyphicon glyphicon-info-sign"></span></span>
					</a></label>
					<p></p>
					<div class="controlset-pad">
						<label>
						<input id="collection1" <c:if="" name="collection" test="${information.collection== '1'}" type="radio" value="1"> 
						checked='checked' : '' </c:if>
						/&gt; We collect personal information from affiliates and/or 
						credit bureaus</label><p></p>
						<label>
						<input id="collection2" <c:if="" name="collection" test="${information.collection== '2'}" type="radio" value="2"> 
						checked='checked' : '' </c:if>
						/&gt; We collect personal information from other companies, 
						different than affiliates and/or credit bureaus</label><p>
						</p>
						<label>
						<input id="collection3" <c:if="" name="collection" test="${information.collection== '3'}" type="radio" value="3"> 
						checked='checked' : '' </c:if>
						/&gt; We do not collect any personal information from affiliates, 
						credit bureaus, or other companies </label></div>
				</div>
				<br><br><br></div>
		</div>
		<div class="row">
			<div class="form-group">
				<hr>
				<p></p>
				<br>
				<h5>Sharing of Information with Affiliates and Nonaffiliates</h5>
				<p><font color="#333333">Affiliated and nonaffiliated companies 
				can be either financial and nonfinancial companies.
				<a title="An affiliate company is defined as an entity related by common ownership or control">
				<span class="glyphicon glyphicon-info-sign"></span></span></a>
				</font></p>
				<br>
				<div class="col-md-4">
					<label>Please indicate your sharing practices with affiliated 
					companies:</label><p></p>
					<div class="controlset-pad">
						<label>
						<input id="affs3" <c:if="" name="affiliate" test="${information.affiliate== '1'}" type="radio" value="1"> 
						checked='checked' : '' </c:if>
						/&gt; Company does not have affiliates</label> <label>
						<input id="affs2" <c:if="" name="affiliate" test="${information.affiliate== '2'}" type="radio" value="2"> 
						checked='checked' : '' </c:if>
						/&gt; Company does not share with affiliates</label> <label>
						<input id="affs1" <c:if="" name="affiliate" onclick="enable_text(this.checked)" test="${information.affiliate== '3'}" type="radio" value="3"> 
						checked='checked' : '' </c:if>
						/&gt; Company shares consumers' personal information with affiliates</label>
						<p></p>
						<textarea id="fieldaf" class="form-control" disabled="disabled" name="affiliate" placeholder="Please state them." rows="3">Financial companies such as: N/A; non financial companies such as: N/A.</textarea>
					</div>
					<p></p>
				</div>
				<div class="col-md-4">
					<label>Please indicate your sharing practices with nonaffiliated 
					companies.
					<a title="This includes all 3rd party companies, whether they are financial or non-financial companies">
					<span class="glyphicon glyphicon-info-sign"></span></span>
					</a></label>
					<p></p>
					<div class="controlset-pad">
						<label>
						<input id="naffs2" <c:if="" name="naffiliate" test="${information.naffiliate== '1'}" type="radio" value="1"> 
						checked='checked' : '' </c:if>
						/&gt; Company does not share with nonaffiliates 3rd parties</label>
						<label>
						<input id="naffs1" <c:if="" name="naffiliate" test="${information.naffiliate== '2'}" type="radio" value="2"> 
						checked='checked' : '' </c:if>
						/&gt; Company shares with nonaffiliates 3rd parties</label>
						<p></p>
						<textarea id="fieldnaf" class="form-control" disabled="disabled" name="naffiliate" placeholder="Please state the nonaffiliates you share information with" rows="3"></textarea>
					</div>
				</div>
				<div class="col-md-4">
					<label>Is your company enganged in Joint Marketing programs?
					<a title="These are formal agreements with nonaffiliated financial companies to market financial products or services to your customers">
					<span class="glyphicon glyphicon-info-sign"></span></span>
					</a></label>
					<p></p>
					<div class="controlset-pad">
						<label>
						<input id="nonaffiliate1" <c:if="" name="nonaffiliates" test="${information.nonaffiliates== '1'}" type="radio" value="1"> 
						checked='checked' : '' </c:if>
						/&gt; Company does not jointly market</label><p></p>
						<label>
						<input id="nonaffiliate2" <c:if="" name="nonaffiliates" onclick="enable_text(this.checked)" test="${information.nonaffiliates== '2'}" type="radio" value="2"> 
						checked='checked' : '' </c:if>
						/&gt; Company does jointly market with the following partners:</label><p>
						</p>
						<br>
						<textarea id="joint" class="form-control" disabled="disabled" name="nonaffiliates" placeholder="Please state your joint marketing partners" rows="3"></textarea>
					</div>
				</div>
				<br>
				<p></p>
				<div class="row">
					<div class="col-lg-12">
						<br>
						<p></p>
						<br><br><hr><br>
						<p></p>
						<p align="center">
						<a class="page-scroll" href="#institution">&lt;&lt; Previous
						</a>| <a class="page-scroll" href="#other">Continue&gt;&gt;</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Other Section -->
<section id="other">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">OTHER QUESTIONS</h2>
				<h3 class="section-subheading text-muted">This is the final part 
				of the form. Other important information will be addressed.<br>Remember 
				that you can save your work by clicking the
				<a class="page-scroll" href="#save">SAVE</a> button on the upper 
				bar and downloading the XML file.</h3>
			</div>
		</div>
		<!-- Form Continues-->
		<div class="row">
			<div class="col-lg-12">
				<div class="form-group">
					<div class="col-md-6">
						<p><font color="#333333">In order to limit sharing, consumers 
						can communicate with your company by phone, an online form 
						(provided with this tool), and visiting your website. Additionally:</font>
						</p>
						<br><label>Would you like to enable a mail in form alternative?
						<a title="PDF form generated by this tool that customerswould print and mail out to your address">
						<span class="glyphicon glyphicon-info-sign"></span>
						</span></a></label><br><label class="radio-inline">
						<input id="yesmailin" <c:if="" name="mailin" test="${information.mailin== 'Yes'}" type="radio" value="Yes"> 
						checked='checked' : '' </c:if>
						/&gt; Yes</label> <label class="radio-inline">
						<input id="nomailin" <c:if="" name="mailin" test="${information.mailin== 'No'}" type="radio" value="No"> 
						checked='checked' : '' </c:if>
						/&gt; No </label>
						<p></p>
						<br><label>Can they limit sharing through other ways? If 
						so, list them.</label>
						<div class="controlset-pad">
							<label class="radio-inline">
							<input id="limits3" <c:if="" name="others" onclick="enable_text(this.checked)" test="${information.others== 'Yes'}" type="radio" value="Yes"> 
							checked='checked' : '' </c:if>
							/&gt; Yes</label> <label class="radio-inline">
							<input id="limits2" name="others" type="radio" value="No" /> 
							<c:if test="${information.others== 'No'}"> checked='checked' 
							: '' </c:if>
							No</label>
							<p></p>
							<textarea id="limitstext2" class="form-control" disabled="disabled" name="other_name" placeholder="e.g. Visit our branch,
Use our mobile app ABC, etc." rows="2" /></textarea> </div>
						<p></p>
						<br><label>To limit your company's direct marketing contact, 
						should consumers use different methods than the ones stated 
						above? If so, list them.</label> <br>
						<div class="controlset-pad">
							<label class="radio-inline">
							<input id="limits1" <c:if="" name="others2" onclick="enable_text(this.checked)" test="${information.others2== 'Yes'}" type="radio" value="Yes"> 
							checked='checked' : '' </c:if>
							/&gt; Yes</label> <label class="radio-inline">
							<input id="limits0" <c:if="" name="others2" test="${information.others2== 'No'}" type="radio" value="Yes"> 
							checked='checked' : '' </c:if>
							/&gt; No</label>
							<p></p>
							<textarea id="limitstext" class="form-control" disabled="disabled" name="other_name" placeholder="e.g. Visit www.othersite.com,
Call direct line 888-123-8791" rows="2" /></textarea> </div>
						<br>
						<p></p>
						<label>If a customer holds an account or policy jointly 
						with someone else, and opts-out, how are the choices applied?
						<a title="If you do not provide opt-out options to your customers this anwser will be disregarded.">
						<span class="glyphicon glyphicon-info-sign"></span>
						</span></a></label><br>
						<p></p>
						<label>
						<input id="choice" <c:if="" name="choice" test="${information.choice== 'only to your'}" type="radio" value="only to your"> 
						checked='checked' : '' </c:if>
						/&gt; Choices will apply only to that customer, unless otherwise 
						requested</label><label>
						<input id="choice" <c:if="" name="choice" test="${information.choice== 'to everyone'}" type="radio" value="to everyone"> 
						checked='checked' : '' </c:if>
						/&gt; Choices will apply to everyone, unless otherwise requested</label>
						<p></p>
					</div>
					<div class="col-md-6">
						<p><font color="#333333">Other important information: Financial 
						companies can provide additional information to their customers 
						exclusively about State and/or international privacy law 
						and to provide an acknowledgment of receipt form.</font>
						</p>
						<br><label>State laws may give customers additional rights 
						to limit sharing. Does your company operate in States that 
						provide such additional rights?</label><br>
						<div class="controlset-pad">
							<label class="radio-inline">
							<input id="limits5" <c:if="" name="others3" onclick="enable_text(this.checked)" test="${information.others3== 'Yes'}" type="radio" value="Yes"> 
							checked='checked' : '' </c:if>
							/&gt; Yes</label> <label class="radio-inline">
							<input id="limits4" <c:if="" name="others3" test="${information.others3== 'No'}" type="radio" value="No"> 
							checked='checked' : '' </c:if>
							/&gt; No</label>
							<p></p>
							<textarea id="states" class="form-control" disabled="disabled" name="other_name" placeholder="If so, describe state privacy law provisions: e.g.
- Vermont: Under Vermont law, we will not share information we collect about Vermont residents with non affiliate companies..." rows="5" /></textarea>
						</div>
						<br>
						<p></p>
						<div class="controlset-pad">
							<label>Do you want to provide an acknowledgment receipt 
							form? If so, you must provide a URL address to access 
							the receipt form.
							<a title="The acknowledgement of receipt form is intended to be filled out by consumers and sent back to you. It does not need to follow a particular format, and it is optional. If you do provide a link, it can be to an online form or a downloadable document such as a pdf file.">
							<span class="glyphicon glyphicon-info-sign"></span>
							</span></a></label><label class="radio-inline">
							<input id="limits7" <c:if="" name="others7" onclick="enable_text(this.checked)" test="${information.others7== 'Yes'}" type="radio" value="Yes"> 
							checked='checked' : '' </c:if>
							/&gt; Yes</label> <label class="radio-inline">
							<input id="limits6" <c:if="" name="others7" test="${information.others7== 'No'}" type="radio" value="No"> 
							checked='checked' : '' </c:if>
							/&gt; No</label>
							<p></p>
							<input id="receipt" class="form-control" disabled="disabled" name="other_name" type="url" value="http://" />
						</div>
						<br><br><label>After how many days from sending this notice 
						do you begin sharing information of new customers?
						<a title="Federal law requires a minimum time of 30 days">
						<span class="glyphicon glyphicon-info-sign"></span>
						</span></a></label>
						<div class="input-group">
							<input id="days" aria-describedby="basic-addon2" class="form-control" min="30" required="required" type="number" value="30">
							<span id="basic-addon2" class="input-group-addon">days</span>
						</div>
					</div>
					<br></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">
				<br><br><hr><br><br>
				<p align="center"><a class="page-scroll" href="#privacy">&lt;&lt; 
				Previous </a>| <a class="page-scroll" href="#save">Continue&gt;&gt;</a></p>
			</div>
		</div>
	</div>
</section>
<!-- Save Section -->
<section id="save" class="bg-light-gray">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h2 class="section-heading">Preview &amp; Download</h2>
				<p><font color="#333333">If you have completed the form you can 
				generate the notice and preview it.<br>If you wish to save your 
				work and continue later download the XML file.</font></p>
				<br><br></div>
			<div class="col-md-12 text-center">
				<input id="preview" class="btn btn-xl" type="button" value="Generate Notice" /><br>
				<br><br></div>
			<div class="row">
				<div class="col-sm-3">
				</div>
				<div class="col-sm-6 text-left">
					<div class="list-group">
						<a id="demo" class="portfolio-link btn btn-lg list-group-item disabled" data-toggle="modal" href="#portfolioModal1">
						<span class="glyphicon glyphicon-eye-open"></span>Preview</a>
						<p class="list-group-item"><font color="orange">
						<span class="glyphicon glyphicon-pencil"></span><b>Changes:</font></b>
						<font color="#333333">Use top bar to navigate through the 
						form and re-submit notice.</font></p>
						<p class="list-group-item"><font color="green">
						<span class="glyphicon glyphicon-ok"></span><b>Ready:</font></b>
						<font color="#333333">Use the options below to download 
						the Notice.</font></p>
					</div>
				</div>
				<div class="col-sm-3">
				</div>
			</div>
			<hr></div>
		<div class="row">
			<div class="col-md-6 text-center">
				<h4>XML FILE</h4>
				To save your work and continue later, you can download an .XML file 
				using the button below. You can import that file into this tool 
				in the future to resume your work or make changes in the Notice.
				<br><br>
				<button class="btn btn-lg" name="action" type="submit" value="outputXML">
				Download XML File</button><br><br></div>
			<div class="col-md-6 text-center">
				<h4>STANDALONE WEBPAGE</h4>
				Download the fully functional HTML Notice, including all related 
				files. Please follow the instructions below.<br><br>
				<button class="page-scroll btn btn-lg" data-target="#downloadx" data-toggle="collapse">
				Download Full Site <span class="glyphicon glyphicon-save">
				</span></button>
				<div id="downloadx" class="collapse">
					<table class="table text-left">
						<tr>
							<td>1 </td>
							<td>Click on PREVIEW. Then click on DOWNLOAD NOTICE.</td>
						</tr>
						<tr>
							<td>2 </td>
							<td>If you have opt out option(s) enabled, click on 
							SUBMIT YOUR SHARING PREFERENCES button on the notice. 
							Then click on DOWNLOAD OPT OUT.</td>
						</tr>
						<tr>
							<td>3 </td>
							<td>If you have Mail-In option enabled, click on MAIL 
							IN FORM link (Inside the Limit us tab). Then click on 
							DOWNLOAD MAIL IN.</td>
						</tr>
						<tr>
							<td>4 </td>
							<td>Close Preview View, and click
							<form action="download.do" method="post">
								<button class="btn" name="action" type="submit" value="downloadFull">
								Download External Files</button>
							</form> 
							</td>
						</tr>
						<tr>
							<td>5 </td>
							<td>Install: Put the notice.html, optout.html and mailin.html 
							files inside the folder downloaded (Data Zip). Notice.html 
							is the home page of your notice.</br></td>
						</tr>
						<tr>
							<td colspan="2" align="center">For More Detailed Information you can consult our <a href="guide.html" target="_blank">Detailed Guide</a> 
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		</form>
	</div>
</section>
<footer>
	<div class="container">
		<div class="row">
			<div>
				<span class="copyright">Copyright &copy; Carnegie Mellon University 
				- MSIT eBiz Technology 2015 - Team 1 <br>For Educational Purposes 
				Only</span> </div>
		</div>
	</div>
</footer>
<!-- Screen Modals -->
<!-- Use the modal below to preview the form in a popup -->
<!-- Screen Modal 1 -->
<div id="portfolioModal1" aria-hidden="true" class="portfolio-modal modal fade" role="dialog" tabindex="-1">
	<div class="modal-content">
		<div class="close-modal" data-dismiss="modal">
			<div class="lr">
				<div class="rl">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="modal-body">
						<!-- Screen Details Go Here -->This is a preview of your 
						Customer Privacy notice.<br><br>
						<iframe id="notice" class="embed-responsive iframe" src="Output/notice.html">
						<p>Your browser does not support iframes.</p>              						 						 						
						</iframe></div>
					<iframe id="optoutframe" src="Output/optout.html" style="display: none">
					</iframe>
					<iframe id="plainframe" src="Output/noticePlain.html" style="display: none">
					</iframe></div>
			</div>
		</div>
	</div>
</div>
<!-- jQuery -->
<script src="external/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="external/js/bootstrap.min.js"></script>
<!-- Plugin JavaScript -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="external/js/classie.js"></script>
<script src="external/js/cbpAnimatedHeader.js"></script>
<!-- Form JavaScript -->
<script src="external/js/jqBootstrapValidation.js"></script>
<!-- Custom Theme JavaScript -->
<script src="external/js/agency.js"></script>

</body>

</html>
