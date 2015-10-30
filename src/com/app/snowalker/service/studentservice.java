package com.app.snowalker.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.app.snowalker.bean.studentTable;

public class studentservice {
	private Connection conn;
	private PreparedStatement pstmt;

	public studentservice() {
		conn = new com.app.snowalker.conn.conn().getCon();
	}

	public boolean validateStudent(studentTable student) {

		try {
			pstmt = conn.prepareStatement("select * from studenttable where id=? and password=?");
			pstmt.setString(1, student.getId());
			pstmt.setString(2, student.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				System.out.println(student.getName());
				return true;
			}
				
			else
				return false;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

}
