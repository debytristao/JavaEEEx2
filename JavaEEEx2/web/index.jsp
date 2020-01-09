<%-- 
    Document   : index
    Created on : Jan 9, 2020, 10:07:04 AM
    Author     : Debora
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
            String countList = "";
            String message = "";
            
             String valueToStart = "";
                String valueToCountTo = "";

            try {
                //Getting querystring params
                if (request.getParameter("start") != null) {
                    valueToStart = request.getParameter("start");
                }

                if (request.getParameter("countto") != null) {
                    valueToCountTo = request.getParameter("countto");
                }

            } catch (Exception e) {
                message = "<p style='color:red;'>An error occured </p>";
                message += "<p style='color:red;'>" + e.getMessage() + "</p>";
            }


        %>
        <%= valueToStart%>
        <%= valueToCountTo%>
        <%= message%>
        
    </body>
</html>
