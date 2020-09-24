<jsp:include page="header.jsp" />
<h3>Student Confirmation</h3>
Student Confirmed:
<%=request.getParameter("firstName")%>
<%=request.getParameter("lastName")%>
<%=request.getParameter("country")%>
<br />
<br />
Student Knows Langs:
<ul>
	<%
	String[] langs = request.getParameterValues("knownLang");
	if(langs != null){
		for (String lang : langs) {
			out.println("<li>" + lang + "</li>");
		}
	}
	%>
</ul>

<h4>Shorthand Method</h4>
Student Confirmed: ${param.firstName} ${param.lastName}
<br />
<br />
Student Country: ${param.country }
<br />
<br />
Student Fav Lang: ${param.favLang }
<br />
<br />
<jsp:include page="footer.jsp" />