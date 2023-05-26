package api;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;

public class registration extends HttpServlet {

    
    String vName,vAdd,vEmail,vPh,vPass,vGender;
    OracleConnection oconn=null;
    OraclePreparedStatement ost;
    String query;
    RequestDispatcher disp=null;
    
protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        String htmlFilePath = "login/registration.jsp";
        request.getRequestDispatcher(htmlFilePath).forward(request, response);
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        vName = request.getParameter("tbName");
             vAdd = request.getParameter("tbAdd");
             vEmail = request.getParameter("tbEmail");
             vPh = request.getParameter("tbPh");
             vPass = request.getParameter("tbPass");
             vGender = request.getParameter("rbGender");
             
             
            try{
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                 oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-8NR8BSH:1521:orcl3","shrijeet","chatterjee");
                 String q = "INSERT INTO REGISTER values(?,?,?,?,?,?)";
 
                 ost =(OraclePreparedStatement) oconn.prepareStatement(q);
            
             ost.setString(1,vName);
             ost.setString(2,vAdd);
             ost.setString(3,vEmail);
             ost.setString(4,vPh);
             ost.setString(5,vPass);
             ost.setString(6,vGender);
             
             int ra = ost.executeUpdate();
             disp = request.getRequestDispatcher("login/registration.jsp");
                if (ra>0)
                {
                    request.setAttribute("status","success");
                    request.getRequestDispatcher("login/registration.jsp").forward(request, response);
                }
                else
                {
                    
                    request.setAttribute("status","failed");
                    out.println("Fail");
                }
                disp.forward(request, response);
                
            
            } catch (SQLException ex) {
            Logger.getLogger(registration.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                ost.close();
                
            } catch (SQLException ex) {
                Logger.getLogger(registration.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}