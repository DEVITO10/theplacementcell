package tpcServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tpcImplementation.addCompany;
import tpcPOJOClasses.companyBean;

public class addCompanyServlet extends HttpServlet {
    private addCompany adcmp = new addCompany();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("comp_name");
        String logo = request.getParameter("comp_logo");
        String ename = request.getParameter("comp_exam_name");
        String cpackage = request.getParameter("comp_package");
        String branch = request.getParameter("comp_branch");
        String jobdesc = request.getParameter("comp_job_desc");
        companyBean comp = new companyBean();
        comp.setName(name);
        comp.setLogo_link(logo);
        comp.setExam_name(ename);
        comp.setC_package(cpackage);
        comp.setBranch(branch);
        comp.setJob_desc(jobdesc);
        try{
            if(adcmp.add(comp)) {
                response.sendRedirect("adminAddCmpSuccess.jsp");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
