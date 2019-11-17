<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%response.setContentType("application/vnd.ms-excel");response.setHeader("Content-Disposition","attachment;filename=result.xls");%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
		<%@ page import="java.io.*" %>
        <%@ page import="java.sql.*" %>
        <%@ page import="com.ashu.*" %>
        <%@ page import="java.util.*" %>
<%! String[] aaa=null;
int cou=0;
String finall=null;
%>
<%
String ss=request.getParameter("select");
if(ss.equals("amazon")){

//codes start
PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ashutosh","ashu");
        Statement st=conn.createStatement();
        rs=st.executeQuery("select * from tv");

        while(rs.next()){

        String sname=rs.getString(3);
        aaa=null;
        //out.println(sname);
        cou=0;
        SocketConnection sc=new SocketConnection();
        String abcd=sc.result(sname);
      	//out.println(abcd);
        StringTokenizer st1 = new StringTokenizer(abcd, ":!:");
      // while (st1.hasMoreTokens()) {
        //  out.print(st1.nextToken());
        //}
        out.print(st1.nextToken()+","+st1.nextToken()+st1.nextToken());
        out.println();

        //finall=aaa[0];
        //out.println(finall);


        }}else{

out.println("not found!!");
    }	
        	%>
      
</body>
</html>