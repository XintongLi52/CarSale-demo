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

@WebServlet("/brandadd")
public class BrandServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String brandName = request.getParameter("name");

        try{
            String sql = "insert into brand(name)values(?)";
            Connection connection= DB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, brandName);
            preparedStatement.executeUpdate();

            PrintWriter printWriter = response.getWriter();
            printWriter.println("Brand Added");
        }
        catch(Exception e){
            System.out.println(e);
        }


    }
}
