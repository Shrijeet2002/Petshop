package api;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
import java.time.LocalDate;



/**
 *
 * @author subha
 */
public class order extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Order</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Order at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        String htmlFilePath = "/html/order/index.jsp";
        request.getRequestDispatcher(htmlFilePath).forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        Connection conn = null;
        response.setContentType("text/html");

        String[] allField = new String[] {"orderId","userEmail","userAddress","totalAmount","productName"};
        try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());

            
                conn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-8NR8BSH:1521:orcl3","shrijeet","chatterjee");

                String query = "INSERT INTO ORDERS VALUES(?,?,?,?,?)";
                PreparedStatement  ost =(OraclePreparedStatement) conn.prepareStatement(query);
                int tableField = 1;
                int i = 0;

                while(tableField <= 5 && i <= allField.length-1){


                    
                    ost.setString(tableField, request.getParameter(allField[i]));
                     i++;
                    tableField++;
                        
                }
                int rs =  ost.executeUpdate();
                System.out.println(rs);

                if(rs > 0){
                    int x = 0;
                    while(x <= allField.length-1){
                        request.setAttribute(allField[x], request.getParameter(allField[x]));
                        x++;
                    }

                    request.setAttribute("orderId",request.getParameter("orderId")); 

                    request.getRequestDispatcher("/fe/ordersuccess.jsp").forward(request, response);
                }else{
                    request.setAttribute("Failed","Failed to Insert..."); 
                    request.getRequestDispatcher("/fe/orderfail.jsp").forward(request, response);
                }
//                
            } catch (SQLException e) {
                request.setAttribute("Failed","Something Went Wrong"); 
                request.getRequestDispatcher("/fe/orderfail.jsp.jsp").forward(request, response);
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