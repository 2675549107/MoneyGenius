package online.qsx.dao;

import java.util.List;

import online.qsx.model.UserModel;

public interface UserDao {
	public List<UserModel> getUsers();
	
	public void deleteUserModel(UserModel userModel);
	
	public void addUser(UserModel userModel);
}
