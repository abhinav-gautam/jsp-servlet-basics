<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${students_list}">
				<tr>
					<td>${student.firstName}</td>
					<td>${student.lastName }</td>
					<td>${student.age}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>