<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<%@page import="uts.isd.model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/register.css">
        <link rel="stylesheet" href="css/layout.css">
        <title>Register</title>
    </head>
    <%
            String submitted = request.getParameter("submitted");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            String favCol = request.getParameter("favcol");
            
            String tos = request.getParameter("tos");
            
            if(submitted != null){
                User user = new User(email, name, phone, password, gender, favCol);
                session.setAttribute("user", user);
        }
    %>
    
    <% if (favCol != null) { %>
        <body bgcolor="<%=favCol%>">
    <% } else { %>
        <body >
    <% } %>
    
        <% if(submitted == null) {%>
        <form>
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" placeholder="email" />
            <label for="name">Name:</label>
            <input name="name" id="name" placeholder="name" />
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" placeholder="password" />
            <label for="gender">Gender:</label>
            <input name="gender" id="gender" placeholder="gender" />
            <label for="favcol">Favourite Colour:</label>
            <input type="color" name="favcol" id="favcol" placeholder="favcol" />
            <br/>
            <label for="tos">TOS:</label>
            <input type="checkbox" name="tos" id="tos" placeholder="tos" />
            <br/>
            <input type="hidden" name="submitted" id="submitted" value="true" />
            <button type="submit">Register Account</button>
        </form>
        <% } else { %>
            <% if(tos == null) { %>
               <h1>You have not accepted the terms of service, your account has not been created!</h1>
            <% } else { %>
               <h1>Welcome, <%=name %></h1>
               <h1>Email: <%=email %></h1>
               <h1>Gender: <%=gender %></h1>
               <h1>Password: <%=password %></h1>
           <% } %>
        <% } %>
    </body>
</html>
