<%@ page import="databeans.Information"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Privacy Policy Generator for the US Federal Trade Commission">
<meta name="author" content="Carnegie Mellon University, eBiz Program 2015. Team 1">
<link rel="shortcut icon" href="https://www.ftc.gov/sites/default/files/favicon_4.ico" type="image/vnd.microsoft.icon" />
<title>FTC - Privacy Policy Generator</title>

<!-- Bootstrap Core CSS -->
<link href="external/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="external/css/agency.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="external/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->

<script type='text/javascript' src='external/js/jquery-2.1.4.js'></script>
<script language="JavaScript">
<!--


//-->
</script>
<script type='text/javascript'>//<![CDATA[ 
$(window).load(function(){
$(function(){
    $("#no, #yes").change(function(){
        $("#optoutyes, #optoutno").val("").attr("disabled",true);
        if($("#yes").is(":checked")){
            $("#optoutyes").removeAttr("disabled");
            $("#optoutno").removeAttr("disabled");
        }
        else if($("#no").is(":checked")){
			$("#optoutyes, #optoutno").val("").attr("checked",false);
            $("#optoutyes, #optoutno").val("").attr("disabled",true);  
        }
    });


   $("#no3, #yes3").change(function(){
        $("#optoutyes3, #optoutno3").val("").attr("disabled",true);
        if($("#yes3").is(":checked")){
            $("#optoutyes3").removeAttr("disabled");
            $("#optoutno3").removeAttr("disabled");
        }
        else if($("#no3").is(":checked")){
			$("#optoutyes3, #optoutno3").val("").attr("checked",false);
            $("#optoutyes3, #optoutno3").val("").attr("disabled",true);  
        }
    });

   $("#no4, #yes4").change(function(){
        $("#optoutyes4, #optoutno4").val("").attr("disabled",true);
        if($("#yes4").is(":checked")){
            $("#optoutyes4").removeAttr("disabled");
            $("#optoutno4").removeAttr("disabled");
        }
        else if($("#no4").is(":checked")){
			$("#optoutyes4, #optoutno4").val("").attr("checked",false);
            $("#optoutyes4, #optoutno4").val("").attr("disabled",true);  
        }
    });

   $("#no5, #yes5").change(function(){
        $("#optoutyes5, #optoutno5").val("").attr("disabled",true);
        if($("#yes5").is(":checked")){
            $("#optoutyes5").removeAttr("disabled");
            $("#optoutno5").removeAttr("disabled");
        }
        else if($("#no5").is(":checked")){
			$("#optoutyes5").val("").attr("checked",true);
            $("#optoutyes5").val("").attr("disabled",true);  
        }
    });

   $("#no6, #yes6, #na6").change(function(){
        $("#optoutyes6").val("").attr("disabled",true);
        if($("#yes6").is(":checked")){
            $("#optoutyes6").removeAttr("disabled");
        }
        else if($("#no6, #na6").is(":checked")){
			$("#optoutyes6").val("").attr("checked",true);
            $("#optoutyes6, #optoutno6").val("").attr("disabled",true);  
        }
    });
	
	   $("#no7, #yes7").change(function(){
        $("#optoutyes7").val("").attr("disabled",true);
        if($("#yes7").is(":checked")){
            $("#optoutyes7").removeAttr("disabled");
        }
        else if($("#no7").is(":checked")){
			$("#optoutyes7").val("").attr("checked",true);
            $("#optoutyes7").val("").attr("disabled",true);  
        }
    });

	   $("#affiliate3, #affiliate1, #affiliate2").change(function(){
        $("#nonfinancial").val("").attr("disabled",true);
        if($("##affiliate3").is(":checked")){
            $("#nonfinancial").removeAttr("disabled");
        }
        else if($("#affiliate1, #affiliate2").is(":checked")){
	            $("#nonfinancial").val("").attr("disabled",true);  
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
for(var i=0; i < document.f1.whatinfo.length; i++){
if(document.f1.how[i].checked){
total =total +1;}
if(total > 5){
alert("You can only select 5 options") 
document.f1.how[j].checked = false ;
return false;
}
}
} </script>
<script type='text/javascript'>//<![CDATA[ 
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

});//]]>  

</script>
</head>

<body id="page-top" class="index" onload=enable_text(false);>

<body id="page-top" class="index" onload=enable_text(false);>

<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header page-scroll">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="#page-top"><img src="external/img/logo.png"> </a> </div>
    <br>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li class="hidden"> <a href="#page-top"></a> </li>
        <li> <a class="page-scroll" href="#institution">Institution >></a> </li>
        <li> <a class="page-scroll" href="#privacy">Privacy >></a> </li>
        <li> <a class="page-scroll" href="#other">Other >></a> </li>
        <li> <a class="page-scroll" href="#save">Save</a> </li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<!-- Header -->
<header>
  <div class="container">
    <div class="intro-text"><br>
      <br>
      <div class="intro-heading">U.S. Consumer Privacy Notice Generator</div>
      <div class="row">
        <div class="col-md-4">
          <p><font color="#d3a401"><b>What is the CPN Generator?</b></font></p>
          <p align="left"> This is a tool developed by the Federal Trade Commission (FTC) for Financial Institutions to generate a standarized U.S. Consumer Privacy Notices (CPN). <br>
            <br>
            It is important for all institutions operating in the United States to provide a clear and concise notice to consumers. Furthermore, by generating and implementing this notice on the institution's website, the institution will receive the benefit of a "Safe Harbor" in regards to consumer privacy auditing by the FTC.</p>
        </div>
        <div class="col-md-4">
          <p><font color="#d3a401"><b>What does this tool do?</b></font></p>
          <p align="left"> This tool generales a Consumer Privacy Notice based on your company's privacy policy and federal regulations. You wil be able to downlad the following files: </p>
          <br>
          <table class="table">
            <tr valign="top">
              <td align="left"><span class="glyphicon glyphicon-download-alt"></span></td>
              <td>&nbsp; &nbsp;</td>
              <td align="left"> A standalone HTML web page that can be added to your company's website.</td>
            </tr>
            <tr valign="top">
              <td align="left"><span class="glyphicon glyphicon-file"></span>
              <td></td>
                </td>
              <td align="left"> A computer readable XML file that can be uploaded into this tool for future modifications.</td>
            </tr>
          </table>
        </div>
        <div class="col-md-4">
          <p><font color="#d3a401"><b>How to use the tool?</b></font> </p>
          <p align="left"> To generate a new notice click on the <a href="#institution" class="page-scroll">Create New CPN</a> button below and fill out the form according to your institution's privacy policy. As you advance, the navigation bar will show your progress. When you see this icon <a title="Hover on the icon for 2 seconds and the info tip will appear"><span class="glyphicon glyphicon-info-sign"></span></a> you can hover on it to read more details.<br>
            <br>
            You can save your work by downloading an XLM file at any time. Simply click <a href="#save" class="page-scroll">Save</a> on the navigation bar a the end of the page and then choose the Download XML option. To resume your work, you can import the XML file and the form will be updated with the values saved. Always remember to download the XML file to save your work. </p>
          <br>
          <br>
        </div>
      </div>
      <div> <a href="#institution" class="page-scroll btn btn-xl">Create New CPN</a> &nbsp; &nbsp; <a href="InputXML.do" class="page-scroll btn btn-xl">Import XML File</a> </div>
    </div>
  </div>
</header>


<!-- First Section -->
<section id="institution">
<div class="container">
<div class="row">
  <div class="col-lg-12 text-center">
    <h2 class="section-heading">Your Institution</h2>
    <h3 class="section-subheading text-muted">sIn this section you will provide information to identify and contact your company.</h3>
  </div>
</div>


<!-- Form Initiation-->
<div class="row">
<div class="col-lg-12">
<form name="f1" id="policyform" method="post" action="choose.do">
<div class="col-md-6">
    <div class="form-group">
      <h4>Identify the Company</h4>
      <label>Name of the company providing the notice*</label>
      
      <input type="text" class="form-control" placeholder="e.g. American Bank" id="name" name="company" value="${information.company}" required>
      </p>
      <br>
      <label>Legal entity name*</label>
      <input type="text" class="form-control" placeholder="e.g. American Bank Corporation" id="legalname" name="entity" value="${information.entity}" required>
      </p>
      <br>
      <label>If any, list all other legal entities affiliated with your company that will be providing this notice <a title="Affiliate companies are related by common ownership or control. They can be financial or nonfinancial companies"><span class="glyphicon glyphicon-info-sign"></span></a></label>
      <textarea rows="4" class="form-control" placeholder="e.g. American Advisors LLC, AmericanForex" id="alias" name="entities" >${information.entities}</textarea>
      </p>
      <br>
   <label>Financial Institution Primary Business*</label></p>
                <label class="radio-inline">
                <input type="radio" name="joint" id="joint1"  value="account"
                <c:if test="${information.joint== 'account'}"> checked='checked' : '' </c:if>
              
                		/> Banking</label>
                		
                		
                <label class="radio-inline">
                  <input type="radio" name="joint" id="joint2" value="policy"
 					<c:if test="${information.joint== 'policy'}"> checked='checked' : '' </c:if>
                  /> Insurance</label>     
                
                  
    </div>
  </div>
  <div class="form-group">
    <div class="col-md-6">
      <h4>Contact Information</h4>
      <label>Customer service phone number*:</label>
      <input type="tel" class="form-control" placeholder="e.g. 1-800-123-4567*" id="phone" name="phone" value="${information.phone}" required>
      </p>
      <label>Email for privacy matters*:</label>
      <input type="email" class="form-control" placeholder="e.g. privacy@americanbank.com*" id="email" name="email" value="${information.email}" required>
      </p>
      <label>Company's website*:</label>
      <input type="url" class="form-control" placeholder="e.g. www.americanbank.com" id="web" name="web" value="${information.web}" required>
      </p>
      <label>Mailing address*:</label>
      <textarea rows="2" class="form-control" placeholder="Street Address*" id="alias" name="address"  required>${information.address}</textarea>
      </p>
    </div>
    <div class="col-md-2">
      <input type="text" class="form-control" placeholder="City*" id="l3" name="city" value="${information.city}" required>
      </p>
    </div>
    <div class="col-md-2">
      <input type="number" class="form-control" placeholder="Zipcode*" id="zip" name="zipcode" value="${information.zipcode}" required>
      </p>
    </div>
    <div class="col-md-2">
      <select class="form-control" required name="state" >
        <option value="AL" selected>Alabama</option>
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
      </select>
    </div>
    </p>
  </div>
  </div>
  </div>
  <br>
  <br>
  <br>
  <hr>
  <p align="center"><a class="page-scroll" href="#privacy">Continue>></a></p>
  </div>
  </section>
  
  <!-- Privacy -->
  <section id="privacy" class="bg-light-gray">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading">Privacy Policy</h2>
          <h3 class="section-subheading text-muted">What, when, and how you collect and share consumer's information. </h3>
        </div>
      </div>
      
      <!-- Form Continues-->
      <div class="row">
        <div class="col-lg-12">
          <div class="form-group">
            <h5>What Information do you collect?</h5>
            <div class="col-lg-10">
              <p><font color="#333333">Personally identifiable information (PII), as used in US privacy law is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. The following list identifies the types of personal information that financial companies collect and share.</font><br>
                <br>
              </p>
              <label>Please select <b>FIVE</b> types of information that your company mostly collects and shares from customers, regardless of the purpose.</label>
              </p>
              <div class="col-sm-6 col-md-4">
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	0	)" value="	Social Security Number	" checked disabled>
                  Social Security Number <a title="Social Security Number is selected by default."><span class="glyphicon glyphicon-info-sign"></span></a></label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	1	)" value="	Account balances	">
                  Account balances </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	2	)" value="	Account transactions	">
                  Account transactions </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	3	)" value="	Assets	">
                  Assets </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	4	)" value="	Checking account information	">
                  Checking account information </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	5	)" value="	Contact Information	">
                  Contact Information </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	6	)" value="	Credit card or other debt	">
                  Credit card or other debt </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	7	)" value="	Credit history	">
                  Credit history </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	8	)" value="	Credit scores	">
                  Credit scores </label>
                <br>
              </div>
              <div class="col-sm-6 col-md-4">
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	9	)" value="	Employment information	">
                  Employment information </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	10	)" value="	Income information	">
                  Income information </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	11	)" value="	Insurance claim history	">
                  Insurance claim history </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	12	)" value="	Insurance scores	">
                  Insurance scores </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	13	)" value="	Investment experiences	">
                  Investment experiences </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	14	)" value="	Medical expenses	">
                  Medical expenses </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	15	)" value="	Medical-related debts	">
                  Medical-related debts </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	16	)" value="	Mortgage rates and payments	">
                  Mortgage rates and payments </label>
                <br>
              </div>
              <div class="col-sm-6 col-md-4">
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	17	)" value="	Overdue history	">
                  Overdue history </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	18	)" value="	Payments history	">
                  Payments history </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	19	)" value="	Profit/loss history	">
                  Profit/loss history </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	20	)" value="	Purchase history	">
                  Purchase history </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	21	)" value="	Retirement assets	">
                  Retirement assets </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	22	)" value="	Risk tolerance	">
                  Risk tolerance </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	23	)" value="	Transactions history	">
                  Transactions history </label>
                <br>
                <label>
                  <input type="checkbox" name="whatinfo" onclick="chkcontrol(	24	)" value="	Wire transfer instructions	">
                  Wire transfer instructions </label>
                <br>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <hr>
    <div class="col-md-11">
          <div class="form-group"> <br>
            <br>
            </p>
            <h5>For what does your company collect that information?</h5>
            <p><font color="#333333"> The following table sumarizes the reasons why companies may share consumer's information. Each reason correlates to a specific legal provision of the US Privacy Law. In the middle and right columns please select a response that accurately reflects your information sharing policies and practices with respect to the reason listed on the left.</font><br>
              <br>
            </p>
            <table class="table table-hover table-striped">
              <thead>
                <tr>
                  <th>Reasons to share personal information</th>
                  <th>Does your company share information for this reason?</th>
                  <th>Can your customers opt-out for this? <a title="If you do not share this type of information this option will be disabled"><span class="glyphicon glyphicon-info-sign"></span></a></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>For everyday business purposes <a title="Consumers do not have the right to limit this use."><span class="glyphicon glyphicon-info-sign"></span></span></a></td>
                  <td><div class="form-group">
                    <label class="radio-inline">
                      <input type="radio" name="sharing1" value="Yes" checked/>
                      Yes </label></td>
                  <td><label class="radio-inline">
                      <input type="radio" name="optout1" value="Yes" checked/>
                      No </label></td>
                </tr>
                <tr>
                  <td>Sharing with service providers for your company's own marketing</td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" name="sharing2" value="Yes" id="yes" />
                        Yes </label>
                      <label class="radio-inline">
                        <input type="radio" name="sharing2" value="No" id="no"/>
                        No </label>
                    </div></td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" id="optoutyes" name="optout2" disabled />
                        Yes </label>
                      <label class="radio-inline">
                        <input type="radio" id="optoutno" name="optout2" disabled />
                        No</label>
                    </div></td>
                </tr>
                <tr>
                  <td>For joint marketing with other financial companies</td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" name="sharing3" value="Yes" id="yes3" />
                        Yes </label>
                      <label class="radio-inline">
                        <input type="radio" name="sharing3" value="No" id="no3"/>
                        No </label>
                    </div></td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" id="optoutyes3" name="optout3" disabled />
                        Yes </label>
                      <label class="radio-inline">
                        <input type="radio" id="optoutno3" name="optout3" disabled />
                        No</label>
                    </div></td>
                </tr>
                <tr>
                  <td>For your affiliates’ everyday business purposes | Transactions and experiences</td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" name="sharing4" value="Yes" id="yes4" />
                        Yes </label>
                      <label class="radio-inline">
                        <input type="radio" name="sharing4" value="No" id="no4"/>
                        No </label>
                    </div></td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" id="optoutyes4" name="optout4" disabled />
                        Yes </label>
                      <label class="radio-inline">
                        <input type="radio" id="optoutno4" name="optout4" disabled />
                        No</label>
                    </div></td>
                </tr>
                <tr>
                  <td>For your affiliates’ everyday business purposes | Creditworthdiness <a title="Law grants consumers the right to opt-out in this case"><span class="glyphicon glyphicon-info-sign"></span></span></a></td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" name="sharing5" value="Yes" id="yes5" />
                        Yes </label>
                      <label class="radio-inline">
                        <input type="radio" name="sharing5" value="No" id="no5"/>
                        No </label>
                    </div></td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" id="optoutyes5" name="optout5" checked required/>
                        Yes </label>
                    </div></td>
                </tr>
                <tr>
                  <td>For your affiliates to market your customers. <a title="Consumers are granted the right to opt out indifinitely in this case. If you select 'No' or 'Does not aply' this reason will not be included in the notice. For details regarding a separate notice refer to §624 FRCA."><span class="glyphicon glyphicon-info-sign"></span></span></a> <br>
                    <br>
                    You may choose 'N/A' (Not applicable) if:
                    <ul>
                      <li>Your company does not have affiliates</li>
                      <li>Affiliates do not use PII in a manner that requires opt-out</li>
                      <li>Your company provides an affiliate marketing notice separately compliant with FCRA</li>
                    </ul></td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" name="sharing6" value="Yes" id="yes6" />
                        Yes </label>
                      <label class="radio-inline">
                        <input type="radio" name="sharing6" value="No" id="no6"/>
                        No </label>
                      <label class="radio-inline">
                        <input type="radio" name="sharing6" value="NA" id="na6"/>
                        N/A </label>
                    </div></td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" id="optoutyes6" name="optout6" disabled checked/>
                        Yes </label>
                    </div></td>
                </tr>
                <tr>
                  <td>For nonaffiliates to market your customers. <a title="Consumers are granted the right to opt out."><span class="glyphicon glyphicon-info-sign"></span></span></a></td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" name="sharing7" value="Yes" id="yes7" />
                        Yes </label>
                      <label class="radio-inline">
                        <input type="radio" name="sharing7" value="No" id="no7"/>
                        No </label>
                    </div></td>
                  <td><div class="form-group">
                      <label class="radio-inline">
                        <input type="radio" id="optoutyes7" name="optout7" disabled checked />
                        Yes </label>
                    </div></td>
                </tr>
              </tbody>
            </table>
            </p>
            <br>
            <hr>
            <br>
            <h5>How do you collect and protect consumers' personal information?</h5>
            <p><font color="#333333"> To protect personal information from unauthorized access and use, federal law requires computer safeguards and secured files and buildings.</font> </p>
            <label>If you take other measures, please list them below</span></span></a></label>
            <br>
            <textarea rows="2" name="measures" class="form-control" id="measures" placeholder="Up to 30 words" maxlength="200"/></textarea>
            <br>
            </p>
            <label>How does your company collect consumers' personal information? You must choose any <b>FIVE</b> options from the following:</span></span></a></label>
            <br>
            </p>
            <div class="col-sm-6 col-md-4">
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	0	)" value="	open an account	">
                Open an account </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	1	)" value="	deposit money	">
                Deposit money </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	2	)" value="	pay your bills	">
                Pay your bills </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	3	)" value="	apply for a loan	">
                Apply for a loan </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	4	)" value="	use your credit or debit card	">
                Use your credit or debit card </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	5	)" value="	seek financial or tax advice	">
                Seek financial or tax advice </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	6	)" value="	apply for insurance	">
                Apply for insurance </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	7	)" value="	pay insurance premiums	">
                Pay insurance premiums </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	8	)" value="	file an insurance claim	">
                File an insurance claim </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	9	)" value="	seek advice about your investments	">
                Seek advice about your investments </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	10	)" value="	buy securities from us	">
                Buy securities from us </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	11	)" value="	sell securities to us	">
                Sell securities to us </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	12	)" value="	direct us to buy securities	">
                Direct us to buy securities </label>
              <br>
            </div>
            <div class="col-sm-6 col-md-4">
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	13	)" value="	direct us to sell your securities	">
                Direct us to sell your securities </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	14	)" value="	make deposits or withdrawals from your account	">
                Make deposits or withdrawals </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	15	)" value="	enter into an investment advisory contract	">
                Enter into invmt advisory contract </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	16	)" value="	give us your income information	">
                Give us your income information </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	17	)" value="	provide employment information	">
                Provide employment information </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	18	)" value="	give us your employment history	">
                Give us your employment history </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	19	)" value="	tell us about your investment or retirement portfolio	">
                Tell us about invesment or retirement portfolio </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	20	)" value="	tell us about your investment or retirement earnings	">
                Tell us about investment or retirement earnings </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	21	)" value="	apply for financing	">
                Apply for financing </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	22	)" value="	apply for a lease	">
                Apply for a lease </label>
              <br>
            </div>
            <div class="col-sm-6 col-md-4">
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	23	)" value="	provide account information	">
                Provide account information </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	24	)" value="	give us your contact information	">
                Give us your contact information </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	25	)" value="	pay us by check	">
                Pay us by check </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	26	)" value="	give us your wage statements	">
                Give us your wage statements </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	27	)" value="	provide your mortgage information	">
                Provide your mortgage information </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	28	)" value="	make a wire transfer	">
                Make a wire transfer </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	29	)" value="	tell us who receives the money	">
                Tell us who receives the money </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	30	)" value="	tell us where to send the money	">
                Tell us where to send the money </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	31	)" value="	show your government-issued ID	">
                Show your government-issued id </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	32	)" value="	show your driver’s license	">
                Show your driver’s license </label>
              <br>
              <label>
                <input type="checkbox" name="how" onclick="chkcontrol2(	33	)" value="	order a commodity futures or option trade	">
                Order a commodity futures or option trade </label>
              <br>
              <br>
            </div>
          </div>
