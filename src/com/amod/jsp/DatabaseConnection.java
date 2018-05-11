package com.amod.jsp;
import java.sql.*;

public class DatabaseConnection {

    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/ntb_pramod";

    private static final String USER = "root";
    private static final String PASS = "toor";

    public static Connection conn = null;

    public static void connect(){
        if(conn != null)
            return;

        try {
            Class.forName(JDBC_DRIVER).newInstance();
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
        }
        catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException e){
            System.out.println(e.getMessage() + e.getCause());
        }
    }

    public static String toLowerCase(String data){
        return  data.toLowerCase();
    }

}
