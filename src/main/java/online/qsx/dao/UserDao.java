package online.qsx.dao;

import java.util.List;

import online.qsx.model.User;

public interface UserDao {
	public List<User> getAll();
	
	public List<User> getUserByName(String userName);
	
	public void addUser(User user);
}
