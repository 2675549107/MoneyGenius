package online.qsx.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import online.qsx.common.BaseDao;
import online.qsx.dao.UserDao;
import online.qsx.model.User;
import online.qsx.model.UserGroup;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	private BaseDao baseDao;

	/**
	 * 查找所有用户
	 * */
	@SuppressWarnings("unchecked")
	@Override
	public List<User> getAll() {
		return (List<User>)baseDao.getHibernateTemplate().find("from User");
	}
	
	/**
	 * 根据姓名查找
	 * */
	@SuppressWarnings("unchecked")
	@Override
	public List<User> getUserByName(String userName) {
		return (List<User>)baseDao.getHibernateTemplate().find("from User where userName like ?", "%"+userName+"%");
	}
	/**
	 * 根据ID查找
	 */
    public User getUserById(Long id) {
        return (User) baseDao.getHibernateTemplate().get(User.class, id);
    }
	/**
	 * 添加用户
	 * */
	@Override
	public void addUser(User user) {
		baseDao.getHibernateTemplate().save(user);
	}

	/**
	 * 修改用户
	 * */
	@SuppressWarnings("unchecked")
    @Override
	public void updateUser(Long uesrId,String username, String email, Integer tel,
            Integer userStatus, Integer userStatus1) {
	    
	    List<User> list = (List<User>) baseDao.getHibernateTemplate().find("from User u where u.uesrId = ?", uesrId);
	    if(userStatus==3){
	        userStatus =25;
	    } else if(userStatus == 2) {
	        userStatus = 50;
	    }else if(userStatus == 1) {
	        userStatus = 75;
	    }else {
	        userStatus =100;
	    }
	    User user = list.get(0);
	    String password = user.getPassword();
	    System.out.println(user.toString());
	    user.setUserName(username);
	    user.setEmail(email);
	    user.setPassword(String.valueOf(tel));
	    user.setCreditworthiness(userStatus);
	    user.setStatus(userStatus1);
	    user.setPassword(password);
		baseDao.getHibernateTemplate().update(user);
	}

	/**
	 * 删除指定用户
	 * */
	@Override
	public void deleteUser(User user,Long id) {
		baseDao.getHibernateTemplate().delete(user);
		Query query =  baseDao.getSessionFactory().getCurrentSession().createQuery("update User set uesrId = uesrId - 1 where uesrId > "+id);
		query.executeUpdate();
	}

	/**
	 * 通过邮箱得到用户
	 * */
	@Override
	public User getUserByEmail(String email) {
		try {
			User u = new User();
			u = (User)(baseDao.getHibernateTemplate().find("from User where email = ?", email).get(0));
			return u;
		} catch (Exception e) {
			return null;
		}
	}
	
	/**
	 * 通过用户组id得到用户组
	 * */
	@Override
	public UserGroup getGroupByGroupId(int id) {
		UserGroup ug = (UserGroup)(baseDao.getHibernateTemplate().find("from UserGroup where userGroupId = ?", id).get(0));
		return ug;
	}

	/**
	 * 获取所有用户组
	 * */
	@Override
	public List<UserGroup> getAllUserGroup() {
		return (List<UserGroup>)baseDao.getHibernateTemplate().find("from UserGroup");
	}
    /**
     * 更新
     */
    @Override
    public void updateUser(User user) {
        baseDao.getHibernateTemplate().update(user);
    }
}
