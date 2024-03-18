<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<html>
    <head><title>結帳</title></head>
    <body>
	<%
		
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
	int price=0;
	%>
	<%	
			price=0;
			String FO[]=request.getParameterValues("buy");
			String list="";
			if (FO != null && FO.length != 0) {
				for (int i = 0; i < FO.length; i++) {
					if(FO[i].equals("1")){
						sql = "INSERT `orders`(`Uname`,`Pname`,`series`,`total`,`reach`) VALUES ('"+ name +"','118i Edition sport','1','156','未到')";
								con.createStatement().execute(sql);
						sql = "SELECT * FROM `shopcar` WHERE `id`='1';"; 
						ResultSet rs1 =con.createStatement().executeQuery(sql);
						String invent1="";
						while(rs1.next()){
							 invent1= rs1.getString(9);				
						}
						int i1 = Integer.parseInt(invent1);
						i1--;
						String str1 = Integer.toString(i1);
						sql = "UPDATE `shopcar` SET `inventory`='"+str1+"' WHERE `id`='1'";
						con.createStatement().execute(sql);
						

						
						
						price+=156;
						list+="<hr>118i Edition sport (156萬元)<br><img src='images/01.png' width=400 height=250><hr><br>";
					}
					if(FO[i].equals("2")){
						sql = "INSERT `orders`(`Uname`,`Pname`,`series`,`total`,`reach`) VALUES ('"+ name +"','Gran coupe 218i 運動版','2','166','未到')";
						con.createStatement().execute(sql);
						sql = "SELECT * FROM `shopcar` WHERE `id`='2';"; 
						ResultSet rs2 =con.createStatement().executeQuery(sql);
						String invent2="";
						while(rs2.next()){
							 invent2= rs2.getString(9);				
						}
						int i2 = Integer.parseInt(invent2);
						i2--;
						String str2 = Integer.toString(i2);
						sql = "UPDATE `shopcar` SET `inventory`='"+str2+"' WHERE `id`='2'";
						con.createStatement().execute(sql);
						price+=166;
						list+="<hr>Gran coupe' 218i 運動版 (166萬元)<br><img src='images/02.png' width=400 height=250><hr><br>";
					}
					if(FO[i].equals("3")){
						sql = "INSERT `orders`(`Uname`,`Pname`,`series`,`total`,`reach`) VALUES ('"+ name +"','318i Luxury','3','203','未到')";
						con.createStatement().execute(sql);
						sql = "SELECT * FROM `shopcar` WHERE `id`='3';"; 
						ResultSet rs3 =con.createStatement().executeQuery(sql);
						String invent3="";
						while(rs3.next()){
							 invent3= rs3.getString(9);				
						}
						int i3 = Integer.parseInt(invent3);
						i3--;
						String str3 = Integer.toString(i3);
						sql = "UPDATE `shopcar` SET `inventory`='"+str3+"' WHERE `id`='3'";
						con.createStatement().execute(sql);
						price+=203;
						list+="<hr>318i Luxury (203萬元)<br><img src='images/03.png' width=400 height=250><hr><br>";
					}
					if(FO[i].equals("4")){
						sql = "INSERT `orders`(`Uname`,`Pname`,`series`,`total`,`reach`) VALUES ('"+ name +"','coupe' 420i M sport','4','236','未到')";
						con.createStatement().execute(sql);
						sql = "SELECT * FROM `shopcar` WHERE `id`='4';"; 
						ResultSet rs4 =con.createStatement().executeQuery(sql);
						String invent4="";
						while(rs4.next()){
							 invent4= rs4.getString(9);				
						}
						int i4 = Integer.parseInt(invent4);
						i4--;
						String str4 = Integer.toString(i4);
						sql = "UPDATE `shopcar` SET `inventory`='"+str4+"' WHERE `id`='4'";
						con.createStatement().execute(sql);
						price+=236;
						list+="<hr>coupe' 420i M sport (236萬元)<br><img src='images/04.png' width=400 height=250><hr><br>";
					}
					if(FO[i].equals("5")){
						sql = "INSERT `orders`(`Uname`,`Pname`,`series`,`total`,`reach`) VALUES ('"+ name +"','Sedan 520i sport','5','265','未到')";
						con.createStatement().execute(sql);
						sql = "SELECT * FROM `shopcar` WHERE `id`='5';"; 
						ResultSet rs5 =con.createStatement().executeQuery(sql);
						String invent5="";
						while(rs5.next()){
							 invent5= rs5.getString(9);				
						}
						int i5 = Integer.parseInt(invent5);
						i5--;
						String str5 = Integer.toString(i5);
						sql = "UPDATE `shopcar` SET `inventory`='"+str5+"' WHERE `id`='5'";
						con.createStatement().execute(sql);
						price+=265;
						list+="<hr>Sedan 520i sport (265萬元)<br><img src='images/05.png' width=400 height=250><hr><br>";
					}
					if(FO[i].equals("6")){
						sql = "INSERT `orders`(`Uname`,`Pname`,`series`,`total`,`reach`) VALUES ('"+ name +"','Gran torismo 630i M sport','6','365','未到')";
						con.createStatement().execute(sql);
						sql = "SELECT * FROM `shopcar` WHERE `id`='6';"; 
						ResultSet rs6 =con.createStatement().executeQuery(sql);
						String invent6="";
						while(rs6.next()){
							 invent6= rs6.getString(9);				
						}
						int i6 = Integer.parseInt(invent6);
						i6--;
						String str6 = Integer.toString(i6);
						sql = "UPDATE `shopcar` SET `inventory`='"+str6+"' WHERE `id`='6'";
						con.createStatement().execute(sql);
						price+=365;
						list+="<hr>Gran torismo 630i M sport (365萬元)<br><img src='images/06.png' width=400 height=250><hr><br>";
					}
					if(FO[i].equals("7")){
						sql = "INSERT `orders`(`Uname`,`Pname`,`series`,`total`,`reach`) VALUES ('"+ name +"','短軸版 730i 層峰旗艦版','7','418','未到')";
						con.createStatement().execute(sql);
						sql = "SELECT * FROM `shopcar` WHERE `id`='7';"; 
						ResultSet rs7 =con.createStatement().executeQuery(sql);
						String invent7="";
						while(rs7.next()){
							 invent7= rs7.getString(9);				
						}
						int i7 = Integer.parseInt(invent7);
						i7--;
						String str7 = Integer.toString(i7);
						sql = "UPDATE `shopcar` SET `inventory`='"+str7+"' WHERE `id`='7'";
						con.createStatement().execute(sql);
						price+=418;
						list+="<hr>短軸版 730i 層峰旗艦版 (418萬元)<br><img src='images/07.png' width=400 height=250><hr><br>";
					}
					if(FO[i].equals("8")){
						sql = "INSERT `orders`(`Uname`,`Pname`,`series`,`total`,`reach`) VALUES ('"+ name +"','Convertible M850i xDrive','8','698','未到')";
						con.createStatement().execute(sql);
						sql = "SELECT * FROM `shopcar` WHERE `id`='8';"; 
						ResultSet rs8 =con.createStatement().executeQuery(sql);
						String invent8="";
						while(rs8.next()){
							 invent8= rs8.getString(9);				
						}
						int i8 = Integer.parseInt(invent8);
						i8--;
						String str8 = Integer.toString(i8);
						sql = "UPDATE `shopcar` SET `inventory`='"+str8+"' WHERE `id`='8'";
						con.createStatement().execute(sql);
						price+=698;
						list+="<hr>Convertible M850i xDrive (698萬元)<br><img src='images/08.png' width=400 height=250><hr><br>";
						
					}	
				}
				out.println("成功了!您選購的車有:<br>"+list);
				out.println("<hr>金額:"+price+"萬元<br><br>");
				out.println("<form action='../shopcar.html' method=''><center><input type='submit' name='' value='結帳'></input></center></form>");	
				con.close();//結束資料庫連結				
			}
			else{
				out.println("失敗了!務必要選購車子!!<br><a href='user.jsp'>按此</a>返回訂購畫面");
				con.close();//結束資料庫連結
			}
		%>

    </body>
</html>
		