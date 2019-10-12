package com.olonsoft.dao;

import com.olonsoft.model.UserInfo;

public interface UserInfoDao extends CommonDao<UserInfo>{
	UserInfo loadUserByUsername(String username);
}
