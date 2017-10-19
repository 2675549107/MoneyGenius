package online.qsx.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import online.qsx.dao.impl.UserDaoImpl;
import online.qsx.model.User;
import online.qsx.server.UserServer;


@Transactional
@Service()
public class UserServerImpl implements UserServer{
	
	@Autowired
	private UserDaoImpl userDaoImpl;
	@Override
	public void addUser(User user) {
		userDaoImpl.addUser(user);
	}
}
