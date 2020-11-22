<%-- 
    Document   : read
    Created on : 22.Kas.2020, 22:41:11
    Author     : Yücel
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from employees");
    %>
        <table border = "1" width = "100%">
         <tr><th colspan="5">Kayıt Listesi</th></tr>
         <tr>
            <th>ID</th>
            <th>İsim</th>
            <th>Soyisim</th>
            <th>Yaş</th>
            <th>Şehir</th>
         </tr>
        <%
        while(rs.next()){
            out.print("<tr>");
            out.print("<th>" + rs.getString(1) + "</th>" + "<th>" + rs.getString(2) + "</th>" + "<th>" + rs.getString(3) + "</th>" + "<th>" + rs.getString(4) + "</th>" + "<th>" + rs.getString(5) + "</th>");
            out.print("</tr>");
        }
        out.print("<hr><a href='index.html'>  Anasayfa </a>");
        %>
        </table>
</body>
</html>

