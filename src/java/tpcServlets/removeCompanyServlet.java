package tpcServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tpcImplementation.removeCompany;
import tpcPOJOClasses.companyBean;

public class removeCompanyServlet extends HttpServlet {
    private removeCompany rmcmp = new removeCompany();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("n");
        String jobdesc = request.getParameter("j");
        companyBean comp = new companyBean();
        comp.setName(name);
        comp.setJob_desc(jobdesc);
        try{
            if(rmcmp.remove(comp)) {
                response.sendRedirect("adminRemoveCmpSuccess.jsp");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
