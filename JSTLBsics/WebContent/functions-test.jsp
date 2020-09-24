<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<body>
	<c:set var="name" value="abhinav gautam" />
	<h4>Basic</h4>
	length of
	<b>${name}</b>: ${fn:length(name)}
	<br />
	<br /> Upper case
	<b>${name}</b>: ${fn:toUpperCase(name)}
	<h4>Split</h4>
	<c:set var="names" value="abhinav gautam, john doe, jane doe" />
	<c:forEach var="name" items="${fn:split(names,',')}">
		${name}<br/>
	</c:forEach>
	<h4>Join</h4>
	<c:set var="namesSplitted" value="${fn:split(names,',')}" />
	${fn:join(namesSplitted,"|")}
</body>
</html>