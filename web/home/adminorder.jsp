<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.util.Date"%>

<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        // Obtain the database connection using JNDI or DriverManager
        // Example using DriverManager:
        String url = "jdbc:oracle:thin:@DESKTOP-8NR8BSH:1521:orcl3";
        String username = "shrijeet";
        String password = "chatterjee";

        Class.forName("oracle.jdbc.OracleDriver");
        conn = DriverManager.getConnection(url, username, password);

        // Create the SQL query
        String sql = "SELECT * FROM Orders";

        // Execute the query
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Order Details</title>
</head>
<body style="background-color: #e6f7ff;">

    <h1>Admin Order Details</h1>
    <table style="margin: auto; border-collapse: collapse; border: 1px solid #ddd;">
        <thead>
            <tr>
                <th style="padding: 8px; border: 1px solid #ddd; background-color: #f2f2f2;">Order ID</th>
                <th style="padding: 8px; border: 1px solid #ddd; background-color: #f2f2f2;">User Email</th>
                <th style="padding: 8px; border: 1px solid #ddd; background-color: #f2f2f2;">User Address</th>
                <th style="padding: 8px; border: 1px solid #ddd; background-color: #f2f2f2;">Total Amount</th>
                <th style="padding: 8px; border: 1px solid #ddd; background-color: #f2f2f2;">Product Name</th>
            </tr>
        </thead>
        <tbody>
<%
            // Iterate over the result set and display the data
            while (rs.next()) {
%>
            <tr>
                <td style="padding: 8px; border: 1px solid #ddd;"><%= rs.getString("orderId") %></td>
                <td style="padding: 8px; border: 1px solid #ddd;"><%= rs.getString("userEmail") %></td>
                <td style="padding: 8px; border: 1px solid #ddd;"><%= rs.getString("userAddress") %></td>
                <td style="padding: 8px; border: 1px solid #ddd;"><%= rs.getDouble("totalAmount") %></td>
                <td style="padding: 8px; border: 1px solid #ddd;"><%= rs.getString("productName") %></td>
            </tr>
<%
            }
%>
        </tbody>
    </table>
<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close the resources
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
</body>


</html>
