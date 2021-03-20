package com.codeup.adlister.dao;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

//technically a Dao for the join table which combines the Categories table and the Ads Table
public class MySQLCategoriesDao implements Categories{
    private Connection connection = null;

    public MySQLCategoriesDao(Config config){
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );

        }catch(SQLException e){
            throw new RuntimeException("Error connecting to Database.",e);
        }
    }

    @Override
    public void insert(long adId, long categoryId){
        try {
            String query = "INSERT INTO ad_categories(ad_id, category_id) VALUES (?, ? )";
            PreparedStatement stat = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stat.setLong(1, adId);
            stat.setLong(2, categoryId);
            stat.executeUpdate();
        }catch(SQLException e){
            throw new RuntimeException("Error connecting to database.",e);
        }
    }
}
