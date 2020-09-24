<html>
<body>
<h3>JSP Builtin Objects</h3>
Request user-agent: <%= request.getHeader("User-Agent") %>
<br/>
Request Language: <%= request.getLocale() %>
</body>
</html>