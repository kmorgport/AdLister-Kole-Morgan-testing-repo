package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

public interface Users {
    User findByUserName(String username);
    Long insert(User user);
}
