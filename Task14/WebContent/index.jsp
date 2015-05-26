<%@ page import="databeans.Information"%>
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

<script language="JavaScript">
<!--
function enable_field(status)
{
status=!status;	
document.f1.other_field.disabled = status;
}
//-->
</script>

</head>

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
        <li> <a class="page-scroll" href="#save">Review</a> </li>
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
          <p align="left"> This is a tool developed by the Federal Trade Commission (FTC) so that Financial Institutions can generate standarized U.S. Consumer Privacy Notices (CPN). <br>
            <br>
            It is important for all institutions operating in the United States to provide a clear and concise notice to consumers. <br>
            <br>
            By generating and implementing it on the institution's website, the institution will receive the benefit of a "Safe Harbor" in regards to consumer privacy auditing by the FTC.</p>
        </div>
        <div class="col-md-4">
          <p><font color="#d3a401"><b>What does this tool do?</b></font></p>
          <p align="left"> This tool produces a Consumer Privacy Notice statement through the following files: </p>
          <table class="table">
            <tr valign="top">
              <td align="left"><span class="glyphicon glyphicon-download-alt"></span></td>
              <td>&nbsp; &nbsp;</td>
              <td align="left"> A standalone HTML web page that can be added to the intitution's website.</td>
            </tr>
            <tr valign="top">
              <td align="left"><span class="glyphicon glyphicon-file"></span>
              <td></td>
                </td>
              <td align="left"> A computer readable XML file that can be uploaded into this tool for future modifications.</td>
            </tr>
            <tr valign="top">
              <td align="left"><span class="glyphicon glyphicon-font"></span>
              <td></td>
                </td>
              <td align="left"> A plain HTML file without formatting that can be embedded on the institution's website. </td>
            </tr>
          </table>
        </div>
        <div class="col-md-4"> <font color="#d3a401"><b>How to use the tool?</b></font>
          </p>
          <p align="left"> To generate a new notice click on the <a href="#first" class="page-scroll">Create New CPN</a> button below and fill out the formaccording to your institution's privacy policy. As you advance, the navigation bar will show your progress.<br>
            <br>
            You may save your work by using the XLM file download feature at any time.<br>
            <br>
            To resume your work from an existing XML file, upon importing a XML file the form will be updated with the values you have already entered. Always remember to download the XML file to save your work. </p>
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
    <h3 class="section-subheading text-muted">In this section you will provide information to identify and contact your company.</h3>
  </div>
</div>

<!-- Form Initiation-->
<div class="row">
<div class="col-lg-12">
<form name="f1" id="policyform" method="post" action="choose.do">
  <div class="col-md-6"> 
    <div class="form-group">
      <label>Name of the company providing the notice*</label>
      <input type="text" class="form-control" placeholder="e.g. American Bank" name="name" value="${information.name}" id="name" required></p>
    
      <label>Legal entity name*</label>
      <input type="text" class="form-control" placeholder="e.g. American Bank Corporation" name="age" value="${information.name}" id="legalname" required></p>
    
      <label>If any, list all other legal entities affiliated with your financial institution that are providing this notice</label>
      <textarea rows="4" class="form-control" placeholder="e.g. American Advisors LLC, AmericanForex"  id="alias"></textarea>
    </div>
  </div>
  
  <div class="col-md-6">
    <div class="form-group">
      <label>Customer call center:</label>
      <input type="tel" class="form-control" placeholder="e.g. 1-800-123-4567*" name="happy" value="${information.name}" id="phone" required></p>
      <label>Customer service email:</label>
      <input type="email" class="form-control" placeholder="Customer Service Email*"  name="gender" value="${information.name}" id="email" required></p>
       <label>Company's website:</label>
      <input type="url" class="form-control" placeholder="e.g. www.ab1.com" name="location" value="${information.name}"  id="web"></p>
       <label>Mailing address:</label>
      <textarea rows="2" class="form-control" placeholder="Street Address" name="description" value="${information.name}" id="alias" required></textarea></p>
      <input type="text" class="form-control" placeholder="City*" id="l3" required></p>
      <input type="text" class="form-control" placeholder="Zipcode*" id="zip" required></p>
      <select class="form-control" required>
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
       </p>
    </div>
  </div>
  
  </div>
  </div>
  <br><br>
  <p align="center"><a class="page-scroll" href="#privacy">Continue>></a></p>
  </div>
  </section>
  
  <!-- Privacy -->
  <section id="privacy" class="bg-light-gray">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading">Privacy Policy</h2>
          <h3 class="section-subheading text-muted">What, why, and when you collect and share consumer's information. </h3>
        </div>
      </div>
      
      <!-- Form Continues-->
      <div class="row">
        <div class="col-lg-12">
          <div class="col-md-11">
            <div class="form-group">
             <h5>What Information do you collect?</h5>
             <label for="sel2">Select all the types of information that your company collects and share from customers, independently of the reason. (Press CTRL to select multiple options)</label>
      <select multiple class="form-control" id="sel2">
<option>	Account balances	</option>
<option>	Account transactions	</option>
<option>	Assets	</option>
<option>	Checking account information	</option>
<option>	Contact Information	</option>
<option>	Credit card or other debt	</option>
<option>	Credit history	</option>
<option>	Credit scores	</option>
<option>	Employment information	</option>
<option>	Income information	</option>
<option>	Insurance claim history	</option>
<option>	Insurance scores	</option>
<option>	Investment experiences	</option>
<option>	Medical expenses	</option>
<option>	Medical-related debts	</option>
<option>	Mortgage rates and payments	</option>
<option>	Overdue history	</option>
<option>	Payments history	</option>
<option>	Profit/loss history	</option>
<option>	Purchase history	</option>
<option>	Retirement assets	</option>
<option>	Risk tolerance	</option>
<option>	Social Security Number	</option>
<option>	Transactions history	</option>
<option>	Wire transfer instructions	</option>

      </select>
 <br></p>
 <h5>Why do you collect that information?</h5>
 <table class="table table-hover table-striped"><thead>
 <tr><th>Reasons to share personal information</th><th>Does your company share?</th><th>Can your customers opt out</th>
 </tr>
 </thead>
 <tbody
 <tr>
 <td>For everyday business purposes</td>
 <td><div class="form-group"><label class="radio-inline">
