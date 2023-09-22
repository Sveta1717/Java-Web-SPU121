<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.LinkedHashMap" %>

<h1>Основи JSP</h1>

<p>
    Традіційно, HTML - препроцесори додають то, чого не вистачає в самому HTML
</p>
<ul>
    <li>Змінні та вирази</li>
    <li>Інструкції управління (if, for, foreach, тощо)</li>
    <li>Взаємодія між файлами/ресурсами</li>
</ul>
<p>
    <% String str = "Hello";
        int x = 10; %>
    Змінні - реалізуються синтаксисом Java у тілі спеціальних блоків &lt;% %>,
    наприклад, <code> &lt;% String str = "Hello"; int x = 10; %></code><br/>
    Вирази та їх результати оформлюються як &lt;%= %>, наприклад,
    <code>x = &lt;%= x %></code> Призведе до результату x = <%= x %>
</p>
<p>
    Умовні інструкції утворюються "розриванням" коду та розмітки у вигляді:
<pre>
  &lt;% if( x == 10 ) { %>
    Розмітка HTML
  &lt;% } %>
</pre>
Аналогічним чином формуються і інші блоки - цикли різного типу.
</p>
<p>
    Взаємодія з файлами - інструкція &lt;jsp:include page="index.jsp"/>
    Ефект від цієї інструкції - включення тіла іншого файлу у дане місце
    та виконання його, після чого - повернення до подальшого вмісту
    даного файлу.
    Якщо до файлу треба передати додаткові дані (параметри), то тег
    <a href="https://beginnersbook.com/2013/12/jsp-include-with-parameter-example/">додає тіло:</a>
</p>
<pre>
  &lt;jsp:include page="file.jsp" >
    &lt;jsp:param name="firstname" value="Chaitanya" />
    &lt;jsp:param name="middlename" value="Pratap" />
    &lt;jsp:param name="lastname" value="Singh" />
  &lt;/jsp:include>
</pre>
<% /* описати змінну-колекцію, що імітує статистику продажів за тиждень */
    Map<String, Integer> sales = new LinkedHashMap<>();
    sales.put("Mon", 124);
    sales.put("Tue", 54);
    sales.put("Wed", 104);
    sales.put("Thu", 126);
    sales.put("Fri", 137);
%>
<%-- вивести статистику у вигляді списку --%>
<div class="row">
    <div class="col s4 offset-s2">
        <ul class="collection">
            <% for (String day : sales.keySet()) { %>
            <li class="collection-item">
                <%= day %> -- <b><%= sales.get(day) %>
            </b>
            </li>
            <% } %>
        </ul>
    </div>
</div>
<%-- вивести статистику у вигляді таблиці --%>
<div class="row">
    <div class="col s4 offset-s2">
        <table class="striped">
            <thead>
            <tr>
                <th>День</th>
                <th>Продажів</th>
            </tr>
            </thead>
            <tbody>
            <% for (String day : sales.keySet()) { %>
            <tr>
                <td><%= day %>
                </td>
                <td><%= sales.get(day) %>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
</div>

<%-- вивести статистику у вигляді "карток" за шаблоном з іншого файлу --%>
<div class="row">
    <% for (String day : sales.keySet()) { %>
    <jsp:include page="sale-card.jsp">
        <jsp:param name="day" value="<%= day %>"/>
        <jsp:param name="sale" value="<%= sales.get(day) %>"/>
    </jsp:include>
    <% } %>
</div>



