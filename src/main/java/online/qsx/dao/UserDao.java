package online.qsx.dao;

import java.util.List;

import online.qsx.model.User;
import online.qsx.model.UserGroup;

public interface UserDao {
	public List<User> getAll();
	
	public List<User> getUserByName(String userName);
	
	public void addUser(User user);
	
	public User getUserById(Long id);
	
	public void updateUser(User user);
	
	public void deleteUser(User user,Long id);
	
	public User getUserByEmail(String email);
	
	public UserGroup getGroupByGroupId(int id);
	
	public List<UserGroup> getAllUserGroup();
}
