<%@page import="java.net.URLEncoder"%>
<html>
<body>
	<%
		// Read the form data
	String favLang = request.getParameter("favLang");
	favLang = URLEncoder.encode(favLang, "UTF-8");
	// Create the cookie
	Cookie theCookie = new Cookie("favoriteLanguage", favLang);
	// Set the life span
	theCookie.setMaxAge(60 * 60 * 24 * 365);
	// Send cookie to browser
	response.addCookie(theCookie);
	%>
	Set your favorite language to: ${param.favLang }
	<a href="Cookies-homepage.jsp">Return to homepage.</a>
</body>
</html>