<input type="radio" name="sharing1" value="Yes" checked/> Yes
</label></td>
 <td><label class="radio-inline">
<input type="radio" name="optout1" value="Yes" checked/> No
</label></td></td>
 </tr>
 
  <tr>
 <td>For company's marketing purposes</td>
 <td><div class="form-group"><label class="radio-inline">
<input type="radio" name="sharing2" value="Yes" checked/> Yes
</label>
</div>
</td>
 <td><div class="form-group"><label class="radio-inline">
<input type="radio" name="optout2" value="Yes"/ checked> Yes
</label>
<label class="radio-inline">
<input type="radio" name="optout2" value="No"/> No
</label>
</div></td>
 </tr>
 
 <tr>
 <td>For joint marketing with other financial companies</td>
 <td><div class="form-group"><label class="radio-inline">
<input type="radio" name="sharing3" value="Yes" checked/> Yes
</label>
<label class="radio-inline">
<input type="radio" name="sharing3" value="No"/> No
</label>
</div>
</td>
 <td><div class="form-group"><label class="radio-inline">
<input type="radio" name="optout3" value="Yes" checked/> Yes
</label>
<label class="radio-inline">
<input type="radio" name="optout3" value="No"/> No / Don't Collect
</label>
</div></td>
 </tr>
 
<tr>
 <td>For your affiliates’ everyday business purposes | Transactions and experiences</td>
 <td><div class="form-group"><label class="radio-inline">
<input type="radio" name="sharing4" value="Yes" checked/> Yes
</label>
<label class="radio-inline">
<input type="radio" name="sharing4" value="No"/> No
</label></div>
</td>
 <td><div class="form-group"><label class="radio-inline">
<input type="radio" name="optout4" value="Yes" checked/> Yes
</label>
<label class="radio-inline">
<input type="radio" name="optout4" value="No"/> No
</label></div></td>
 </tr>
 
<tr>
 <td>For your affiliates’ everyday business purposes | Creditworthdiness</td>
 <td><div class="form-group"><label class="radio-inline">
<input type="radio" name="sharing5" value="Yes" checked/> Yes
</label>
<label class="radio-inline">
<input type="radio" name="sharing5" value="No"/> No
</label></div>
</td>
 <td><div class="form-group"><label class="radio-inline">
<input type="radio" name="optout5" value="Yes" checked/> Yes
</label>
<label class="radio-inline">
<input type="radio" name="optout5" value="No"/> No
</label></div></td>
 </tr>
 
 <tr>
 <td>For nonaffiliates to market your customers</td>
 <td><div class="form-group"><label class="radio-inline">
<input type="radio" name="sharing6" value="Yes"/> Yes
</label>
<label class="radio-inline">
<input type="radio" name="sharing6" value="No" checked/> No
</label></div>
</td>
 <td><div class="form-group"><label class="radio-inline">
<input type="radio" name="optout6" value="Yes" checked/> Yes
</label>
<label class="radio-inline">
<input type="radio" name="optout6" value="No"/> No
</label></div></td>
 </tr>
 
  </tbody>
 </table>
      
      
          </div>
        </div>
      </div>
      <br>
      <br>
      
      <p align="center"><a class="page-scroll" href="#institution"> << Previous </a> <a class="page-scroll" href="#other"> Continue>></a></p>
    </div>
  </section>
  
  <!-- Other Section -->
  <section id="other">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading">Other Data</h2>
          <h3 class="section-subheading text-muted">Additional Information goes here. </h3>
        </div>
      </div>
      
      <!-- Form Continues-->
      <div class="row">
        <div class="col-lg-12">
          <div class="col-md-6">
            <div class="form-group">
              <label>How do you collect customers information*</label>
              <input type="text" class="form-control" placeholder="e.g. American Bank" id="name" required>
            </div>
            <div class="form-group">
              <label>Legal Entity Name*</label>
              <input type="text" class="form-control" placeholder="e.g. American Bank Corporation" id="legalname" required>
              <p class="help-block text-danger"></p>
            </div>
            <div class="form-group">
              <label>If any, list all other legal entities affiliated with your financial institution.</label>
              <input type="text" class="form-control" placeholder="e.g. American Advisors LLC, AmericanForex (confirm)" id="alias">
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label>Enter the URL of the "Contact Us" page or similar page of your institution's website*</label>
              <input type="url" class="form-control" placeholder="e.g. id="alias value="http://www." required>
              <p class="help-block text-danger"></p>
            </div>
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
        <div class="list-group"> <a href="#portfolioModal1" class="portfolio-link btn btn-lg list-group-item disabledx" data-toggle="modal"><span class="glyphicon glyphicon-eye-open"></span> Preview</a>
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
      <button type="submit" class="btn btn-lg" name="action" value="outputFullPage">Download Full Web Page</button>
      <br>
      <br>
    </div>
    <div class="col-md-4 text-center">
      <h4>PLAIN TEXT WEBPAGE</h4>
      This option downloads a Zip Folder containing a plain HTML version of the Notice without any formatting, plus the XML File. It is recommended if you want to embed the notice in your institution's website with your own formatting. <br>
      <br>
      <button type="submit" class="btn btn-lg" name="action" value="outputPlainPage">Download Plain Web Page</button>
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
