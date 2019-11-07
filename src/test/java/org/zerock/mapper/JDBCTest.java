package org.zerock.mapper;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTest {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {		
		String url = "jdbc:oracle:thin:@localhost:1521:mydb";
		String user = "madang";
		String pw = "madang";	
		
		try {
			Connection con =
					DriverManager.getConnection(url, user, pw);
			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}
