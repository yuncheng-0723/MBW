<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("id") != null ){
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
哈囉，<%=name%>，<a href='../../../BMW(logined)\BMW\html\noInjection/logout.jsp'>登出</a><br />
請修改會員資料：<br />
<form action="update.jsp" method="POST">
您的帳號：<input type="text" name="id" value="<%=id%>" />
您的密碼：<input type="password" name="pwd" value="<%=pwd%>" />
<input type="submit" name="b1" value="更新資料" /> <br>
您的姓名：<input type="name" name="name" value="<%=name%>" />
您的電子郵件：<input type="mail" name="mail" value="<%=mail%>" /><br>
(請輸入英文名字)
</form>
<a href="../../../MBW(logined)\MBW/index.html">點此返回首頁</a>
<%
}
else{
	con.close();//結束資料庫連結
%>
<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="../../../MBW(logined)\MBW\html\board/check.jsp" method="POST">
帳號：<input type="text" name="id" /><br />
密碼：<input type="password" name="pwd" /><br />
<input type="submit" name="b1" value="登入" />
</form>
<%
}
%>
