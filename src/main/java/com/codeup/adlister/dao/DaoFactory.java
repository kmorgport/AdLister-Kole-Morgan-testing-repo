package com.codeup.adlister.dao;


public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Categories categoriesDao;
    static Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
//            adsDao = new com.codeup.adlister.controllers.dao.ListAdsDao();
        }
        return adsDao;
    }

    public static Users getUsersDao(){
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
//            adsDao = new com.codeup.adlister.controllers.dao.ListAdsDao();
        }
        return usersDao;
    }

    public static Categories getCategoriesDao() {
        if (categoriesDao == null) {
            categoriesDao = new MySQLCategoriesDao(config);
//            adsDao = new com.codeup.adlister.controllers.dao.ListAdsDao();
        }
        return categoriesDao;
    }
}
