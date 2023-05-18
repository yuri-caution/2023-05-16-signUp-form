<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <%
        String ID=request.getParameter("ID");
        out.println("ID:"+ID);
    %>
</body>
</html>