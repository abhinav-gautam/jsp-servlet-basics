<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<body>
	<h4>Students</h4>>
	<c:forEach var="student" items="${student_list}">
	${student}<br/>
</c:forEach>
</body>
</html>