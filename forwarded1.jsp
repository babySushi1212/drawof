<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5" %>

<html>
<head>
    <title>forwarded.jsp</title>
</head>
<body bgcolor="orange">

<h2>
    You Know forward to forwarded1.jsp<br>
</h2>

<div>
    <%
        String dynamic = "forwarded2";
        out.println("name0= " + request.getParameter("name0") + "<br>");
        out.println("name1= " + request.getAttribute("name1") + "<br>");
        out.println("name2= " + request.getAttribute("name2") + "<br>");
        request.setAttribute("name1", "new_peter_1");
    %>
</div>
<div>
    <label>Load from images/tomcat.gif on forwarded1</label>
    <img src="images/tomcat.gif">
    <label>Load from request.getContextPath() /images/tomcat.gif on forwarded1</label>
    <img src="<%= request.getContextPath() %>/images/tomcat.gif">
</div>

<%--put scriptlet(java code) inside a string for dynamic purpose --%>
<jsp:forward page='<%=dynamic + ".jsp"%>'>
    <jsp:param name="name1" value="peter1"/>
</jsp:forward>

</body>
</html>