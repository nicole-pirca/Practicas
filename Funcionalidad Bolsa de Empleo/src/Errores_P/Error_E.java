package Errores_P;

import java.sql.Statement;

import com.DB;

public class Error_E {
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
