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
				String new_id =request.getParameter("insertPid");
				String new_file_path =request.getParameter("insertPimgfolder");
				String new_ad_file =request.getParameter("insertPimgname");
				String new_name =request.getParameter("insertPname");
				String new_price =request.getParameter("insertPprice");
				String new_accelerated =request.getParameter("insertPacc");
				String new_egd =request.getParameter("insertPegd");
				String new_eg =request.getParameter("insertPeg");
				String new_inventory =request.getParameter("insertPinventory");
				String new_series =request.getParameter("insertPseries");
	
				
	//Step 3: 選擇資料庫
						con.createStatement().execute("use `members`");  
	//Step 4: 執行 SQL 指令        
						String sql = "INSERT `shopcar`(`id`,`file_path`,`ad_file`,`name`,`price`,`accelerated`,`egd`,`eg`,`inventory`,`series`) " +
									 "VALUES ('"+new_id+"','"+new_file_path+"','"+new_ad_file+"','"+new_name+"','"+new_price+"','"+new_accelerated+"','"+new_egd+"','"+new_eg+"','"+new_inventory+"','"+new_series+"')";

						//SQL語法，這裡需要用單引號, 59有無單引號都可
						boolean no= con.createStatement().execute(sql); //執行成功傳回false
						//int no=con.createStatement().executeUpdate(sql); //可回傳異動數
						if (!no){
	//Step 5: 顯示結果 
							out.println("新增成功<br>");
							out.println("<a href='viewproduct.jsp'>按此</a>返回商品管理");
						}
						else{
							out.println("新增失敗");  
							out.println("<a href='viewproduct.jsp'>按此</a>返回商品管理");
						}
	//Step 6: 關閉連線  con.close();
				   
	
			  }      
			}
          catch (SQLException sExec) {
              out.println("SQL錯誤"+sExec.toString());
			  out.println("<br>帳號跟別人重複!!<br><a href='../end-term.html'>按此</a>重新註冊");
          }
    }     
    catch (ClassNotFoundException err) {
          out.println("class錯誤"+err.toString());
    }    
 %>
    </body>
</html>