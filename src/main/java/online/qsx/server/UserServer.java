package online.qsx.server;

import java.util.List;

import online.qsx.model.User;
import online.qsx.model.UserGroup;

public interface UserServer {
	
	public List<User> getAllUser();
	
	public List<User> getUserByName(User user);
	
	public void updateUser(User user);
	
	public void deleteUser(User uer);

	public void addUser(User user);
	
	public User getUserByEmail(User user);
	
	public UserGroup getGroupByGroupId(int id);
	
	public List<UserGroup> getAllUserGroup();
}
