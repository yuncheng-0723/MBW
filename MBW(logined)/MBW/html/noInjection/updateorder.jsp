<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("id") != null ){
    if(request.getParameter("id1")!=null){
	String change =new String(request.getParameter("change"));
    sql = "UPDATE `orders` SET `reach`='"+request.getParameter("id1")+"' WHERE `pid`='"+change+"'";
	con.createStatement().execute(sql);

	con.close();//結束資料庫連結
	out.print("更新成功!! 請<a href='vieworder.jsp'>按此</a>回訂單管理頁面!!");
	}
	else{
	  con.close();//結束資料庫連結	
	  out.print("更新失敗!! 請填寫完整，<a href='vieworder.jsp'>按此</a>回訂單管理頁面!!");
	}
}
else{
	con.close();//結束資料庫連結
%>
<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="check.jsp" method="POST">
帳號：<input type="text" name="id" /><br />
密碼：<input type="password" name="pwd" /><br />
<input type="submit" name="b1" value="登入" />
</form>

<%
}
%>