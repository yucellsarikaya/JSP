<%-- 
    Document   : form1
    Created on : 22.Kas.2020, 23:32:34
    Author     : Yücel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
     <form action="delete.jsp" method="GET">
        <label>Silinecek verinin Idsini girin:</label><br>
        <input type="number" name="id"><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
