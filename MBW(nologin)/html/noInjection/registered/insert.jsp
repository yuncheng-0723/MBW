<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<html>
    <head>
        <title>JSP INSERT</title>
    </head>
    <body>

<%  		
        try {
//Step 1: 載入資料庫驅動程式 
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
//Step 2: 建立連線 
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
	        if(con.isClosed())
                    out.println("連線建立失敗");
                else
                {					
				String new_acount =request.getParameter("id");
				String new_password =request.getParameter("pwd");
				String new_name =request.getParameter("name");
				String new_email =request.getParameter("mail");
	
				
	//Step 3: 選擇資料庫
						con.createStatement().execute("use `members`");  
	//Step 4: 執行 SQL 指令        
						String sql = "INSERT `members`(`id`,`pwd`,`name`,`mail`) " +
									 "VALUES ('"+new_acount+"','"+new_password+"','"+new_name+"','"+new_email+"')";

						//SQL語法，這裡需要用單引號, 59有無單引號都可
						boolean no= con.createStatement().execute(sql); //執行成功傳回false
						//int no=con.createStatement().executeUpdate(sql); //可回傳異動數
						if (!no){
	//Step 5: 顯示結果 
							out.println("註冊成功<br>");
							out.println("<a href='../../end-term.html'>按此</a>返回登入");
						}
						else{
							out.println("註冊失敗");  
							out.println("<a href='registered.html'>按此</a>重新註冊");
						}
	//Step 6: 關閉連線  con.close();
				   
	
			  }      
			}
          catch (SQLException sExec) {
              out.println("SQL錯誤"+sExec.toString());
			  out.println("<br>帳號跟別人重複!!<br><a href='registered.html'>按此</a>重新註冊");
          }
    }     
    catch (ClassNotFoundException err) {
          out.println("class錯誤"+err.toString());
    }    
 %>
    </body>
</html>