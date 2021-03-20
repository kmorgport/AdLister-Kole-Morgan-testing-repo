package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{
    private Connection connection;

    public MySQLAdsDao(Config config){
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch(SQLException throwables){
            throwables.printStackTrace();
        }

    }

    @Override
    public List<Ad> all() {
        try{
            Statement stat = connection.createStatement();
            ResultSet rs = stat.executeQuery("SELECT * FROM ads");
//            while(rs.next()){
//                System.out.println(rs.getLong("user_id"));
//                System.out.println(rs.getString("title"));
//                System.out.println(rs.getString("description"));
//            }
            return generateAds(rs);
        }catch(SQLException throwables){
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public void insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, price, description) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setDouble(3, ad.getPrice());
            stmt.setString(4, ad.getDescription());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private List<Ad> generateAds(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while(rs.next()){
            ads.add(new Ad(
                    rs.getLong("id"),
                    rs.getLong("user_id"),
                    rs.getString("title"),
                    rs.getDouble("price"),
                    rs.getString("description")));
        }

        return ads;
    }


//    @Override
//    public List<Ad> findAdsByCategory(String category) {
//        String query = "SELECT * FROM ads a JOIN ad_categories ac ON a.id = ac.ad_id JOIN categories c on ac.category_id = c.id WHERE c.name = ?";
//        try{
//            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
//            stmt.setString(1,category);
//            stmt.executeQuery();
//            ResultSet rs = stmt.getGeneratedKeys();
//            List<Ad> ads = new ArrayList<>();
//            while(rs.next()){
//                ads.add(new Ad(
//                        rs.getLong("adId"),
//                        rs.getLong("user_id"),
//                        rs.getString("title"),
//                        rs.getDouble("price"),
//                        rs.getString("description")
//                ));
//            }
//            return ads;
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//        return null;
//    }

    @Override
    public List<Ad> findAdsByCategory(String category) {
        PreparedStatement stmt = null;
        String insertQuery = "SELECT * FROM ads a JOIN ad_categories ac ON a.id = ac.ad_id JOIN categories c on ac.category_id = c.id WHERE c.name = ?";
        try{
            stmt = connection.prepareStatement(insertQuery);
            stmt.setString(1,category);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    public List<Ad> getAdsByUserId(long id) {
        PreparedStatement stmt = null;
        String insertQuery = "SELECT * FROM ads WHERE user_id = ?";
        try {
            stmt = connection.prepareStatement(insertQuery);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

//    public List<Ad> getAdsByAdId(long id) {
//        PreparedStatement stmt = null;
//        String insertQuery = "SELECT * FROM ads WHERE id = ?";
//        try {
//            stmt = connection.prepareStatement(insertQuery);
//            stmt.setLong(1, id);
//            ResultSet rs = stmt.executeQuery();
//            return createAdsFromResults(rs);
//        } catch (SQLException e) {
//            throw new RuntimeException("Error retrieving all ads.", e);
//        }
//    }
public long getAdIdByAttributes(long userId, String title, Double price, String description) {
    try {
        String query = "SELECT id FROM ads WHERE user_id = ? AND title = ? AND price = ? AND description = ?";
        PreparedStatement stmt = connection.prepareStatement(query);
        stmt.setLong(1, userId);
        stmt.setString(2, title);
        stmt.setDouble(3, price);
        stmt.setString(4, description);
        ResultSet rs = stmt.executeQuery();
        rs.next();
        return rs.getLong("id");
    } catch (SQLException e) {
        throw new RuntimeException("No ad found with selected attributes.", e);
    }
}

    public Ad getAdsByAdId(long id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE id = ?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return new Ad(
                    rs.getLong("id"),
                    rs.getLong("user_id"),
                    rs.getString("title"),
                    rs.getDouble("price"),
                    rs.getString("description")
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving the ad.", e);
        }
    }

    @Override
    public void insert(long adId, long categoryId) {

    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getDouble("price"),
                rs.getString("description")
        );
    }
}
