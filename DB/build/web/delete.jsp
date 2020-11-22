<%-- 
    Document   : delete
    Created on : 22.Kas.2020, 23:12:25
    Author     : Yücel
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
        int idF = Integer.valueOf(request.getParameter("id"));
    %>
    <%
         try{
            PreparedStatement preStmt;
            preStmt = con.prepareStatement("delete from employees where id=?");
            preStmt.setInt(1, idF);
            int result = preStmt.executeUpdate();
            preStmt.close();
            con.close();
            out.print("Veri silindi");
            out.print("<hr><a href='index.html'>  Anasayfa </a>");
            }
            catch (Exception e) {
         }
    %> 
</body>
</html>
