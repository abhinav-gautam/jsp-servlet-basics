<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, com.abhinavgautam.jsp.JSTLBasics.Student"%>

<%
	List<Student> data = new ArrayList<Student>();
data.add(new Student("Abhinav", "Gautam", 22));
data.add(new Student("John", "Doe", 12));
data.add(new Student("Jane", "Doe", 62));

pageContext.setAttribute("studentsData", data);
%>

<html>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
				<th>18+</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${studentsData}">
				<tr>
					<td>${student.firstName}</td>
					<td>${student.lastName }</td>
					<td>${student.age}</td>
					<td><c:if test="${student.age>18 }">
							Yes
						</c:if> <c:if test="${not (student.age>18) }">
							No
						</c:if></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>