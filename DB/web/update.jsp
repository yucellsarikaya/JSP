<%-- 
    Document   : update
    Created on : 22.Kas.2020, 23:51:45
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
        int idF=Integer.valueOf(request.getParameter("id"));  
        String nameF=request.getParameter("name");  
        String surnameF=request.getParameter("surname");  
        int ageF=Integer.valueOf(request.getParameter("age"));
        String cityF = request.getParameter("city");
    %>
    <%
         try{
            PreparedStatement preStmt;
            preStmt = con.prepareStatement("update employees set name=?, surname=?, age=?, city=? where id=?");
            preStmt.setString(1, nameF);
            preStmt.setString(2, surnameF);
            preStmt.setInt(3, ageF);
            preStmt.setString(4, cityF);
            preStmt.setInt(5, idF);
            int result = preStmt.executeUpdate();
            preStmt.close();
            con.close();
            out.print("Veri güncellendi");
            out.print("<hr><a href='index.html'>  Anasayfa </a>");
            }
            catch (Exception e) {
         }
    %> 
</body>
</html>
