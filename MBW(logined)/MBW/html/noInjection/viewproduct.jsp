<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>管理者後台</title>
</head>
<body>
<h1>管理者登入</h1>

<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="USE `members`";
           con.createStatement().execute(sql);
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
           sql="SELECT * FROM `shopcar`"; //算出共幾筆留言
           ResultSet rs=con.createStatement().executeQuery(sql);

           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total_content=rs.getRow();
           out.println("共"+total_content+"個商品<p>");
          
           //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
           out.println("請選擇頁數");
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
           for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
			   out.print("<a href='viewproduct.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白

          

           //讀取page變數
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "0";          
           int current_page=Integer.valueOf(page_string);
           if(current_page==0) //若未指定page, 令current_page為1
	          current_page=1;
			 
	       //計算開始記錄位置   

		   out.print("共"+page_num+"頁，目前在第"+current_page+"頁<p>");
		    out.println("&emsp;<a href='../../index.html'>點此返回首頁</a>");
			 out.println("&emsp;<a href='view.jsp'>使用者帳號管理</a>");
			  out.println("&emsp;<a href='vieworder.jsp'>訂單管理</a>");
			   out.println("&emsp;<a href='viewproduct.jsp'>商品管理</a>");
		  out.println("<hr>");
				out.println("<h2>商品管理</h2><hr>");
				out.println("<h3>新增商品</h3>");
				out.println("<form action='insertproduct.jsp' method='POST'>");
				out.println("商品id(第幾個產品Ex:1.2.3...):<br><input type='text'  required='required' name='insertPid'></input><br>");
				out.println("商品圖片資料夾(images,記得去images資料夾新增商品圖片):<br><input type='text'  required='required' name='insertPimgfolder'></input><br>");
				out.println("商品圖片檔名(xx.png):<br><input type='text'  required='required' name='insertPimgname'></input><br>");
				out.println("商品名稱:<br><input type='text'  required='required' name='insertPname'></input><br>");
				out.println("商品價格:<br><input type='text'  required='required' name='insertPprice'></input><br>");
				out.println("0-100加速:<br><input type='text'  required='required' name='insertPacc'></input><br>");
				out.println("排氣量(cc):<br><input type='text'  required='required' name='insertPegd'></input><br>");
				out.println("引擎:<br><input type='text'  required='required' name='insertPeg'></input><br>");
				out.println("商品數量(inventory):<br><input type='text'  required='required' name='insertPinventory'></input><br>");
				out.println("系列(Ex:BMW1>1、BMW x1>x1):<br><input type='text'  required='required' name='insertPseries'></input><br><br>");
				out.println("<input type='submit'  name='insertbutton' value='新增'></input><br>");
				out.println("</form><hr>");
				out.println("<h2>商品</h2>");
		
//Step 5: 顯示結果 
           int start_record=(current_page-1)*5;
           //遞減排序, 讓最新的資料排在最前面
           sql="SELECT * FROM `shopcar` ORDER BY `id` ASC LIMIT ";
           sql+=start_record+",5";

// current_page... SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT
//      current_page=1: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 0, 5
//      current_page=2: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 5, 5
//      current_page=3: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 10, 5
           rs=con.createStatement().executeQuery(sql);
//  逐筆顯示, 直到沒有資料(最多還是5筆)
           while(rs.next())
                {
				 out.println("產品圖片資料夾(images):"+rs.getString(2)+"<br>");
                 out.println("產品圖片檔名(Ex:xx.png):"+rs.getString(3)+"<br>");
                 out.println("產品名稱: "+rs.getString(4)+"<br>");
                 out.println("產品價錢: "+rs.getString(5)+"<br>");
                 out.println("0-100加速: "+rs.getString(6)+" 秒(s)<br>");
				 out.println("排氣量: "+rs.getString(7)+" cc<br>");
				 out.println("引擎: "+rs.getString(8)+"<br>");
				 out.println("庫存: "+rs.getString(9)+" 輛<br>");

%>		
					<form action="updateproduct.jsp" method="POST">	
						注意!切勿亂修改!!!<br>
						輸入要修改內容的系列名稱(確認用Ex:BMW1>1、BMW X1>x1):<br><input required="required" type="text"  name="changename"></input><br>			

						產品圖片資料夾(images):<br><input type="text"  required="required" name="imagefolder"></input><br>

						產品圖片檔名(xx.png):&emsp;<br><input  required="required"type="text"  name="imageName"></input><br>

						產品名稱:<br><input type="text" required="required" name="pname"></input><br>

						產品價錢:<br><input type="text"  required="required" name="pprice"></input><br>

						0-100加速:<br><input type="text" required="required" name="pac"></input><br>

						排氣量:<br><input type="text"  required="required" name="egd"></input><br>


						庫存:<br><input required="required" type="text" name="inventory"></input><br>
							<input type="submit"  name="cb" value="修改"></input>
					</form>
			<br>
			<form action="deleteproduct.jsp" method="POST">
			輸入產品名稱刪除產品:<input type="text"  name="id"></input>
				<input type="submit" name="b2" value="刪除"></input>
			</form>
			<hr>
<%
          }
		  out.println("<br><br><br><br><br><br><br><br>");
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
