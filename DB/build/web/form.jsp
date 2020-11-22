<%-- 
    Document   : index
    Created on : 22.Kas.2020, 20:50:17
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
    <form action="create.jsp" method="POST">
        <label>Id:</label><br>
        <input type="number" name="id"><br>
        <label>İsim:</label><br>
        <input type="text" name="name"><br> 
        <label>Soyisim:</label><br>
        <input type="text" name="surname"><br>
        <label>Yaş</label><br>
        <input type="number" name="age"><br>
        <label>Şehir</label><br>
        <input type="text" name="city"><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
