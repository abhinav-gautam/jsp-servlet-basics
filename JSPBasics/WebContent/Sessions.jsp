<%@ page import="java.util.*"%>
<html>
<body>
	<form action="Sessions.jsp">
		Add a new item: <input type="text" name="item"> <input
			type="submit" value="Submit">
	</form>
	<%
		// Get TODO items from the session
	List<String> items = (List<String>) session.getAttribute("items");
	// If the TODO items doesn't exist, then create a new one
	if (items == null) {
		items = new ArrayList<String>();
		session.setAttribute("items", items);
	}
	// See if there is form data to add
	String item = request.getParameter("item");
	if (item != null && !item.trim().equals("")) {
		items.add(item);
	}
	item = null;
	%>
	<hr>
	<h4>My List:</h4>
	<ol>
		<%
			for (String i : items) {
			out.println("<li>" + i + "</li>");
		}
		%>
	</ol>

</body>
</html>