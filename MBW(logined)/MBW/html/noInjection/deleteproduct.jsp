<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<html>
    <head>
        <title>JSP DELETE</title>
    </head>
    <body>
       
	   <%  
//Step 1: 載入資料庫驅動程式 		
        try {
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
//Step 2: 建立連線
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
	        	if(con.isClosed())
                    out.println("連線建立失敗");
                else
                    {	
//Step 3: 選擇資料庫	
                    con.createStatement().execute("USE `members`");
//Step 4: 執行 SQL 指令
					String acount=  request.getParameter("id");
                    String sql = "DELETE FROM `shopcar` WHERE `name` = '"+acount+"' ";
                    //SQL語法，將辛普森同學刪除
                    int rec = con.createStatement().executeUpdate(sql);
//Step 5: 顯示結果 
                    if (rec>0){
						out.println("刪除成功<br>");
					   out.println("<a href='viewproduct.jsp'>按此</a>返回商品管理");
					}
					else{
 					   out.println("刪除失敗");
					   out.println("<a href='viewproduct.jsp'>按此</a>返回商品管理");
					}
//Step 6: 關閉連線                                      
					con.close();
                    }
                }              
            catch (SQLException sExec) {
                    out.println("SQL錯誤"+sExec.toString());
                }
            }        
        catch (ClassNotFoundException err) {
            out.println("class錯誤"+err.toString());
        }
       %>
    </body>
</html>
