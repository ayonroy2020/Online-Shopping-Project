<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	try
	{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		String q1 = "create table users(name varchar(100),email varchar(100)primary key,mobileNumber varchar2(20),securityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
		String q2 = "create table product(id number,name varchar2(500),category varchar2(200),price number,active varchar2(10))";
		String q3 = "create table cart(email varchar2(100),product_id number(5),quantity number(5),price number(8),total number(10),address varchar2(500),city varchar2(100),state varchar2(100),country varchar2(100),mobileNumber varchar2(20),orderDate varchar2(100),deliveryDate varchar2(100),paymentMethod varchar2(100),transactionId varchar2(100),status varchar2(10))";
		String q4 = "CREATE TABLE message(id NUMBER(6),email VARCHAR2(100),subject VARCHAR2(200),body VARCHAR2(1000),PRIMARY KEY(id))";
		System.out.println(q1);
		System.out.println(q2);
		System.out.println(q3);
		System.out.println(q4);
		//st.execute(q1);
		//st.execute(q2);
		//st.execute(q3);
		st.execute(q4);
		System.out.print("Table Created");
		con.close();
	}
	catch(Exception e)
	{
		System.out.print(e);
	}
%>