package databaseconnection;

	import java.sql.*;

	public class databasecon
	{
		static Connection con;
		public static Connection getconnection()
		{
	 		
	 			 
			try
			{
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cloud","root","root");
			}
			catch(Exception e)
			{
				System.out.println("class error");
			}
			return con;
		}
		
	}
