<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html>
<head>
<title>BMW 6</title>
</head>
<body>

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
<center>
	<h1>留言板</h1>
</center>
哈囉，<%=name%>，<a href='../../noInjection/logout.jsp'>登出</a><br >
<a href="../../../index.html">點此返回首頁</a>
<hr>

<%
    try {
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
           sql="SELECT * FROM `board6`"; //算出共幾筆留言
           ResultSet rs1=con.createStatement().executeQuery(sql);

           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs1.last();
           int total_content=rs1.getRow();

           out.println("共"+total_content+"筆留言<p>");
           
           //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
           out.println("請選擇頁數");
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
           for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
			   out.print("<a href='view.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白

			

           //讀取page變數
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "0";          
           int current_page=Integer.valueOf(page_string);
           if(current_page==0) //若未指定page, 令current_page為1
	          current_page=1;
	       //計算開始記錄位置   
		   out.print("共"+page_num+"頁，目前在第"+current_page+"頁<p>");
		   out.print("<center><img src='../../shopcar/images/06.png' width='400' height='250'><br>BMW 1.</center>");
		  out.println("<br><hr>");

		
//Step 5: 顯示結果 
           int start_record=(current_page-1)*5;
           //遞減排序, 讓最新的資料排在最前面
           sql="SELECT * FROM `board6` ORDER BY `GBNO` DESC LIMIT ";
           sql+=start_record+",5";

// current_page... SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT
//      current_page=1: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 0, 5
//      current_page=2: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 5, 5
//      current_page=3: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 10, 5
           rs1=con.createStatement().executeQuery(sql);
//  逐筆顯示, 直到沒有資料(最多還是5筆)
		   out.print("<a href='../user.jsp'>寫寫留言</a><p>");
           while(rs1.next())
                {
                 out.println("留言主題:"+rs1.getString(4)+"<br>");
                 out.println("訪客姓名:"+rs1.getString(2)+"<br>");
                 out.println("E-mail:"+rs1.getString(3)+"<br>");
                 out.println("留言內容:"+rs1.getString(5)+"<br>");
                 out.println("留言時間:"+rs1.getString(6)+"<br><hr>");
				 out.println("IP:"+rs1.getString(7)+"<br><hr>");
          }
		   out.println("<br><br><br>");
//Step 6: 關閉連線
          con.close();
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
		   
    }
%>
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
</body>
</html>
