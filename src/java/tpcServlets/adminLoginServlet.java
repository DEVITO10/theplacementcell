package tpcServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tpcImplementation.validateAdmin;
import tpcPOJOClasses.adminLoginBean;

public class adminLoginServlet extends HttpServlet {
    private validateAdmin loginAdmin;
    public void init() {
        loginAdmin = new validateAdmin();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("sign_admin_uname");
        String password = request.getParameter("sign_admin_pwd");
        adminLoginBean login = new adminLoginBean();
        login.setAdminUname(username);
        login.setAdminPwd(password);
        try {
            if(loginAdmin.validate(login)) {
                HttpSession session = request.getSession();
                session.setAttribute("adminuname",username);
                response.sendRedirect("adminDashboard.jsp");
            } else {
                response.sendRedirect("invalidAdminLogin.jsp");
                
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
