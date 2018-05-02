<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<%
if(session.getAttribute("name")==null){
	response.sendRedirect("/login");
}
%>
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

#checkings{
   padding-top: 50px;   
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
       <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/2.0.0/handlebars.min.js"></script>
  <style type="text/css">
      body {
    font-family: ProximaNovaReg, 'Helvetica Neue', Helvetica, Arial, sans-serif;
}

h3 {
    color: #bb3794;
}
a {
    text-decoration: none; 
}

a, a:visited {
    color: rgb(84, 180, 210);
}

a:hover {
    color: rgb(51,159,192);
}

th {
    text-align: left;
}

td, th {
  padding-right: 20px;
}

  </style>
</head>
<body>

<div id="content-placeholder">
</div>
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
            <p class="text-faded mb-4">These are the best suited doctors for your needs.</p>
            <a class="btn btn-light btn-xl js-scroll-trigger" href="#checkings">Click Here!</a>
          </div>
        </div>
      </div>
    </section>

    <section id="checkings">
      <div class="container">
        <script type="text/javascript">
      // This code depends on jQuery Core and Handlebars.js 

var api_key = '50740f5574824c39b47dc88a2b405c19'; // Get your API key at developer.betterdoctor.com

var resource_url = 'https://api.betterdoctor.com/2016-03-01/doctors?location=37.773,-122.413,100&skip=2&limit=10&user_key=' + api_key;



$.get(resource_url, function (data) {
    // data: { meta: {<metadata>}, data: {<array[Practice]>} }
    var template = Handlebars.compile(document.getElementById('docs-template').innerHTML);
    document.getElementById('checkings').innerHTML = template(data);
});
  </script>
         <div class="container">
    <div class="starter-template">
    <p class="lead"></p>
    </div>
  <p><script id="docs-template" type="text/x-handlebars-template">
    <table class="table table-hover">
        <thead>
            <th>Name</th>
            <th>Title</th>
            <th>Picture</th>
        </thead>
        <tbody>
        {{#data}}
        <tr>
            <td>{{profile.first_name}} {{profile.last_name}}<br>
              <img src="{{ratings.0.image_url_small}}"></img></td>
            <td>{{profile.title}}</td>
            <td><img src="{{profile.image_url}}"></img></td>
            <td><a href="/slot?name={{profile.first_name}} {{profile.last_name}}">BOOK</a></td>
        </tr>
        {{/data}}
        </tbody>
    </table>
</script>
</p>            
   
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