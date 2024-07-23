package com.liz.carsales.action;

import com.liz.carsales.db.DB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/reg")
public class RegServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String photo = request.getParameter("photo");

        try{
            String sql = "insert into member(name,email,password,photo,mobile)values(?,?,?,?,?)";
            Connection connection= DB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);
            preparedStatement.setString(4, photo);
            preparedStatement.setString(5, mobile);
            preparedStatement.executeUpdate();

            PrintWriter printWriter = response.getWriter();
            printWriter.println("Registration Success");
        }
        catch(Exception e){
            System.out.println(e);
        }


    }
}
