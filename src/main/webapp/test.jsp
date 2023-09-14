<%@ page contentType="text/html;charset=UTF-8"  %>
<%
  String context = request.getServletContext().getContextPath(); // JavaWeb - контекст
%>

<html>
<head>
  <title>Java Web</title>
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<nav>
  <div class="nav-wrapper indigo">
    <a href="<%= context %>/" class="brand-logo" style="display: flex; align-items: center;">
      <img src="https://1000logos.net/wp-content/uploads/2020/09/Java-Emblem.jpg" width="65" height="65" style="margin-right: 10px;">
      <span style="line-height: 65px;">Java Web</span>
    </a>
    <ul id="nav-mobile" class="right hide-on-med-and-down">
      <li class="active"><a href="#">TEST</a></li>
      <li><a href="badges.html">Components</a></li>
      <li><a href="collapsible.html">JavaScript</a></li>
    </ul>
  </div>
</nav>
<div class="container">
<h1>TEST</h1>
  <div class="image-row">
    <img src="Image/1.jpg" width="400" height="300">
    <img src="Image/2.jpg" width="400" height="300">
    <img src="Image/3.jpg" width="400" height="300">
  </div>

  <div class="image-row">
    <img src="Image/4.jpg" width="400" height="300">
    <img src="Image/5.jpg" width="400" height="300">
    <img src="Image/6.jpg" width="400" height="300">
  </div>

  <div class="image-row">
    <img src="Image/7.jpg" width="400" height="300">
    <img src="Image/8.jpg" width="400" height="300">
    <img src="Image/9.jpg" width="400" height="300">
  </div>
</div>
<footer class="page-footer" style="background-color: indigo; bottom: 0;">
  <div class="container">
    <ul class="social">
      <li><a href="#" class="text"><i class="material-icons">facebook</i></a></li>
      <li><a href="#" class="text"><i class="material-icons">telegram</i></a></li>
      <li><a href="#" class="text"><i class="material-icons">linkedin</i></a></li>
    </ul>
    <ul class="menu">
      <li><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Team</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </div>
    <p>©2023 Java Web SPU-121</p>
  </footer>

<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>
