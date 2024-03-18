<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html>
<head>
<title>add</title>
</head>
<body>
<%! //使用JSP宣告模式所定義的變數, 還有一項特色, 即只會執行一次
	String newline(String str)
	{
		int index=0;
		while((index=str.indexOf("\n"))!=-1) //尋找是否存在換行字元\n, 若有,  則使用<br>代替
		//str.indexOf()字元從0計算 abcd, 找c, 則傳回2
		//substring(0,2) 傳回0-1的字, 即ab
		str=str.substring(0,index)+"<br>"+str.substring(index+1);
		return(str);
	}

%>
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
<%
    try {
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
//           String new_name=request.getParameter("name");
           String new_subject=new String(request.getParameter("subject").getBytes("ISO-8859-1"),"UTF-8");
		    String new_mail=request.getParameter("mail");
           String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
		   new_content=newline(new_content); //使用<br>代替換行字元\n
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
		   String IP = request.getRemoteAddr();
//Step 4: 執行 SQL 指令	
           sql="INSERT board8 (`GBName`, `Mail` ,`Subject`, `Content`, `Putdate`, `IP`) ";
           sql+="VALUES ('" + name + "', ";
		   sql+="'"+new_mail+"\', ";
           sql+="'"+new_subject+"', ";
           sql+="'"+new_content+"', ";   
           sql+="'"+new_date+"', ";      
		   sql+="'"+IP+"')";    
           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("view.jsp?page=1");
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
