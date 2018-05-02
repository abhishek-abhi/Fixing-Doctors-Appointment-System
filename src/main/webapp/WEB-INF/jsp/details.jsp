<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<head>
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

.address {
    font-size: 0.8em;
    color: #888;
}

.bio {
    font-size: 0.9em;
}
</style>
<script type="text/javascript">
//This code depends on jQuery Core and Handlebars.js 

var api_key = '50740f5574824c39b47dc88a2b405c19'; // Get your API key at developer.betterdoctor.com
var doctor_uid = '333d4bb6fcf640e18e93b11b00fe09eb'
var resource_url = 'https://api.betterdoctor.com/2016-03-01/doctors/'+ doctor_uid + '?user_key=' + api_key;

$.get(resource_url, function (data) {
    // data: { meta: {<metadata>}, data: {<Doctor>} }
    var template = Handlebars.compile(document.getElementById('doc-template').innerHTML);
    document.getElementById('content-placeholder').innerHTML = template(data);
});
</script>
</head>
<body>
<div id="content-placeholder"></div>
<script id="doc-template" type="text/x-handlebars-template">
<h3>BetterDoctor - {{data.profile.first_name}} {{data.profile.last_name}}, {{data.profile.title}}</h3>
    <p class="address">
        {{#data.practices}}
        {{name}}<br>
        {{visit_address.street}}<br>
        {{visit_address.city}}, {{visit_address.state}} {{visit_address.zip}}
        {{/data.practices}}
    </p>
    <p class="bio">{{data.profile.dynamic_bio}}</p>
    <table>
        <tr>
          
            <td><a href="{{data.attribution_url}}" target="_new">{{data.attribution_url}}</a></td>
        </tr>
        <tr>
            <th>Picture</th>
            <td><img src="{{data.profile.image_url}}"></img></td>
        </tr>
        <tr>
            <th>Specialties</th>
            <td>
            {{#data.specialties}}
            {{name}}<br>
            {{/data.specialties}}
            </td>
        </tr>
    </table>
</script>
</body>
</html>