<div class="col-lg-10">
</p><br><br>
            <label>Additional forms of collection: please select the options that applies to your company. <a title="If you collect information from credit bureaus, affiliates and other companies, select the second option"><span class="glyphicon glyphicon-info-sign"></span></span></a></label> 
            </p>
            <div class="controlset-pad">
            <label>
              <input type="radio" name="collection" value="1" id="collection1" checked/>
              We collect personal information from affiliates and/or credit bureaus</label></p>
            <label>
              <input type="radio" name="collection" value="2" id="collection2"/>
              We collect personal information from other companies, different than affiliates and/or credit bureaus</label></p>
            <label>
              <input type="radio" name="collection" value="3" id="collection3"/>
              We do not collect any personal information from affiliates, credit bureaus, or other companies </label>
              </div>
      </div>
          <br>
          <br>
          <br>
        </div>
        </div>
 <div class="row">
 <hr></p><br> 
 <h5>Information Sharing with Affiliates and Nonaffiliates</h5>
            <p><font color="#333333"> Afiliated and nonaffiliated companies can be financial and nonfinancial companies. <a title="An affiliate company is defined as an entity related by common ownership or control"><span class="glyphicon glyphicon-info-sign"></span></span></a>
</font> </p><br>
<div class="col-md-4">
 <label>Please indicate your sharing practices with afiliate companies:</label></p>
 <div class="controlset-pad">
