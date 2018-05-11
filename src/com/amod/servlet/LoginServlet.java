package com.amod.servlet;

import com.amod.jsp.DatabaseConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = "";
        try {
            byte[] bytes_of_password = request.getParameter("password").getBytes("UTF-8");
            MessageDigest MD = MessageDigest.getInstance("MD5");
            MD.update(bytes_of_password);
            byte[] pswdDigest = MD.digest();
            BigInteger bigInt = new BigInteger(1, pswdDigest);
            String hash = bigInt.toString(16);
            System.out.println(hash);
            password = hash;

        } catch (NoSuchAlgorithmException exception) {
            System.out.println(exception.getMessage());
        }

        System.out.println("Email: " + email + "\n");
        System.out.println("Password: " + password + "\n");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
