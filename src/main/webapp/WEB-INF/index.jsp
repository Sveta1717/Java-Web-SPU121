<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String context = request.getServletContext().getContextPath(); // JavaWeb - контекст, заданий у конфігурації
%>

<h1>Java.Web проєктування</h1>
<h2>Встановлення та налаштування</h2>
<p>

    <img src="<%= context %>/Image/new%20project.jpg" width="754" height="614"><br/>
    Обираємо Maven Archetype -- webapp<br/>
    <img src="<%= context %>/Image/Archetype.jpg" width="400" height="300"><br/>
    змінюємо базовий пакет, задаємо назву проєкту
    Після створення корегуємо
    /src/main/webapp/index.jsp<br/>
    <img src="<%= context %>/Image/JSP.jpg" width="400" height="300"><br/>
    - додаємо директиву JSP<br/>
    <img src="<%= context %>/Image/JSP-2.jpg" width="400" height="300"><br/>
    <code>
        &lt;%@ page contentType="text/html;charset=UTF-8" %>
    </code><br/>
    <img src="<%= context %>/Image/JSP-3.jpg" width="400" height="300">
</p>
<p>
    Налаштовуємо конфігурацію запуску. Необхідно встановити веб-сервер для Java.
    Серед найбільш поширених: Tomcat (8.5), Glassfish, WildFly тощо.
    Частіше за все достатньо завантажити архів сервера та розпакувати його
    в окрему папку (без кирилічних символів у шляху).<br/>
    Edit Configuration -- + --<br/>
    <img src="<%= context %>/Image/Edit%20Configuration.jpg" width="400" height="300"><br/>
    Tomcat Local --<br/>
    <img src="<%= context %>/Image/Edit%20Configuration-2.jpg" width="400" height="300"><br/>
    Configure -- вибираємо папку сервера<br/>
    <img src="<%= context %>/Image/Edit%20Configuration-3.jpg" width="400" height="300"><br/>
    (розпаковки) -- Додаємо артефакт деплою ( Fix або вкладка Deploy) --<br/>
    <img src="<%= context %>/Image/Fix.jpg" width="400" height="300"><br/>
    ...war exploded. За бажанням змінюємо контекст (адресу сайту) та змінюємо реакцію на перезапуск
    (On Update action) - оновлення ресурсів<br/>
    <img src="<%= context %>/Image/recourse.jpg" width="400" height="300"><br/>
</p>
<p>
    Додаємо до залежностей пакету servlet-api
</p>
