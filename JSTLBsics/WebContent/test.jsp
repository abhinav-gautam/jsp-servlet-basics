<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<body>
	<c:set var="time" value="<%=new Date()%>" />
	Time on the server is: ${time}
</body>
</html>