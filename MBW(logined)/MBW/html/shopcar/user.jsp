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
  
%>
		<h1>購物車</h1>
		哈囉，<%=name%>，<a href='../noInjection/logout.jsp'>登出</a><br />
		<a href="../../index.html">點此返回首頁</a>
		<hr>
		<%!
			int left=0;
		%>
		<form action="checkout.jsp" method="POST">
		<%
		sql="SELECT * FROM `shopcar`"; //算出共幾筆留言
		ResultSet rs2=con.createStatement().executeQuery(sql);
		 while(rs2.next()){  	 
				 out.println("<img src='"+rs2.getString(2)+"/"+rs2.getString(3)+"' style='float: left' width=400 height=250><br>");
				 out.println("<p>車系:"+rs2.getString(1)+" 系<br>");
                 out.println("名稱:"+rs2.getString(4)+"<br>");
                 out.println("價錢:"+rs2.getString(5)+"萬<br>");
				 out.println("0-100加速:"+rs2.getString(6)+"秒(s)<br>");
				 out.println("排氣量:"+rs2.getString(7)+" cc<br>");
                 out.println("引擎:"+rs2.getString(8)+"<br>");
				  out.println("庫存:"+rs2.getString(9)+"<br>");
				 if( Integer.parseInt(rs2.getString(9)) == 0 ){
					 out.println("<b>&emsp;&emsp;&emsp;無庫存</b></p><br><br><br><br><hr>");
				 }
				 else{
					 out.println("&emsp;<input type='checkbox' name='buy' value='"+rs2.getString(1)+"'><b>訂購選取</b></p><br><br><br><br><hr>");
				 }

		 }
		   con.close();//結束資料庫連結
		%>
	
		<center>
		<br>
		<input type="submit" name="b5"  value="確認" style="text-align: center"></input>
		</center>
		</form>

		
		<%
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
