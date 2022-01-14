package tpcServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tpcPOJOClasses.studentLoginPOJO;
import tpcImplementation.validateStudent;

import javax.servlet.http.HttpSession;
public class studentLoginServlet extends HttpServlet {
    private validateStudent loginStud;
    public void init() {
        loginStud = new validateStudent();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("sign_uname");
        String password = request.getParameter("sign_pwd");
        studentLoginPOJO login = new studentLoginPOJO();
        login.setStudUname(username);
        login.setStudPwd(password);
        try {
            if(loginStud.validate(login)) {
                HttpSession session = request.getSession();
                session.setAttribute("username",username);
                response.sendRedirect("studentDashboard.jsp");
            } else {
                response.sendRedirect("invalidStudentLogin.jsp");
                
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
