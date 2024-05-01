/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.ServiceManager;

import DAO.ServicesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.servicedetailmanager;

/**
 *
 * @author dell
 */
public class EditServiceDetailManager extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditServiceDetailManager</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditServiceDetailManager at " + request.getContextPath() + "</h1>");
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
        String id=request.getParameter("service_id");
        
        if(id!=null){
            int id1=Integer.parseInt(id);
            ServicesDAO dao=new ServicesDAO();
            servicedetailmanager serdetail=dao.servicedetailmanagerbyID(id1);
            request.setAttribute("serdetail", serdetail);
            request.getRequestDispatcher("EditServiceManager.jsp").forward(request, response);}
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        //edit service manager       
        String title = request.getParameter("title");
        String brief = request.getParameter("brief");
        String detail = request.getParameter("detail");
        String price = request.getParameter("price");
        String discount = request.getParameter("discount");
        String image = request.getParameter("image");
        String category = request.getParameter("category");
        String sid = request.getParameter("sid");

        // update service 
        if (price != null && discount != null && discount != null && sid != null) {

            // update service need
            float prices = Float.parseFloat(price);
            float discounts = Float.parseFloat(discount);
            int categoryidd = Integer.parseInt(category);
            int sidd = Integer.parseInt(sid);
            ServicesDAO servicesDAO = new ServicesDAO();
            try {
                if (discounts < prices) {
                    servicesDAO.editservicemanager(title, brief, detail, prices, discounts, categoryidd, image, sidd);
                    request.setAttribute("mess", "Update service manager successfull");
                    session.setAttribute("title", title);
                    session.setAttribute("brief", brief);
                    session.setAttribute("detail", detail);
                    session.setAttribute("prices", prices);
                    session.setAttribute("discounts", discounts);
                    session.setAttribute("categoryidd", categoryidd);
                    session.setAttribute("image", image);
                    session.setAttribute("sidd", sidd);
                    request.getRequestDispatcher("EditServiceManager.jsp").forward(request, response);

                } else {
                    request.setAttribute("mess", "Add new service manager failed! Check your intput");
                    session.setAttribute("title", title);
                    session.setAttribute("brief", brief);
                    session.setAttribute("detail", detail);
                    session.setAttribute("prices", prices);
                    session.setAttribute("discounts", discounts);
                    session.setAttribute("categoryidd", categoryidd);
                    session.setAttribute("image", image);
                    session.setAttribute("sidd", sidd);
                    request.getRequestDispatcher("EditServiceManager.jsp").forward(request, response);
                }

            } catch (Exception ex) {
                
            }
        } else {

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
