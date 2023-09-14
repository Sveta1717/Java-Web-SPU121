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
      <li class="active"><a href="#">JSP</a></li>
      <li><a href="badges.html">Components</a></li>
      <li><a href="collapsible.html">JavaScript</a></li>
    </ul>
  </div>
</nav>
<div class="container">
<h1>Основи JSP</h1>
</div>
<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
