<%-- 
    Document   : newpwd
    Created on : May 20, 2023, 5:10:17 PM
    Author     : shrijeet
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Reset Page</title>
        <style>
            body {
                background-image: url('https://www.cdc.gov/healthypets/images/covid/dog-and-cat.jpg?_=46111');
                background-size: cover;
                background-position: center;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .form-container {
                background-color: rgba(0, 0, 0, 0.9);
                color: whitesmoke;
                font-size: 100%;
                padding: 20px;
                max-width: 600px;
                width: 80%;
                opacity: 0.7;
            }

            .form-container table {
                background-color: #333333;
            }

            .form-container th {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <%!
            String vemail, vpass;
            OracleConnection oconn;
            OraclePreparedStatement ost;
            HttpSession sess;
          
            %>
            <%
            if(request.getParameter("bConfirm")!=null)
            {
                if(request.getParameter("tpass").equals(request.getParameter("cpass")))
                {
                   sess = request.getSession(false);
                   vpass = request.getParameter("tpass");
                   vemail = sess.getAttribute("sessemail").toString();
                   DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                   oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-8NR8BSH:1521:orcl3","shrijeet","chatterjee");
                   ost =(OraclePreparedStatement) oconn.prepareStatement("update REGISTER set  PASSWORD=? where EMAIL=?");
                   ost.setString(1, vpass);
                   ost.setString(2, vemail);
                   int x = ost.executeUpdate();
                   ost.close();
                   oconn.close();
                   sess.invalidate();
                     %>
                    <script>
                    alert("Password reset successfully!!! You can now login using your new password");
                    alert("Redirecting for logging==>>");
                    location.href="http://localhost:8080/petshop/login";
                </script>
                <%  
                }
                else
                {
                       %> 
                       <h3 style="color:red">Password do not match!!!. Please try again!!!</h3>                 
                        <%
                }
            }
            else
            {
                   vemail = request.getParameter("pemail");
                   sess = request.getSession(true);
                   sess.setAttribute("sessemail", vemail);
                   %>
                   
                    <%
                   
            }   
            %>
        <form>
        <div>
            <h3 style="color: blueviolet">
                   Please verify your security credentials.
                   </h3>
            <br/><br/><br/><br/>
            <table border="1" style="font-size: 100%; color:whitesmoke; background-color: black">
                <thead>
                    <tr><th colspan="2">RESET YOUR PASSWORD</th></tr>
                </thead>
                <tbody>
                    <tr>
                        <td>NEW PASSWORD</td>
                        <td><input type="password" name="tpass" id="tpass" required></td>
                    </tr>
                    <tr>
                        <td>CONFIRM PASSWORD</td>
                        <td><input type="password" name="cpass" id="cpass" required></td>
                    </tr>
                    <tr><td><button type="submit" style="font-size: 50%" name="bConfirm">Confirm</button></td>
                        <td>
                            <button type="reset" style="font-size: 50%" name="bClear">Clear</button>
                        </td>
                </tbody>
                <tfoot>
                    <th  colspan="2"> &copy; petXplore India PVT.LTD &reg;</th>
                </tfoot>
            </table>
        </div>
            </form>
    </body>
</html>
