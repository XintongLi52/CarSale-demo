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

@WebServlet("/caradd")
public class CarServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String year = request.getParameter("year");
        String price = request.getParameter("price");

        String model_id = request.getParameter("model_id");
        String member_id = request.getParameter("member_id");


        try{
            String sql = "insert into car(title, description, year, price, model_id, member_id)values(?,?,?,?,?,?)";
            Connection connection= DB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, title);
            preparedStatement.setString(2, description);
            preparedStatement.setString(3, year);
            preparedStatement.setString(4, price);
            preparedStatement.setString(5, model_id);
            preparedStatement.setString(6, member_id);

            preparedStatement.executeUpdate();

            PrintWriter printWriter = response.getWriter();
            printWriter.println("car Added!");
        }
        catch(Exception e){
            System.out.println(e);
        }


    }
}
