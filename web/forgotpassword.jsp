<%-- 
    Document   : forgotpassword
    Created on : Feb 19, 2018, 9:30:16 AM
    Author     : Anbu.S
--%>


 <%@ page import="java.sql.*"%>
<%
    String DRIVER="com.mysql.jdbc.Driver";
            String URL="jdbc:mysql://localhost:3306/health";
            String UN="root";
            String PW="";
try	{
    
String user=request.getParameter("user");
String hintqus=request.getParameter("hint_question");
String hintans=request.getParameter("hint_answer");
 Class.forName(DRIVER);
Connection con=DriverManager.getConnection(URL,UN,PW);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from health_signup where user='"+user+"' and hqus='"+hintqus+"' and hans='"+hintans+"'");

if(!rs.next()) {
			out.println("<BR><BR><BR><center><h4>Incorrect Details</h4></center><BR><BR>");
			out.println("<center><a href=\"javascript:history.back()\">Continue</a>");
			return;
   }  else  {
           out.println("<BR><BR><BR><center><h4>Your's Password is :&nbsp;"+rs.getString("pass")+"</h4></center><BR><BR>");
           out.println("<center><a href=\"forgot.html\">Continue</a>");}
	}catch(Exception e)	{
          out.println("<BR><BR><BR><center><h4>Unable To Retrieve The Password Due to The Error <BR><BR>"+e.toString()+"</h4></center><BR><BR>");
		  out.println("<center><a href=\"javascript:history.back()\">Continue</a>");
	}
%>



    </body>
</html>
