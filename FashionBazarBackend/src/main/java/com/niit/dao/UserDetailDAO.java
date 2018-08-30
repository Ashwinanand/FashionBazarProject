package com.niit.dao;

import com.niit.model.UserDetail;

public interface UserDetailDAO 
{
	public boolean registerUser(UserDetail user);
	public boolean updateDetail(UserDetail user);
	public UserDetail getUserDetail(String username);
}
