<%-- 
    Document   : ViewPatient
    Created on : Mar 22, 2018, 10:43:25 PM
    Author     : Anbu.S
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
.button2 {
  padding: 5px 35px;
  font-size: 18px;
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body bgcolor="#F2F3F4">
<div class="container_12">
    <div class="grid_12">
        <h1 align="center"><font size="18" color="black"><b>Health Prediction System</b></font></h1>
    </div>
  </div>
    
       <%
           String name=request.getParameter("s1");
            String pass=request.getParameter("s2");
            if(name =="")
            {
                out.println("<h1>"+"DATA NOT FOUND"+"</h1>");
            }
       %>
       <sql:setDataSource var="demo"
                           driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/health" 
                           user="root" password=""/>
      

           
                

        
       
       
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
                        <form action="Addoctor.html">
                           <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                                <b>Add Doctor</b>
</button>    
                        </form>
                    </td>
                    <td>
                        <form action="Adddisease.html">
                            <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
    
                                 <b>Add Disease</b>
</button>   
                        </form>
                    </td>
                    
                        <td>
                        <form action="#">
                    <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                                  <b>View Patient</b>
</button>   
                </form>
                        </td>
                         <td>
                        <form action="ViewDoctor.jsp">
                    <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                                  <b>View Doctor</b>
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
                        <form action="ViewFeedback.jsp">
                    <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                                  <b> View Feedback </b>
</button>   
                </form>
                        </td>
                        <td>
                <form action="index.html">
                    <button class="button2" onsubmit=" validate()" onclick =" check(this.form) " >
                        <b>Logout</b>
</button>   
                </form>
                        </td>
                        
                        
      
         <sql:query dataSource="${demo}" var="data1">
            SELECT * FROM health_signup;
        </sql:query>
              
        <table border="1" width="100%" >
            <tr bgcolor="#C9FFE5"> 
                
            <th>NAME</th>
            <th>PASSWORD</th>
            <th>EMAIL</th>
            <th>SEX</th>
            <th>DATE OF BIRTH</th>
            <th>HINT QUESTION</th>
            <th>HINT ANSWER</th>
            <th>ADDRESS</th>
            <th>OCCUPATION</th> 
            <th>MOBILE NUMBER</th>
            <th>REGISTER DATE TIME</th>
        </tr> 
        <c:forEach var="row" items="${data1.rows}"> 
        <tr bgcolor="pink"> 
            <td><c:out value="${row.user}"/></td>
        <td><c:out value="${row.pass}"/></td>
         <td><c:out value="${row.aemail}"/></td> 
            <td><c:out value="${row.sex}"/></td> 
             <td><c:out value="${row.ordate}"/></td> 
            <td><c:out value="${row.hqus}"/></td>
             <td><c:out value="${row.hans}"/></td>
             <td><c:out value="${row.addr}"/></td> 
             <td><c:out value="${row.occ}"/></td> 
             <td><c:out value="${row.zod}"/></td> 
             <td><c:out value="${row.setdate}"/></td> 
             
         </tr>
        </c:forEach> 
        </table>
       
    </body>
</html>
