package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.Driver;
//import models.User;

public class MySQLUsersDao implements  Users{
    private Connection connection = null;
    public MySQLUsersDao(Config config){
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }
    @Override
    public User findByUserName(String username) {
        String query = "SELECT * FROM users where username = ? LIMIT 1";
        try{
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1,username);
            stmt.executeQuery();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return new User(
                    rs.getLong("id"),
                    rs.getString("Username"),
                    rs.getString("email"),
                    rs.getString("password")
            );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public Long insert(User user) {
        return null;
    }

    public User getUserByAd(long id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM users u JOIN ads a ON a.user_id = u.id WHERE a.id = ?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return new User(
                    rs.getLong("id"),
                    rs.getString("username"),
                    rs.getString("email"),
                    rs.getString("password")
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error finding user.", e);
        }
    }

}
