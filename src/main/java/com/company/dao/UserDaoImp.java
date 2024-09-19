package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.util.DBUtil;

public class UserDaoImp implements UserDao {

	@Override
	public boolean isValidUser(String username, String password) {
		String query = "SELECT * FROM users WHERE username = ? AND password = ?";
		try(Connection connection = DBUtil.getConnection(); PreparedStatement preparedstatement = connection.prepareStatement(query)){
			preparedstatement.setString(1,username);
			preparedstatement.setString(2,password);
			
			ResultSet resultSet = preparedstatement.executeQuery();
			return resultSet.next();
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean addUser(String username, String email, String password) {
		String query = "INSERT INTO users(username,email,password) VALUES(?,?,?)";
		try (Connection connection = DBUtil.getConnection();
		     PreparedStatement preparedstatement = connection.prepareStatement(query)) {

		    preparedstatement.setString(1, username);
		    preparedstatement.setString(2, email);
		    preparedstatement.setString(3, password);

		    int count = preparedstatement.executeUpdate();
		    return count > 0;
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	}


}
