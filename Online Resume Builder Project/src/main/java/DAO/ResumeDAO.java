package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.Statement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ResumeDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/resumes_info";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "sql123";

    public boolean saveResume(Resume resume) {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/1ejm9","root","sql123")) {
            String query = "INSERT INTO resumes (name, email, phone, address, objective, degree, university, year, company, position, start_date, end_date, skills) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, resume.getName());
            statement.setString(2, resume.getEmail());
            statement.setString(3, resume.getPhone());
            statement.setString(4, resume.getAddress());
            statement.setString(5, resume.getObjective());
            statement.setString(6, resume.getDegree());
            statement.setString(7, resume.getUniversity());
            statement.setString(8, resume.getYear());
            statement.setString(9, resume.getCompany());
            statement.setString(10, resume.getPosition());
            statement.setString(11, resume.getStartDate());
            statement.setString(12, resume.getEndDate());
            statement.setString(13, resume.getSkills());

            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
