<%-- 
    Document   : admin
    Created on : Feb 19, 2018, 10:24:05 AM
    Author     : Anbu.S
--%>

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
                        <form action="ViewPatient.jsp">
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
                        
      
        
</body>
    
</html>

