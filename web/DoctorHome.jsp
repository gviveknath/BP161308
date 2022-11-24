<%-- 
    Document   : DoctorHome
    Created on : Mar 23, 2018, 10:59:51 AM
    Author     : Anbu.S
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
    
     
       <sql:setDataSource var="demo"
                           driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/health" 
                           user="root" password=""/>
       <sql:query dataSource="${demo}" var="data">
           SELECT * FROM doctor;
       </sql:query>
      
           
           <font size="5" color="#848482">Welcome To</font>
           <sql:query dataSource="${demo}" var="data1">
            SELECT * FROM doctor;
        </sql:query>
            <c:forEach var="row" items="${data1.rows}"> 
                 <font size="5" color="#848482"><c:out value="${row.name}"/></font>
     
           
            </c:forEach>
                
       
       
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
                        <form action="DoctorProfile.jsp">
                           <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                                <b>My Details</b>
</button>    
                        </form>
                    </td>
                    <td>
                        <form action="#">
                            <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
    
                                 <b>Notifications</b>
</button>   
                        </form>
                    </td>
                    
                        <td>
                        <form action="#">
                    <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                                  <b>View Disease</b>
</button>   
                </form>
                        </td>
                        <td>
                        <form action="ViewPatientDoctor.jsp">
                    <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                                  <b>View Patient </b>
</button>   
                </form>
                        </td>
                        <td>
                <form action="doclog.html">
                    <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                        <b>Logout</b>
</button>   
                </form>
                        </td>
                        
      
        </table>
        
</body>
    
</html>
