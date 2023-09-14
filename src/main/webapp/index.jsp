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
<body >
<nav>
    <div class="nav-wrapper indigo">
        <a href="<%= context %>/" class="brand-logo" style="display: flex; align-items: center;">
            <img src="https://1000logos.net/wp-content/uploads/2020/09/Java-Emblem.jpg" width="65" height="65" style="margin-right: 10px;">
            <span style="line-height: 65px;">Java Web</span>
        </a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="<%= context %>/about-jsp.jsp">JSP</a></li>
            <li><a href="<%= context %>/test.jsp">TEST</a></li>
            <li><a href="badges.html">Components</a></li>
            <li><a href="collapsible.html">JavaScript</a></li>
        </ul>
    </div>
</nav>
<div class="container">
<h1>Java.Web проєктування</h1>
<h2>Встановлення та налаштування</h2>
<p>
    Створюємо новий проект.<br/>
    <img src="Image/new%20project.jpg" width="400" height="300"><br/>
    Обираємо Maven Archetype -- webapp<br/>
    <img src="Image/Archetype.jpg" width="400" height="300"><br/>
    змінюємо базовий пакет, задаємо назву проєкту
    Після створення корегуємо
    /src/main/webapp/index.jsp<br/>
    <img src="Image/JSP.jpg" width="400" height="300"><br/>
    - додаємо директиву JSP<br/>
    <img src="Image/JSP-2.jpg" width="400" height="300"><br/>
    <code>
        &lt;%@ page contentType="text/html;charset=UTF-8"  %>
    </code><br/>
    <img src="Image/JSP-3.jpg" width="400" height="300">
</p>
<p>
    Налаштовуємо конфігурацію запуску. Необхідно встановити веб-сервер для Java.
    Серед найбільш поширених: Tomcat (8.5), Glassfish, WildFly тощо.
    Частіше за все достатньо завантажити архів сервера та розпакувати його
    в окрему папку (без кирилічних символів у шляху).<br/>
    Edit Configuration -- + --<br/>
    <img src="Image/Edit%20Configuration.jpg" width="400" height="300"><br/>
    Tomcat Local --<br/>
    <img src="Image/Edit%20Configuration-2.jpg" width="400" height="300"><br/>
    Configure -- вибираємо папку сервера<br/>
    <img src="Image/Edit%20Configuration-3.jpg" width="400" height="300"><br/>
    (розпаковки) -- Додаємо артефакт деплою ( Fix або вкладка Deploy) --<br/>
    <img src="Image/Fix.jpg" width="400" height="300"><br/>
    ...war exploded. За бажанням змінюємо контекст (адресу сайту) та змінюємо реакцію на перезапуск
    (On Update action) - оновлення ресурсів<br/>
    <img src="Image/recourse.jpg" width="400" height="300"><br/>
</p>
<p>
    Додаємо до залежностей пакету servlet-api
</p>
    <img src="Image/servlet-api.jpg" width="400" height="300"><br/>
    <img src="Image/servlet-api-2.jpg" width="400" height="300"><br/>
    <img src="Image/servlet-api-3.jpg" width="400" height="300"><br/>
</div>
<footer class="page-footer" style="background-color: indigo; bottom: 0; height: 150px">
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
