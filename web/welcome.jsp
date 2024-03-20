<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String password = request.getParameter("password");
            String favCol = request.getParameter("favcol");
            
            String tos = request.getParameter("tos");
    %>
    <body bgcolor="<%=favCol %>">
         <% if(tos == null) { %>
            <h1>You have not accepted the terms of service, your account has not been created!</h1>
         <% } else { %>
            <h1>Welcome, <%=name %></h1>
            <h1>Email: <%=email %></h1>
            <h1>Gender: <%=gender %></h1>
            <h1>Password: <%=password %></h1>
        <% } %>
    </body>
</html>
