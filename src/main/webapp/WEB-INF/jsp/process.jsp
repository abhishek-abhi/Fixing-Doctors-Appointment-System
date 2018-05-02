<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
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
            <li><a href="/physician">Physicians</a></li>
            <li><a href="/surgeon">Surgeon</a></li>
          </ul>
          
          <ul class="nav navbar-nav navbar-right">
          <li><a href="/login">Login</a></li>
          <li class="active"><a href="/sign">Sign Up</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    <div class="container" id="bright">
    
    <div class="starter-template">
    <h1>Fixing Doctors Appointment System</h1>
    <p class="lead"></p>
    </div>
     
    </div>
    <%
    String email=request.getParameter("email");
    String firstname=request.getParameter("firstname");
    String lastname=request.getParameter("lastname");
    String password=request.getParameter("password");
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project_db", "root", "");
    Statement st=conn.createStatement();

    int i=st.executeUpdate("insert into Persons(email,firstname,lastname,password)values('"+email+"','"+firstname+"','"+lastname+"','"+password+"')");
    out.println("<h1>You are successfully registered... Login now</h1>");
    }
    catch(Exception e)
    {
    System.out.print(e);
    e.printStackTrace();
    }
    %>
    
    
    
   
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