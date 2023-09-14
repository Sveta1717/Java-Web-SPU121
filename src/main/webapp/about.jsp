<%@ page contentType="text/html;charset=UTF-8"  %>
<%
  String context = request.getServletContext().getContextPath(); // JavaWeb - контекст, заданий у конфігурації
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
    <a href="<%= context %>/" class="brand-logo">About page</a>
    <ul id="nav-mobile" class="right hide-on-med-and-down">
      <li class="active"><a href="#">Page</a></li>
      <li><a href="badges.html">Components</a></li>
      <li><a href="collapsible.html">JavaScript</a></li>
    </ul>
  </div>
</nav>
<div class="container">
<h1>About page</h1>
</div>
<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
