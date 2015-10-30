package com.app.snowalker.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.app.snowalker.bean.adminTable;
import com.app.snowalker.conn.conn;

public class adminservice {
	
	private Connection connection;
	private PreparedStatement pstmt;
	private String sql = "select * from admintable where adminname=? and password=?";
	public adminservice() {
		connection = new conn().getCon();
	}  
	
	//验证管理员用户是否合法
	public boolean validateAdmin(adminTable admin) {
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, admin.getAdminname());
			pstmt.setString(2, admin.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
