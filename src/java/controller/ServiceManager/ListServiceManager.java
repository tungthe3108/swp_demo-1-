/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.ServiceManager;

import DAO.CategoryDAO;
import DAO.ServicesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.category;
import model.listservicemanager;

/**
 *
 * @author dell
 */
public class ListServiceManager extends HttpServlet {

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
            out.println("<title>Servlet ListServiceManager</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListServiceManager at " + request.getContextPath() + "</h1>");
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
        List<category> cate=new CategoryDAO().getAllCategory();
        HttpSession session=request.getSession();
        session.setAttribute("cate", cate);
        
        final int page_size=6;
        int page=1;
        String pagetr=request.getParameter("page");
        if(pagetr!=null){
            page=Integer.parseInt(pagetr);
        }
        ServicesDAO dao=new ServicesDAO();
        List<listservicemanager> listservice=dao.getServiceWithPagging(page, page_size);
        int totalService=dao.getTotalService();
        int totalPage=totalService / page_size;
        if(totalService % page_size != 0){
            totalPage++;
        }
        request.setAttribute("page", page);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("listservice", listservice);
        
       request.getRequestDispatcher("ServiceListManager.jsp").forward(request, response);
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
        try {
            String id = request.getParameter("id");
            String status = request.getParameter("status");

            if (id != null && status != null && !id.equals("")) {
                int idd = Integer.parseInt(id);
                int statuss = Integer.parseInt(status);
                //    boolean st = Boolean.parseBoolean(request.getParameter("status"));
                        ServicesDAO servicesDAO = new ServicesDAO();
                if (statuss == 0) {
                    servicesDAO.setStatus(1, idd);
                } else {
                    servicesDAO.setStatus(0, idd);
                }
               // response.sendRedirect("servicelistmanager");
            }
           // request.getRequestDispatcher("ServiceListManager.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println(e);
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
