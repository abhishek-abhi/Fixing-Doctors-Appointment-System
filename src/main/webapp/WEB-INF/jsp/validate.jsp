<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*,java.sql.*,javax.mail.Message,java.util.Properties,javax.mail.MessagingException,javax.mail.PasswordAuthentication,javax.mail.Session,javax.mail.Transport,javax.mail.internet.InternetAddress,javax.mail.internet.MimeMessage"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<head>
 <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/creative.min.css" rel="stylesheet">



<meta charset="utf-8">
<meta name="Viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
<meta http-equiv="X-ua-compatible" content="ie=edge">
<title>Fixing Doctors Appointment System</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/styles.css" rel="stylesheet">
<script src="https://oss.maxcdn.com/html5.shiv/3.7.2/html5.shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <style type="text/css">
body{
  padding-top: 150px;
}

.starter-template{
	padding: 40px 15px;
	text-align: center;'
}
.marketing .span4{
	text-align:center;
}
.marketing h2{
	font-weight:normal;
}
.marketing .span4 p{
	margin-left: 10px;
	margin-right: 10px;
}
.member-title{
	color: #f8f8ff;
}
.featurette-divider{
	margin:80px 0;
}
.featurette{
	padding-top: 120px;
	overflow: hidden;
}
.featurette-image{
	margin-top: -120px;
}
.featurette-image.pull-left{
	margin-right: 40px;
}
.featurette-image.pull-right{
	margin-left: 40px;
}
.featurette-heading{
	font-size: 50px;
	font-weight: 300;
	line-height: 1;
	letter-spacing: -1px;
}

#bright{
	margin-top: 100px;
}	
</style>
      
</head>
<body> 
<script type="text/javascript" src="/webjars/jquery/2.1.4/jquery.min.js"></script>
      <script type="text/javascript" src="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      
   <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
        </div>
        <div id="navbar" class="collapse navbar-collapse ">
          <ul class="nav navbar-nav" id="bright">
            <li><a href="/">Home</a></li>
            <li class="active"><a href="/doctors">Doctors</a></li>
          </ul>
          
          <ul class="nav navbar-nav navbar-right">
          <li><a href="/login">Login</a></li>
          <li><a href="/sign">Sign Up</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>




    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading text-white"><<<...FIXING DOCTORS APPOINTMENT SYSTEM...>>></h2>
            <hr class="light my-4">
            <p class="text-faded mb-4">More try ,more success.</p>
            <a class="btn btn-light btn-xl js-scroll-trigger" href="#processings">PROCESSING</a>
          </div>
        </div>
      </div>
    </section>

    <section id="processings">
      <div class="container">
           <div class="container">
    <div class="starter-template">
    <h1>Fixing Doctors Appointment System</h1>
    <p class="lead">Booking is being done....</p>
    </div>
       <% 
       session.setAttribute("dname",request.getParameter("name"));
		session.setAttribute("tname",request.getParameter("timing"));
	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/Project_db";
	String user = "root";
	String dbpsw = "";
	
	Connection con = null;
	PreparedStatement ps = null;
	PreparedStatement ps1 = null;
	try
	{
	Class.forName(driverName);
	con = DriverManager.getConnection(url, user, dbpsw);

	String timing = session.getAttribute("tname").toString();
	String sql1 = "select counter from Doctors where timing='"+timing+"'";
	//ps1 = con.prepareStatement(sql1);
	String name = session.getAttribute("dname").toString();
	//ps1.setString(1,timing);
	 
	Statement statement = con.createStatement();
	ResultSet result = statement.executeQuery(sql1);
	 
	int count = 0;
	 int fullname=0;
	while (result.next()){
		if(count<=1){
	    fullname = result.getInt("counter");
	    //out.println(fullname);
	    count++;
		}
	}
	
	//String sql1="select counter from Doctors where timing=?";
	//ps1 = con.prepareStatement(sql1);
	
	//String j = ps1.executeQuery();
	//out.println(j);
	if(fullname==3){
		//session.setAttribute("messaging", "");
	
		
		//response.sendRedirect("/doctors");
		%>
		<script type="text/javascript">alert("This Slot is filled up. Kindly Choose another Slot");window.location.href="/doctors";</script>
		<%
		 
	}
	
	}
	catch(SQLException sql)
	{
	request.setAttribute("error", sql);
	out.println(sql);
	}
   %>
   <a href="/book?name=<%=request.getParameter("name") %>&timing=<%=session.getAttribute("tname").toString() %>"><h1>BOOK</h1></h1></a>
</div>
      </div>
      </section>

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">At Your Service</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-diamond text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Superb Consultants</h3>
              <p class="text-muted mb-0">These are the PRO SERVICE at our end to make you feel better</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Ready to Consult</h3>
              <p class="text-muted mb-0">This is the best thing to transform your life!</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Up to Date</h3>
              <p class="text-muted mb-0">We update services to keep things fresh.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-heart text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Made with Love</h3>
              <p class="text-muted mb-0">You have to greet your thoughts with love these days!</p>
            </div>
          </div>
        </div>
      </div>
    </section>

 <section class="p-0" id="portfolio">
      <div class="container-fluid p-0">
        <div class="row no-gutters popup-gallery">
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/1.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/1.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Fitness
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/2.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/2.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Healthy Days                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/3.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/3.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Healthy Treatment
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/4.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/4.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Healthy Check-up
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/5.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/5.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Healthy Body
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/6.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/6.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Healthy Mind
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>

    
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading">Let's Get In Touch!</h2>
            <hr class="my-4">
            <p class="mb-5">Ready to consult with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 ml-auto text-center">
            <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
            <p></p>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
            <p>
              <a href="mailto:your-b214005@iiit-bh.ac.in">b214005@iiit-bh.ac.in</a>
            </p>
          </div>
        </div>
      </div>
      <hr>
      <p align="center">Developed and designed by-> <strong>Abhishek Kumar Mandal</strong></p>
    </section>
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/creative.min.js"></script>
</body>
</html>