<label><input type="radio" name="affiliates" value="1" id="affiliate1"/>Your company does not have affiliates</label></p>
<label><input type="radio" name="affiliates" value="2" id="affiliate2"/>
Your company has affiliates, but does not share consumers' personal information with them</label></p>
<label><input type="radio" name="affiliates" value="3" id="affiliate3" onclick="enable_text(this.checked)" checked/>
 Your company shares consumers' personal information with affiliates</label></p><br>
<textarea rows="3" class="form-control" id="nonfinancial" name="affiliates" placeholder="Please provide an illustrative list of your non financial affiliates"></textarea>
 </div> 
 </div>  
 
 <div class="col-md-4">
 <label>Please indicate your sharing practices with nonaffiliate companies, whether they are financial or nonfinancial companies:</label></p>
<div class="controlset-pad">
            <label>
              <input type="radio" name="nonaffiliates" value="1" id="nonaffiliate1" checked/>
              Your company does not share consumers' personal information with nonaffiliates.</label></p>
            <label>
              <input type="radio" name="nonaffiliates" value="2" id="nonaffiliate2" onclick="enable_text(this.checked)"/>
              Your company shares consumers' personal information with nonaffiliates.</label></p><br>
 
       <textarea rows="3" class="form-control" name="nonaffiliates" id="nonlist" placeholder="Please provide an ilustrative list of the nonaffiliate companies you share information with" ></textarea></p><br>
 </div>
 </div>
  <div class="col-md-4">
 <label> Please indicate if your company has a Joint Agreement with nonaffiliated financial companies to market financial products or services to your customers
