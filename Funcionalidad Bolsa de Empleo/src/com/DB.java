package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class DB {
final static String DB_URL =
	"jdbc:mysql://localhost/bolsa_de_empleo";
		final static String USER = "root";
		final static String PASS = "1234";
		public static Connection con() {
			Connection con;
			try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(DB_URL,USER, PASS);
			return con;
			} catch (Exception e) {
				// TODO: handle exception
				System.out.print(e);
				return null;
				}
				}
	public static Statement st() {
	Statement stmt;
	try {
	stmt = DB.con().createStatement();
	return stmt;
	}catch (Exception e) {
	// TODO: handle exception
	System.out.print(e);
	return null;
	}
  }
}