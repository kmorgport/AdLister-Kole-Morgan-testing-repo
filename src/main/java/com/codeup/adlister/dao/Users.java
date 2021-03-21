package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

public interface Users {
    User findByUserName(String username);
    boolean insert(User user);
    User getUserByAd(long id);
    void update(long id, String username, String email, String password);
}