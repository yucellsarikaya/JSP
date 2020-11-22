<%-- 
    Document   : form3
    Created on : 22.Kas.2020, 23:52:14
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
    
    <form action="update.jsp" method="GET">
        <label>Id:</label><br>
        <input type="number" name="id"><br><br>
        <label>Güncellenecek verinin yeni bilgilerini giriniz</label><br><br>
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
