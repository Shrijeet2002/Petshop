<%-- 
    Document   : admindash
    Created on : May 20, 2023, 12:53:29 AM
    Author     : shrijeet
--%>

<%--<%@page import="com.entities.Admin"%>--%>
<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADMIN</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="admin.css">
    
</head>
<body>
    

         <dir class="board">
            
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
    <body style="background-color: rgb(200, 226, 242)">
        <div>
            <span style="font-weight: bold; font-size: 250%">CUSTOMER DETAILS....</span>
            
            <span>
                <form method="POST" action="admindetails.jsp">
                    <input type="text" placeholder="&#128269;Enter User to search" name="tSearch" style="width: 500px; height: 25px" required>
                    <button type="submit" name="bSearch" class= "btn-success" style="height: 30px; width: 100px; font-style: italic" >Search</button>
                </form>
            </span>
        </div>
        <br/>
        <br/>
        <br/>

        <%
            // STEP 1: REGISTERING THE JSP WITH ORACLE
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());

            //STEP 2: CREATING THE CONNECTION OBJECT
            oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-8NR8BSH:1521:orcl3","shrijeet","chatterjee");

            if (request.getParameter("bSearch") != null) {
                String vSearchUser = request.getParameter("tSearch");

                //STEP 4: CREATING THE QUERY
                r = "select * from REGISTER where name=?";

                //STEP 3: CREATING THE STATEMENT
                opst = (OraclePreparedStatement) oconn.prepareStatement(r);

                //STEP 5: FILLING UP THE PARAMETERS
                opst.setString(1, vSearchUser);

                //STEP 5: Executing the query and populating the resultset
                ors = (OracleResultSet) opst.executeQuery();

        %>
        <form method="POST" action="admindash.jsp">
            <button type="submit" class="btn-aqua" style="height: 30px; width: 200px;  font-style: italic; font-weight: bold">Display all Admins</button>
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
                        for (int i = 1; i <=6; i++) {
                    %>
                    <td><%=ors.getString(i)%></td>
                    <%
                        }
                    %>


               
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

         </dir>
    </div>

        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
<footer>
    <jsp:include page="/fe/footer.jsp" />
</footer>

</html>