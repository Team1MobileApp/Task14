<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>PAAC | Waiting Time For Buses</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- JQuery Mobile -->
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<!--autocomplete -->
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">PAAC</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="index.jsp">Waiting Time</a></li>
					<li><a href="services.html">Plan a Trip</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">More<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="download.html">Download App</a></li>
							<li><a href="privacy.html">Privacy</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Page Content -->
	<form method="post" action="OutputXML.do">
	<h4 style="margin-left: 580px">
				<font face="comic sans MS" color="white"> Please input path:
				</font><input type="text" name="path" value="" style="color: black" />
			</h4>
	<br>
	<br>
	
	<h4 style="margin-left: 580px">
				<font face="comic sans MS" color="white"> Please input name:
				</font><input type="text" name="name" value="" style="color: black" />
			</h4>
			<h4 style="margin-left: 580px">
				<font face="comic sans MS" color="white"> Please input age:
				</font><input type="text" name="age" value="" style="color: black" />
			</h4>
			<h4 style="margin-left: 580px">
				<font face="comic sans MS" color="white"> Please input gender:
				</font><input type="text" name="gender" value="" style="color: black" />
			</h4>
			<h4 style="margin-left: 580px">
				<font face="comic sans MS" color="white"> Please input happy:
				</font><input type="text" name="happy" value="" style="color: black" />
			</h4>
			<h4 style="margin-left: 480px">
				<font face="comic sans MS" color="white"> Please input your
					destination:</font> <input id="searchPlace" placeholder="Pittsburgh"  boader="2px" type="text" name="location"
					value="" style="color: black" />
			</h4>
			<h4 style="margin-left: 580px">
				<font face="comic sans MS" color="white"> Please input tags:
				</font><input type="text" name="description" value="" style="color: black" />
			</h4>
		<br>
			<h4 style="margin-left: 680px">
				<input class="btn btn-default" type="submit" name="button"
					value="Search!" style="font-family: comic sans MS" />
			</h4>
		</form>

<form method="post" action="InputXML.do">


			<h4 style="margin-left: 580px">
				<font face="comic sans MS" color="white"> Path:
				</font><input type="text" name="path" value="" style="color: black" />
			</h4>
		<br>
			<h4 style="margin-left: 680px">
				<input class="btn btn-default" type="submit" name="button"
					value="InputXML" style="font-family: comic sans MS" />
			</h4>
		</form>

</body>
</html>
