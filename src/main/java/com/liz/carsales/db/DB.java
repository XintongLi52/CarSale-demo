package com.liz.carsales.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
    static public Connection con = null;
    public static Connection getConnection() throws Exception{
        if(con==null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/carsale";
            con = DriverManager.getConnection(url,"root","wrz19991012!");
        }
        return con;
    }
}
