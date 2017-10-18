package online.qsx.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import online.qsx.dao.impl.UserDaoImpl;
import online.qsx.model.UserModel;
import online.qsx.server.UserServer;

@Service
@Transactional
public class UserServerImpl {
	
	@Autowired
	private UserDaoImpl userDaoImpl;
}
