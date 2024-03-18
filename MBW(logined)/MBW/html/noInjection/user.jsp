<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
  int counter;
  String strNo = (String)application.getAttribute("counter");//讀application變數
  counter = Integer.parseInt(strNo); //轉成整數
  counter++;                                        //計數器加1
  strNo = String.valueOf(counter);    //轉成字串
  application.setAttribute("counter", strNo);//寫application變數
%>
您是第<%= counter %>位貴客！</h3><br>

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
  
%>

哈囉，<%=name%>，<a href='logout.jsp'>登出</a><br />
請修改會員資料：<br />
<form action="update.jsp" method="POST">
您的帳號：<input type="text" name="id" value="<%=id%>" />
您的密碼：<input type="password" name="pwd" value="<%=pwd%>" />
<input type="submit" name="b1" value="更新資料" /> <br>
您的姓名：<input type="name" name="name" value="<%=name%>" />
您的電子郵件：<input type="mail" name="mail" value="<%=mail%>" /><br>
(請輸入英文名字)
</form>
<a href="../../index.html">點此返回首頁</a>
<hr>
<%
	 sql = "SELECT * FROM `orders` WHERE `Uname` ='" + name + "'";
     rs=con.createStatement().executeQuery(sql);
  %>
	 <font color="blue" size="5"><%=name%>的訂單如下：</font><p> 
	 <%
         while(rs.next()){ //要從檔頭移到第一筆, 指標才正確
    %>                                         
              
              訂單編號：<%=rs.getString(1)%><br>
              訂購人姓名：<%=rs.getString(2)%><br>
			  產品名稱：<%=rs.getString(3)%><br>
			  系列：<%=rs.getString(4)%><br>
              總額：<%=rs.getString(5)%>萬元<br>
			  是否送達：<%=rs.getString(6)%><p>
			  <hr>
              <%}
			  %>
<%
  con.close();//結束資料庫連結
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
