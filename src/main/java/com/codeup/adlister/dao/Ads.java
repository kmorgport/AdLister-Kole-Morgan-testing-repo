package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    void insert(Ad ad);

    List<Ad> findAdsByCategory(String category);
    public List<Ad> getAdsByUserId(long id);
    public Ad getAdsByAdId(long id);

    void insert(long adId, long categoryId);

    public long getAdIdByAttributes(long userId, String title, Double price, String description);
    public void updateAd(long id, String title, Double price, String description);
}
