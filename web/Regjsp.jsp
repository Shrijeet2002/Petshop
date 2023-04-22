<%@page language="java" import="java.sql.*"%>
<%@page import="java.io.*"%>
<%

try
{
    ResultSet rs =null;
            Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=    DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-8NR8BSH:1521:orcl3","shrijeet","chatterjee");
        Statement stmt=con.createStatement();
    String uname=request.getParameter("uname");
    String pswd=request.getParameter("pswd");
    stmt.executeUpdate("insert into signin values('"+uname+"','"+pswd+"')");
        response.sendRedirect("Registration.html");
        
    con.close();
    stmt.close(); 
}
 
catch(ClassNotFoundException e)
{
    out.println(e.getMessage());
} %>