:</label></p>
<div class="controlset-pad">
            <label>
              <input type="radio" name="nonaffiliates" value="1" id="nonaffiliate1" checked/>
              Your company does not have joint agreements.</label></p>
            <label>
              <input type="radio" name="nonaffiliates" value="2" id="nonaffiliate2" onclick="enable_text(this.checked)"/>
              Your company shares consumers' personal information for joint agreements.</label></p><br>
 
       <textarea rows="3" class="form-control" name="nonaffiliates" id="nonlist" placeholder="Please provide an ilustrative list of the nonaffiliate companies you share information with" ></textarea></p><br>
 </div>
 </div>
 
 <br></p> 
<br><br>
<hr>
<br></p>      
      <p align="center"><a class="page-scroll" href="#institution"> << Previous </a> <a class="page-scroll" href="#other"> Continue>></a></p>
    </div>
  </section>
  
  <!-- Other Section -->
  <section id="other">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading">OTHER QUESTIONS</h2>
          <h3 class="section-subheading text-muted">This is the final part of the form, additional questions addressing other impportant information.</br>Remember that you can save your work by clicking the "SAVE" button on the upper bar and dowloading the XML file.</h3>
        </div>
      </div>
      
      <!-- Form Continues-->
      <div class="row">
        <div class="col-lg-12">
          <div class="col-md-6">
            <div class="form-group">
              <p><font color="#333333"> In order to limit sharing, consumers can communicate with your company by phone, an online form (provided with this tool), and visiting your website.</font> </p>
              <label>Would you like to enable a mail in form alternative? <a title="PDF form generated by this tool that customerswould print and mail out to your address"><span class="glyphicon glyphicon-info-sign"></span></span></a></label>
              <br>
              <label class="radio-inline">
                <input type="radio" name="mailin" value="Yes" id="yesmailin"/>
                Yes</label>
              <label class="radio-inline">
                <input type="radio" name="mailin" value="No" id="nomailin" checked/>
                No </label>
              </p>
              <br>
              <label>Can they limit sharing through other ways? If so, list them.</label>
              <div class="controlset-pad">
                <label class="radio-inline">
                  <input type="radio" name="others" id="limits3" onclick="enable_text(this.checked)" />
                  Yes</label>
                <label class="radio-inline">
                  <input type="radio" name="others" id="limits2" checked/>
                  No</label>
                </p>
                <textarea rows="3" name="other_name" class="form-control" id="limitstext2" disabled="disabled" placeholder="e.g. Visit our branch,
