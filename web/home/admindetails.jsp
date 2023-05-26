<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Displaying all Customer details</title>
        <%!
            OracleConnection oconn;
            OracleStatement ost;
            OraclePreparedStatement opst;
            OracleResultSet ors;
            OracleResultSetMetaData orsmd;
            String r;
            int counter, reccounter;
        %>
        <style>
            table, tr, td
            {
                margin: auto;
                padding: 10px;
                border: 3px solid darkblue;
                border-collapse: collapse;
                width: 50%;
            }
            th
            {
                padding: 10px;
                border: 3px solid darkblue;
                border-collapse: collapse;
                color: black;
            }
        </style>
        <script>
            function funDelete()
            {
                if (confirm("Are you sure you want to delete the record?") === true)
                    return true;
                else
                    return false;
            }
        </script>
    </head>
    <body style="background-color: #fff ">
        <div>
            <span style="font-weight: bold; font-size: 250%">CUSTOMER DETAILS....</span>
            <span>
                <form method="POST" action="admindetails.jsp">
                    <input type="text" placeholder="&#128269;Enter User to search" name="tSearch" style="width: 500px; height: 25px" required>
                    <button type="submit" name="bSearch" style="height: 30px; width: 100px; font-style: italic">Search</button>
                </form>
            </span>
        </div>
        <br/>
        <br/>
        <br/>

        <%
            // STEP 1: REGISTERING THE JSP WITH ORACLE
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-8NR8BSH:1521:orcl3","shrijeet","chatterjee");

            //STEP 2: CREATING THE CONNECTION OBJECT
//            oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orclarit", "stylewithus", "style");

            if (request.getParameter("bSearch") != null) {
                String vSearchUser = request.getParameter("tSearch");

                //STEP 4: CREATING THE QUERY
                r = "select * from REGISTER where EMAIL=?";

                //STEP 3: CREATING THE STATEMENT
                opst = (OraclePreparedStatement) oconn.prepareStatement(r);

                //STEP 5: FILLING UP THE PARAMETERS
                opst.setString(1, vSearchUser);

                //STEP 5: Executing the query and populating the resultset
                ors = (OracleResultSet) opst.executeQuery();

        %>
        <form method="POST" action="admindetails.jsp">
            <button type="submit" class="btn-aqua" style="height: 30px; width: 200px;  font-style: italic; font-weight: bold">Display all Customers</button>
        </form>
        <%                        } else {

                //STEP 3: CREATING THE STATEMENT
                ost = (OracleStatement) oconn.createStatement();

                //STEP 4: CREATING THE QUERY
                r = "select * from REGISTER order by 1";

                //STEP 5: Executing the query and populating the resultset
                ors = (OracleResultSet) ost.executeQuery(r);

            }
            //STEP 6: Getting the Headings
            orsmd = (OracleResultSetMetaData) ors.getMetaData();
        %>
        <table>
            <thead>
                <tr>
                    <%
                        for (counter = 1; counter <= orsmd.getColumnCount(); counter++) {
                    %>
                    <th><%=orsmd.getColumnName(counter)%></th>
                        <%
                            }
                        %>
<!--                    <th colspan="2">ACTIONS</th>-->
                </tr>
            </thead>
            <tbody>
                <%
                    reccounter = 0;
                    while (ors.next()) {
                        reccounter++;
                %>
                <tr>
                    <%
                        for (int i = 1; i <= 6; i++) {
                    %>
                    <td><%=ors.getString(i)%></td>
                    <%
                        }
                    %>
            <form method="POST" action="http://localhost:8080/petshop/DelAdmin?name=<%=ors.getString(1)%>"  onsubmit=" return funDelete()">
                <td><button type="submit">Delete</button></td>
            </form>
        </tr>
        <%
            }

        %>
    </tbody>
    <tfoot></tfoot>
</table>
<%            if (reccounter == 0) {
%>
<h2 style="font-family: monospace; color: black; font-weight: bold">No matching records exists. Try with a better match</h2>
<%
    }
    // ors.close();
    //  ost.close();
    oconn.close();

%>
</body>
</html>