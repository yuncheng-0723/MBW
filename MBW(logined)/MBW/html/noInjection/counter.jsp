<%@ page contentType="text/html" %>
<%@page pageEncoding="UTF-8"%>
<html>
<head><title>訪客計數器init</title>
</head>
<body>
<%
     application.setAttribute("counter", "1");
     out.print("計數器初始值設定為1");
%>
</body>
</html>
