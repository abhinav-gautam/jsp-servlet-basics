<html>
<body>
<h3>JSP Declarations</h3>
<%! 
String makelower(String string){
	return string.toLowerCase();
}
%>
Lower Case version of "ABHINAV GAUTAM": <%= makelower("ABHINAV GAUTAM") %>
</body>
</html>