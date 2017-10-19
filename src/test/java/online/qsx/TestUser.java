/**
 * 
 */
package online.qsx;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import online.qsx.dao.impl.UserDaoImpl;
import online.qsx.model.User;
import online.qsx.server.impl.UserServerImpl;

/**
 * 用户测试类
 * @author Dike
 */
@Component
public class TestUser {
	@Test
	public void testGetAll() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-dao.xml");
		UserDaoImpl userDaoImpl = (UserDaoImpl)ctx.getBean("userDaoImpl");
		
		List<User> userList = userDaoImpl.getAll();
		for(User user:userList) {
			System.out.println(user);
		}
	}
	
	@Test
	public void testgetUserByName() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-dao.xml");
		UserDaoImpl userDaoImpl = (UserDaoImpl)ctx.getBean("userDaoImpl");
	
		List<User> userList = userDaoImpl.getUserByName("Dike");
		for(User user:userList) {
			System.out.println(user);
		}
	}
	
//	@Test
//	public void testAddUser() {
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-server.xml");
//		UserServerImpl userServerImpl = (UserServerImpl)ctx.getBean("userServerImpl");
//		
//		User user = new User();
//		user.setCreditworthiness(75);
//		user.setEmail("2675549107@qq.com");
//		user.setPassword("147258");
//		user.setPhone("18408247822");
//		user.setStatus(1);
//		user.setUserName("Dike");
//		
//		userServerImpl.addUser(user);
//	}
}
