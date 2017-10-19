package online.qsx.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import online.qsx.model.User;
import online.qsx.server.impl.UserServerImpl;

@Component("userAction")
public class UserAction {

	@Autowired
	private UserServerImpl userServerImpl;

}
