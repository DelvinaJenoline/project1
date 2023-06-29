package com.login.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class search
 */
@WebServlet("/search")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50, maxRequestSize = 1024 * 1024 * 100)
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)

    		throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");

PrintWriter out = response.getWriter();  	
	
		String keyword=request.getParameter("keyword");
		//System.out.println("my "+keyword);
		int number= Integer.parseInt(request.getParameter("nooffiles"));

		Statement statement = null;
		ResultSet resultSet = null;
	    try
	    {
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/cloud","root","root");
		statement = con.createStatement();
		String sql="select photourl from fileupload where file like '%"+keyword+"%'  limit 2";
	    resultSet = statement.executeQuery(sql);
	    System.out.println(sql);
	    }
		 catch (Exception ex) {

		    	out.println("error" + ex);

		    	}}}