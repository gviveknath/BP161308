 <%@ page import="java.sql.*"%>

<%
            String DRIVER="com.mysql.jdbc.Driver";
            String URL="jdbc:mysql://localhost:3306/health";
            String UN="root";
            String PW="";
            String action=request.getParameter("action");
            if(action.equals("sigin"))
            {
            String name=request.getParameter("s1");
            String pass=request.getParameter("s2");
            try{
                
                Class.forName(DRIVER);
                Connection con=DriverManager.getConnection(URL,UN,PW);
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from health_signup where user='"+name+"'and pass='"+pass + "'");
                if(rs.next()){
                    response.sendRedirect("login.jsp");
                }
                else{
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Username and Password donot match')");
                    out.println("location='index.html';");
                    out.println("</script>");
                }


                
            }
            catch(Exception e){
                out.println(e);
            }
            }
            else if(action.equals("signup")){
                response.sendRedirect("signup.jsp");
            }
%>                                                                                                                                                                                                                                                                                                                                                                 