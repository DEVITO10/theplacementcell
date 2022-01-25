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
        String cpackage = request.getParameter("comp_package");
        String branch = request.getParameter("comp_branch");
        String jobdesc = request.getParameter("comp_job_desc");
        String lastdate = request.getParameter("comp_last_date");
        System.out.println(lastdate.getClass());
        companyBean comp = new companyBean();
        comp.setName(name);
        comp.setC_package(cpackage);
        comp.setBranch(branch);
        comp.setJob_desc(jobdesc);
        comp.setLast_date(lastdate);
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
