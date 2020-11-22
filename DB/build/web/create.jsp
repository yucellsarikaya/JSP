<%-- 
    Document   : create
    Created on : 22.Kas.2020, 21:24:22
    Author     : Yücel
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
 
    <%
        int idF=Integer.valueOf(request.getParameter("id"));  
        String nameF=request.getParameter("name");  
        String surnameF=request.getParameter("surname");  
        int ageF=Integer.valueOf(request.getParameter("age"));
        String cityF = request.getParameter("city");
        out.print(idF + "<br/>");
        out.print(nameF+ "<br/>");
        out.print(surnameF + "<br/>");
        out.print(ageF + "<br/>");
        out.print(cityF + "<br/><hr/>");  
    %>
    
    <%
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/jsp?autoReconnect=true&useSSL=false";
        String user = "root";
        String pass ="1234";
        Connection con = null;
        try {
        Class.forName(driver);
        } catch (Exception e) {
        System.exit(0);
        }
        try {
        con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
        System.exit(0);
        }
    %>
    
    <%
     try{
        PreparedStatement preStmt;
        preStmt = con.prepareStatement("INSERT INTO employees (id, name, surname, age, city) VALUES (?, ?, ?, ?, ?)");
        preStmt.setInt(1, idF);
        preStmt.setString(2, nameF);
        preStmt.setString(3, surnameF);
        preStmt.setInt(4, ageF);
        preStmt.setString(5, cityF);
        preStmt.executeUpdate();
        preStmt.close();
        con.close();
        out.print("Kaydınız Veritabanımıza Yapıldı");
        out.print("<hr><a href='index.html'>  Anasayfa </a>");
        }
        catch (Exception e) {}
    %>
</body>
</html>
