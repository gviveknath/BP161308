<%-- 
    Document   : adminvalidation
    Created on : Mar 22, 2018, 10:18:56 PM
    Author     : Anbu.S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
       
        <%  
    String username=request.getParameter("s1");
    String password=request.getParameter("s2");
    if((username.equals("viveknath") && password.equals("gvvvv")))
    {
        session.setAttribute("s1",username);
        response.sendRedirect("admin.jsp");
    }
    else
    response.sendRedirect("error.jsp");
    
    %>


    </body>
</html>
