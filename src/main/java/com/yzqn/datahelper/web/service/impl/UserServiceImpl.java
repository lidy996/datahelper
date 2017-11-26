package com.yzqn.datahelper.web.service.impl;

import com.yzqn.datahelper.web.dao.UserMapper;
import com.yzqn.datahelper.web.model.User;
import com.yzqn.datahelper.web.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    UserMapper userMapper;

    public User getUser() {
        return userMapper.selectByPrimaryKey(1);
    }
}
