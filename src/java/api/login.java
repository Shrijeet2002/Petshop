package api;

import java.io.IOException;
import java.io.PrintWriter;
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
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
/**
 *
 * @author subha
 */
public class login extends HttpServlet {

String vemail,vpass;
OracleConnection oconn;
    OraclePreparedStatement ost;
    RequestDispatcher dis=null;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet signup</title>");            
            out.println("</head>");
            out.println("<body>");
            
            out.println("</body>");
            out.println("</html>");
        }
        
    }


   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html");

        String htmlFilePath = "login/login.jsp";
        request.getRequestDispatcher(htmlFilePath).forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

            
    try {
        DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
        vemail = request.getParameter("tbemail");
            vpass= request.getParameter("tbpass");
            
            HttpSession session= request.getSession();
            

            System.out.println("Email -- "+vemail);
            System.out.println("Pass -- "+vpass);
            
            
            oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-8NR8BSH:1521:orcl3","shrijeet","chatterjee");

           
            String q="SELECT EMAIL,PASSWORD FROM REGISTER WHERE EMAIL=? AND PASSWORD=?";
            ost =(OraclePreparedStatement) oconn.prepareStatement(q);
            ost.setString(1,vemail);
            ost.setString(2,vpass);
            int ra = ost.executeUpdate();
            request.setAttribute("emal",vemail); 

            dis = request.getRequestDispatcher("login/login.jsp");
            if(ra>0)
            {
                request.setAttribute("status","Success");    
                request.setAttribute("email",vemail);
                request.getRequestDispatcher("/home/home.jsp").forward(request, response);
                
            }else
            {
                
                request.setAttribute("status","failed");
                request.getRequestDispatcher("login/login.jsp").forward(request, response);
                
            }
            
            dis.forward(request, response);
            
            
    } catch (SQLException ex) {
        Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
    }
    finally{
        try {
            ost.close();
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
            
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}