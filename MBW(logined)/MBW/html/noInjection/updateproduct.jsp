<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
	String changename ="";
	changename=new String(request.getParameter("changename"));
	String imagefolder =new String(request.getParameter("imagefolder"));
	String imageName =new String(request.getParameter("imageName"));
	String pname =new String(request.getParameter("pname"));
	String pprice =new String(request.getParameter("pprice"));
	String pac=new String(request.getParameter("pac"));
	String egd =new String(request.getParameter("egd"));
	String inventory =new String(request.getParameter("inventory"));
if(session.getAttribute("id") != "" ){
    if(request.getParameter("changename")!= ""){
		if(imagefolder!= ""){
			sql = "UPDATE `shopcar` SET `file_path`='"+imagefolder+"' WHERE `series`='"+changename+"'";
		con.createStatement().execute(sql);
		}
		if(imagefolder!=""){
		sql = "UPDATE `shopcar` SET `ad_file`='"+imageName+"' WHERE `series`='"+changename+"'";
		con.createStatement().execute(sql);
		}
		if(pname!=""){
		sql = "UPDATE `shopcar` SET `name`='"+pname+"' WHERE `series`='"+changename+"'";
		con.createStatement().execute(sql);
		}
		if(pprice!=""){
		sql = "UPDATE `shopcar` SET `price`='"+pprice+"' WHERE `series`='"+changename+"'";
		con.createStatement().execute(sql);
		}
		if(pac!=""){
		sql = "UPDATE `shopcar` SET `accelerated`='"+pac+"' WHERE `series`='"+changename+"'";
		con.createStatement().execute(sql);
		}
		if(egd!=""){
		sql = "UPDATE `shopcar` SET `egd`='"+egd+"' WHERE `series`='"+changename+"'";
		con.createStatement().execute(sql);
		}
		if(inventory!=""){
		sql = "UPDATE `shopcar` SET `inventory`='"+inventory+"' WHERE `series`='"+changename+"'";
		con.createStatement().execute(sql);
		}
	con.close();//結束資料庫連結
	
	out.print("更新成功!! 請<a href='viewproduct.jsp'>按此</a>回商品管理頁面!!");
	}
	else{
	
	  con.close();//結束資料庫連結	
	  out.print("更新失敗!! <br>請填寫完整，<a href='viewproduct.jsp'>按此</a>回商品管理頁面!!");
	  
	}
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