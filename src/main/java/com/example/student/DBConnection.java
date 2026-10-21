package com.example.student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {


private static final String URL =
        "jdbc:mysql://localhost:3306/student_management";

private static final String USER = "root";

private static final String PASSWORD = "root";

public static Connection getConnection() throws SQLException {
    return DriverManager.getConnection(URL, USER, PASSWORD);
}

public static void main(String[] args) {

    try (Connection connection = getConnection()) {

        System.out.println("MySQL Connected Successfully!");

    } catch (SQLException e) {

        System.out.println("Database Connection Failed!");
        e.printStackTrace();
    }
}


}

