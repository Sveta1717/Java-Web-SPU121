<%@ page contentType="text/html;charset=UTF-8" %>

<%
    String context = request.getServletContext().getContextPath();   // /JavaWeb - контекст, заданий у конфігурації
    // дані про тіло - який файл включати в середину шаблону
    String pageBody = (String) request.getAttribute( "pageBody" ) ;
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
            <img src="https://1000logos.net/wp-content/uploads/2020/09/Java-Emblem.jpg" width="65" height="65"
                 style="margin-right: 10px;">
            <span style="line-height: 65px;">Java Web</span>
        </a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li class="<%="about-jsp.jsp".equals(pageBody)?"active":"" %>"><a href="<%= context %>/about-jsp">JSP</a></li>
            <li class="<%="".equals(pageBody)?"active":"" %>"><a href="<%= context %>/test.jsp">TEST</a></li>
            <li class="<%="about.jsp".equals(pageBody)?"active":"" %>"><a href="<%= context %>/about">Servlet</a></li>
            <li class="<%="filter.jsp".equals(pageBody)?"active":"" %>"><a href="<%= context %>/filter">Filter</a></li>
            <li class="<%="ioc.jsp".equals(pageBody)?"active":"" %>"><a href="<%= context %>/ioc">IoC</a></li>
        </ul>
    </div>
</nav>
<div class="container">
    <jsp:include page="<%= pageBody %>"/>
</div>

<footer class="page-footer" style="background-color: indigo; bottom: 0; height: 150px">
    <div class="container">
        <p>Ваш браузер:  <%= request.getAttribute("userAgent") %></p>
    </div>
    <div class="container">
        <ul class="social-icons" style="display: flex; justify-content: center; align-items: center;">
            <h5 class="grey-text text-lighten-4" style="margin-right: 10px;">Follow us</h5>
            <li><a class="white-text" href="https://www.facebook.com/itstep.online">
                <i class="Medium material-icons">facebook</i></a></li>
            <li><a class="white-text" href="https://t.me/css_golovolomki">
                <i class="Medium material-icons">telegram</i></a></li>
            <li><a class="white-text" href="https://www.linkedin.com/company/step-it-academy/?originalSubdomain=ru">
                <i class="Medium material-icons">linkedin</i></a></li>
        </ul>
    </div>

    <div class="footer-copyright">
        <div class="container">
            © 2023 SPU 121
        </div>
    </div>
</footer>
<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
