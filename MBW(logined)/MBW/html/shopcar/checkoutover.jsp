<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<html>
    <head><title>訂單</title></head>
    <body>
		<%
		
			sql = "SELECT * FROM `members` WHERE `id`='" +session.getAttribute("id")+"';"; 
			ResultSet rs =con.createStatement().executeQuery(sql);
			String id="", pwd="", name="", mail="";
			//讀出id, pwd當成使用者要更改時的內定值
			while(rs.next()){
				id=rs.getString("id");
				pwd=rs.getString("pwd");
				name=rs.getString("name");
				mail=rs.getString("mail");
			}
			con.close();//結束資料庫連結
	%>
			哈囉，<%=name%>，<a href='../noInjection/logout.jsp'>登出</a><br />
		<a href="../../index.html">點此返回首頁</a>
		<hr>
	<%	
		
		String fname=request.getParameter("firstname");
		String email=request.getParameter("email");
		String adr=request.getParameter("address");
		String city=request.getParameter("city");
		String ccnum=request.getParameter("cardnumber");
		String expmonth=request.getParameter("expmonth");
		String expyear=request.getParameter("expyear");
		String cvv=request.getParameter("cvv");
		if ( (fname != null) && (email != null) && (adr != null) && (city != null) && (ccnum != null) && (expmonth != null) && (expyear != null) && (cvv != null)){
			out.print("謝謝您的訂購!");
			out.print("<br><a href='../../index.html'>點此返回首頁</a>");
		}
		else{
			out.print("不能有空的");
		}
		%>

    </body>
</html>
		