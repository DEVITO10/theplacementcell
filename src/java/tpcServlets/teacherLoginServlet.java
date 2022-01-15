package tpcServlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tpcImplementation.validateTeacher;
import tpcPOJOClasses.teacherLoginBean;

public class teacherLoginServlet extends HttpServlet {
    private validateTeacher loginTeacher;
    public void init() {
        loginTeacher = new validateTeacher();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("sign_teacher_uname");
        String password = request.getParameter("sign_teacher_pwd");
        teacherLoginBean login = new teacherLoginBean();
        login.setTeacherUname(username);
        login.setTeacherPwd(password);
        try {
            if(loginTeacher.validate(login)) {
                HttpSession session = request.getSession();
                session.setAttribute("teachuname",username);
                response.sendRedirect("teacherDashboard.jsp");
            } else {
                response.sendRedirect("invalidTeacherLogin.jsp");
                
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
