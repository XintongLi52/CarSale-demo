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

@WebServlet("/modeladd")
public class ModelServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String brand_id = request.getParameter("brand_id");
        String modelName = request.getParameter("name");

        try{
            String sql = "insert into model(name, brand_id)values(?,?)";
            Connection connection= DB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, modelName);
            preparedStatement.setString(2, brand_id);
            preparedStatement.executeUpdate();

            PrintWriter printWriter = response.getWriter();
            printWriter.println("Model Added!");
        }
        catch(Exception e){
            System.out.println(e);
        }


    }
}