Use our mobile app ABC, etc."/></textarea>
              </div>
              </p>
            </div>
            <label>To limit your company's direct marketing contact, should consumers use different methods than the ones stated above? If so, list them.</label>
            <br>
            <div class="controlset-pad">
              <label class="radio-inline">
                <input type="radio" name="others2" id="limits1" onclick="enable_text(this.checked)" />
                Yes</label>
              <label class="radio-inline">
                <input type="radio" name="others2" id="limits0" checked/>
                No</label>
              </p>
              <textarea rows="3" name="other_name" class="form-control" id="limitstext" disabled="disabled" placeholder="e.g. Visit www.othersite.com,
Call direct line 888-123-8791"/></textarea>
            </div><br>
            </p>
             <label>After how many days from sending this notice do you begin sharing information of new customers? <a title="Federal law requires a minimum time of 30 days"><span class="glyphicon glyphicon-info-sign"></span></span></a></label>
          <input type="number" min="30" value="30" name="days" id="days" checked/> 
            
          </div>
          
          
          
          <div class="col-md-6">
<label>State laws may give customers additional rights to limit sharing. Does your company operate in States that provide such additional rights?</label><br>
<div class="controlset-pad">
              <label class="radio-inline">
                <input type="radio" name="others3" id="limits5" onclick="enable_text(this.checked)" />
                Yes</label>
              <label class="radio-inline">
                <input type="radio" name="others3" id="limits4" checked/>
                No</label>
              </p>
              <textarea rows="5" placeholder="If so, describe state privacy law provisions: e.g.
