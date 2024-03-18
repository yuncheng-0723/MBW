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
<center>
	<h1>留言板</h1>
</center>
哈囉，<%=name%>，<a href='../noInjection/logout.jsp'>登出</a><br >
<a href="../../index.html">點此返回首頁</a>
<hr>

	<img src="../shopcar/images/01.png" width="400" style="float: left" height="250"><br>
	<a href="board1/view.jsp?page=1">觀看BMW 1留言</a><p>
	BMW 1.
	<form name="form1" method="post" action="board1/add.jsp" >
	郵件：<input type="text" name="mail"><br>
	主題：<input type="text" name="subject"><br>
	內容：<textarea rows=5 name="content"></textarea><br>
	<input type="submit" name="Submit" value="送出">
	<input type="Reset" name="Reset" value="重新填寫">
	</form>
	<br>
	<hr>
	
	<img src="../shopcar/images/02.png" width="400" style="float: left" height="250"><br>
	<a href="board2/view.jsp?page=1">觀看BMW 2留言</a><p>
	BMW 2.
	<form name="form1" method="post" action="board2/add.jsp" >
	郵件：<input type="text" name="mail"><br>
	主題：<input type="text" name="subject"><br>
	內容：<textarea rows=5 name="content"></textarea><br>
	<input type="submit" name="Submit" value="送出">
	<input type="Reset" name="Reset" value="重新填寫">
	</form>
	<br>
	<hr>

	<img src="../shopcar/images/03.png" width="400" style="float: left" height="250"><br>
	<a href="board3/view.jsp?page=1">觀看BMW 3留言</a><p>
	BMW 3.
	<form name="form1" method="post" action="board3/add.jsp" >
	郵件：<input type="text" name="mail"><br>
	主題：<input type="text" name="subject"><br>
	內容：<textarea rows=5 name="content"></textarea><br>
	<input type="submit" name="Submit" value="送出">
	<input type="Reset" name="Reset" value="重新填寫">
	</form>
	<br>
	<hr>

	<img src="../shopcar/images/04.png" width="400" style="float: left" height="250"><br>
	<a href="board4/view.jsp?page=1">觀看BMW 4留言</a><p>
	BMW 4.
	<form name="form1" method="post" action="board4/add.jsp" >
	郵件：<input type="text" name="mail"><br>
	主題：<input type="text" name="subject"><br>
	內容：<textarea rows=5 name="content"></textarea><br>
	<input type="submit" name="Submit" value="送出">
	<input type="Reset" name="Reset" value="重新填寫">
	</form>
	<br>
	<hr>

	<img src="../shopcar/images/05.png" width="400" style="float: left" height="250"><br>
	<a href="board5/view.jsp?page=1">觀看BMW 5留言</a><p>
	BMW 5.
	<form name="form1" method="post" action="board5/add.jsp" >
	郵件：<input type="text" name="mail"><br>
	主題：<input type="text" name="subject"><br>
	內容：<textarea rows=5 name="content"></textarea><br>
	<input type="submit" name="Submit" value="送出">
	<input type="Reset" name="Reset" value="重新填寫">
	</form>
	<br>
	<hr>

	<img src="../shopcar/images/06.png" width="400" style="float: left" height="250"><br>
	<a href="board6/view.jsp?page=1">觀看BMW 6留言</a><p>
	BMW 6.
	<form name="form1" method="post" action="board6/add.jsp" >
	郵件：<input type="text" name="mail"><br>
	主題：<input type="text" name="subject"><br>
	內容：<textarea rows=5 name="content"></textarea><br>
	<input type="submit" name="Submit" value="送出">
	<input type="Reset" name="Reset" value="重新填寫">
	</form>
	<br>
	<hr>

	<img src="../shopcar/images/07.png" width="400" style="float: left" height="250"><br>
	<a href="board7/view.jsp?page=1">觀看BMW 7留言</a><p>
	BMW 7.
	<form name="form1" method="post" action="board7/add.jsp" >
	郵件：<input type="text" name="mail"><br>
	主題：<input type="text" name="subject"><br>
	內容：<textarea rows=5 name="content"></textarea><br>
	<input type="submit" name="Submit" value="送出">
	<input type="Reset" name="Reset" value="重新填寫">
	</form>
	<br>
	<hr>

	<img src="../shopcar/images/08.png" width="400" style="float: left" height="250"><br>
	<a href="board8/view.jsp?page=1">觀看BMW 8留言</a><p>
	BMW 8.
	<form name="form1" method="post" action="board8/add.jsp" >
	郵件：<input type="text" name="mail"><br>
	主題：<input type="text" name="subject"><br>
	內容：<textarea rows=5 name="content"></textarea><br>
	<input type="submit" name="Submit" value="送出">
	<input type="Reset" name="Reset" value="重新填寫">
	</form>
	<br>
	<hr>
<br>
<br>
<%
}
else{
	con.close();//結束資料庫連結
%>
<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="../../../BMW(logined)\BMW\html\shopcar/user.jsp" method="POST">
帳號：<input type="text" name="id" /><br />
密碼：<input type="password" name="pwd" /><br />
<input type="submit" name="b1" value="登入" />
</form>
<%
}
%>
