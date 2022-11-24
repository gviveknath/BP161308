<%-- 
    Document   : Disease
    Created on : Apr 18, 2018, 5:28:16 PM
    Author     : Anbu.S
--%>

<%@ page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
   
<style>
.button2 {
  padding: 5px 55px;
  font-size: 20px;
  font-family:  initial;
  font-style:  italic;
  text-align: center;
  cursor: pointer;
  outline: black;
  color: #fff;
  background-color:blue;
  border: none;
  border-radius: 0px;
  box-shadow: 2 9px ;
}

.button2:hover {background-color:#CD9575}

.button2:active {
  background-color: #848482;
  box-shadow: 0 5px #848482;
  transform: translateY(4px);
}
</style>


    
</head>
<body bgcolor="#F2F3F4">
<div class="container_12">
    <div class="grid_12">
        <h1 align="center"><font size="18" color="black"><b>Health Prediction System</b></font></h1>
    </div>
  </div>
    
     
     
       
            <img src="images/report.jpg" alt="" style="width: 1350px;height:250px;">
               
        
    <div align="center"style=" border-bottom-color: black; background-color:#24A0ED; width :100%  "> 
            <table>
                <tr>
                    <td>
                        <form action="index.html">  
         <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " ><b> Home </b>
</button>  
                </form>
                    </td>
                    <td>
                        <form action="mydetail.jsp">
                           <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                                <b>My Details</b>
</button>    
                        </form>
                    </td>
                    <td>
                        <form action="#">
                            <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
    
                                 <b>Search Disease</b>
</button>   
                        </form>
                    </td>
                    
                        <td>
                        <form action="Doctor.html">
                    <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                                  <b>Search Doctor</b>
</button>   
                </form>
                        </td>
                        <td>
                        <form action="feedback.html">
                    <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                                  <b>Feedback </b>
</button>   
                </form>
                        </td>
                        <td>
                <form action="gallery.jsp">
                    <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                        <b>Logout</b>
</button>   
                </form>
                        </td>
                        
            </table>
             
  Please Select a Symtoms:
             
<html>
<form method="post">
Select Programming Language:
<select name="lang" onchange="location = this.value;">
<option value="fever.html">Fever</option>
<option value="Kidney.html">Kidney Pain</option>
<option value="Liver.html">Liver Pain</option>
<option value="Lung.html">Lung Problem</option>
<option value="Bonepain.html">Bone Pain</option>
<option value="Throat.html">Throat Pain</option>
<option value="Neck.html">Throat Pain</option>
</select>

</form>
</html>




<%
String dise=request.getParameter("lang");

Class.forName("com.mysql.jdbc.Driver").newInstance();  
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/health","root","");  

Statement st=con.createStatement();
int i=st.executeUpdate("insert into disease values('"+dise+"')");


%>


  </body>
    
</html>