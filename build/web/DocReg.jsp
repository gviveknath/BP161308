<%-- 
    Document   : DocReg
    Created on : Mar 23, 2018, 10:03:41 AM
    Author     : Anbu.S
--%>
<%@ page import="java.sql.*;"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body background="Photo/colored-smoke-bombs-wallpaper-4.jpg">
        
    
        <table border="5" align="center">
<%@ page import="java.sql.*;"%>
<%
	String user=request.getParameter("user_name").toLowerCase();
	String pass=request.getParameter("password").toLowerCase();
	String aemail=request.getParameter("alternate_email").toLowerCase();
	String sex=request.getParameter("sex").toLowerCase();
	String dy=request.getParameter("day").toLowerCase();
	String mth=request.getParameter("month").toLowerCase();
	String yr=request.getParameter("year").toLowerCase();
	String ordate=dy+"-"+mth+"-"+yr;
	
	String addr=request.getParameter("address").toLowerCase();
	String ti=request.getParameter("time").toLowerCase();
        String sp=request.getParameter("spec").toLowerCase();
	String mo=request.getParameter("phone").toLowerCase();
 %>
<%	
     	try{
            String DRIVER="com.mysql.jdbc.Driver";
            String URL="jdbc:mysql://localhost:3306/health";
            String UN="root";
            String PW="";
             Class.forName(DRIVER);
            Connection con=DriverManager.getConnection(URL,UN,PW);
            Statement st=con.createStatement();
            PreparedStatement sst=con.prepareStatement("INSERT INTO doctor VALUES(?,?,?,?,?,?,?,?,?,?)");
        java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yyyy");
 		String setdate=fmt.format(new java.util.Date());
		String cmd="INSERT INTO doctor VALUES(?,?,?,?,?,?,?,?,?,?)";
		String data[]={user,pass,aemail,sex,ordate,addr,ti,sp,mo,setdate};
		sst=con.prepareStatement(cmd);
		for(int dt=0;dt<data.length;dt++) sst.setString((dt+1),data[dt]);
		int eff=sst.executeUpdate();
		if(eff>0) {
			session.setAttribute("login",user);
			out.println("<link rel=stylesheet href='health.css'><BR><Br><Br><Center><h4>Registration Completed Successfully!<BR>Thanks For Exerting Our Services</h4><br><br><center><a href=\"admin.jsp\">Continue</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=\"Logout.jsp\">Logout</a>");
		}
		}catch(Exception e)	{
   		String msgs=" ";
		msgs=(e.getMessage().toLowerCase().indexOf("unique")!=-1)?"The User Name U Specified is Already Existed.<BR><BR>Please Choose Another Name":"Malicious Exception Occured"+e.toString();
    	out.println("<link rel=stylesheet href='health.css'><BR><Br><Br><Center><h4>Sorry! Error Occured While Processing Ur Transaction<BR>"+msgs+"</h4><br><br><center><a href=\"javascript:history.back()\">Continue</a>");
	}
%>
            
    </body> 
</html>

    

