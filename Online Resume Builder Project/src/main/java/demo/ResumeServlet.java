package demo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Resume;
import DAO.ResumeDAO;

@WebServlet("/resume")
public class ResumeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String objective = request.getParameter("objective");
        String degree = request.getParameter("degree");
        String university = request.getParameter("university");
        String year = request.getParameter("year");
        String company = request.getParameter("company");
        String position = request.getParameter("position");
        String startDate = request.getParameter("start_date");
        String endDate = request.getParameter("end_date");
        String skills = request.getParameter("skills");
        
        Resume resume = new Resume(name, email, phone, address, objective, degree, university, year, company, position, startDate, endDate, skills);
        resume.setName(name);
        resume.setEmail(email);
        resume.setPhone(phone);
        resume.setAddress(address);
        resume.setObjective(objective);
        resume.setDegree(degree);
        resume.setUniversity(university);
        resume.setYear(year);
        resume.setCompany(company);
        resume.setPosition(position);
        resume.setStartDate(startDate);
        resume.setEndDate(endDate);
        resume.setSkills(skills);

        ResumeDAO resumeDAO = new ResumeDAO();
        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.setAttribute("address", address);
        request.setAttribute("objective", objective);
        request.setAttribute("degree", degree);
        request.setAttribute("university", university);
        request.setAttribute("year", year);
        request.setAttribute("company", company);
        request.setAttribute("position", position);
        request.setAttribute("startDate", startDate);
        request.setAttribute("endDate", endDate);
        request.setAttribute("skills", skills);
        
        RequestDispatcher rd=request.getRequestDispatcher("resume.jsp");
		rd.forward(request, response);
    }
}
       

