<%@page import="java.net.URLDecoder"%>
<html>
<head>
<title>Cookies</title>
</head>
<body>
	<%
		// Set default if no cookies
	String favLang = "Python";
	// Get the cookies from the browser
	Cookie[] theCookies = request.getCookies();
	// Find our favLang cookie
	if (theCookies != null) {
		for (Cookie cookie : theCookies) {
			if ("favoriteLanguage".equals(cookie.getName())) {
		favLang = URLDecoder.decode(cookie.getValue(), "UTF-8");
		break;
			}
		}
	}
	%>

	<h4>
		Favorite Language:
		<%=favLang%></h4>

	<a href="cookies-form.html">Change favorite language</a>
</body>
</html>
