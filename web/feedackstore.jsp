<%-- 
    Document   : feedackstore
    Created on : Mar 13, 2018, 12:17:17 PM
    Author     : Anbu.S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="demo"
                           driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/health" 
                           user="root" password=""/>
                
        <sql:update dataSource="${demo}" var="result"> 
            
            INSERT INTO feedback VALUES(?,?,?);
            
            <sql:param value="${param.name}" />
            <sql:param value="${param.amail}" />
             <sql:param value="${param.comment}" />
            
       </sql:update>
      
         <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
         </c:if>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="index.html">GO BACK</a>
   
      

    </body>
</html>
