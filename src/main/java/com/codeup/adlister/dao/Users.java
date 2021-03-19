package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

public interface Users {
    User findByUserName(String username);
    boolean insert(User user);
    public User getUserByAd(long id);
}
