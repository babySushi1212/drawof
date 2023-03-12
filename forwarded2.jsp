<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5" %>

<html>
<head>
    <title>forwarded2.jsp</title>
</head>
<body bgcolor="orange">

<h2>
    You now forwarded to forwarded2.jsp
</h2>
<%
    out.println("get param name0= " + request.getParameter("name0") + "<br>");
    out.println("get attr name1= " + request.getAttribute("name1") + "<br>");
    out.println("get param name1= " + request.getParameter("name1") + "<br>");
    out.println("get attr name2= " + request.getAttribute("name2") + "<br>");
%>

<label>Load from images/tomcat.gif on forwarded2</label>
<img src="images/tomcat.gif">
<label>Load from request.getContextPath() /images/tomcat.gif on forwarded2</label>
<img src="<%= request.getContextPath() %>/images/tomcat.gif">

</body>
</html>