- Vermont: Under Vermont law, we will not share information we collect about Vermont residents with non affiliate companies..." name="other_name" class="form-control" id="states" disabled="disabled" /></textarea>
            </div>

            <br>

          </div>
        </div>
      </div>
      <br>
      <br>
      <p align="center"><a class="page-scroll" href="#save">Continue>></a></p>
    </div>
  </section>
  
  <!-- Save Section -->
  <section id="save" class="bg-light-gray">
  <div class="container">
  <div class="row">
    <div class="col-md-12 text-center">
      <h2 class="section-heading">Preview & Download</h2>
      <p>If you have completed the form you can generate the notice and preview it.<br>
        If you wish to save your work and continue later download the XML file. </p>
      <br>
      <br>
    </div>
    
    <!-- Reloads the iframe --> 
    <script>
function myFunction() {
document.getElementById('notice').contentWindow.location.reload(true);
}
</script>
    <div class="col-md-12 text-center">
      <input type="submit" onclick="myFunction()" class="btn btn-xl" value="Generate Notice">
      </input>
      <br>
      <br>
      <br>
    </div>
    <div class="row">
      <div class="col-sm-3"> </div>
      <div class="col-sm-6 text-left">
        <div class="list-group"> <a href="#portfolioModal1" class="portfolio-link btn btn-lg list-group-item disabled" data-toggle="modal"><span class="glyphicon glyphicon-eye-open"></span> Preview</a>
          <p class="list-group-item"> <font color="orange"><span class="glyphicon glyphicon-pencil"></span><b> Changes:</font></b> Use top bar to navigate through the form and re-submit notice.</p>
          <p class="list-group-item"> <font color="green"> <span class="glyphicon glyphicon-ok"></span><b> Ready:</font></b> Use the options below to download the Notice.</p>
        </div>
      </div>
      <div class="col-sm-3"> </div>
    </div>
    <hr>
  </div>
  <div class="row">
    <div class="col-md-4 text-center">
      <h4>XML ONLY</h4>
      To save your work and continue later, you can download an .XML file using the button below. You can import that file into this tool in the future to resume your work or make changes in the Notice. <br>
      <br>
      <br>
      <button type="submit" class="btn btn-lg" name="action" value="outputXML">Download XML File</button>
      <br>
      <br>
    </div>
    <div class="col-md-4 text-center">
      <h4>STANDALONE WEBPAGE</h4>
      This option downloads a Zip Folder containing a fully formatted HTML version of the Notice, including style sheets, plus the XML File. This version is the simplest way to incorporate the policy to you institution's website.<br>
      <br>
      <form method="post" action="download.do">
      <button type="submit" class="btn btn-lg" name="action" value="downloadFull" >Download Full Web Page</button>
      </form>
      <br>
      <br>
    </div>
    <div class="col-md-4 text-center">
      <h4>PLAIN TEXT WEBPAGE</h4>
      This option downloads a Zip Folder containing a plain HTML version of the Notice without any formatting, plus the XML File. It is recommended if you want to embed the notice in your institution's website with your own formatting. <br>
      <br>
      <form method="post" action="downloadHtml.do">
      <button type="submit" class="btn btn-lg" name="action" value="downloadHtml">Download Plain Web Page</button>
      </form>
      <br>
      <br>
    </div>
  </div>
</form>
</div>
</section>
<footer>
  <div class="container">
    <div class="row">
      <div> <span class="copyright">Copyright &copy; Carnegie Mellon University - MSIT eBiz Technology 2015 - Team 1 <br>
        For Educational Purposes Only</span> </div>
    </div>
  </div>
</footer>

<!-- Screen Modals --> 
<!-- Use the modal below to preview the form in a popup --> 

<!-- Screen Modal 1 -->
<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-content">
    <div class="close-modal" data-dismiss="modal">
      <div class="lr">
        <div class="rl"> </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="modal-body"> 
            <!-- Screen Details Go Here --> 
            This is a preview of your Customer Privacy notice.<br>
            <br>
            <iframe id="notice" class="embed-responsive iframe" src="output/notice.html">
            <p>Your browser does not support iframes.</p>
            </iframe>
          </div>
        </div>
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
