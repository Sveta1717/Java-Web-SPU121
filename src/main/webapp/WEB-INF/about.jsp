<%@ page contentType="text/html;charset=UTF-8" %>
<%-- Представлення (View) - тіло, що вставляється у шаблон (_layout) --%>

<h1>Про сервлети</h1>
<p>
  Сервлети - спеціальні класи, призначені для задач роботи у мережі,
  зокрема у HTTP. Можна прровести аналогію з контролерами ( типу API)
  в ASP.
</p>
<p>
  Сервлети, як класи Java, описуються в окремій папці "java", яку слід додати
  до проекту ( у папці main). У ній створюємо пакети у відповідності до
  даних, вказаних при створенні проєкту (step.learning).
  У цьому пакеті додаємо пакет "servlets", у ньому клас - AboutServlet
</p>
<p>
  Звертаємо увагу на папку Web-INF. Це папка з налаштуванням сервера (web.xml),
  і доступ до цієї папки блокується самим сервером (до неї неможна звернутись
  з браузера). Але можна звертатись з java-коду, зокрема, з сервлетів.
  Це використовується як спосіб захисту файлів від прямого звертання і гарантує
  правильний порядок їх проходження через шаблон(и).
</p>
<p>
  У папці Web-INF створюємо два файли - "_layout.jsp" та "about.jsp"
</p>