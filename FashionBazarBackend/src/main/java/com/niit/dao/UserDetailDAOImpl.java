package com.niit.dao;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.model.UserDetail;
@Repository("userDetailDAO")
public class UserDetailDAOImpl implements UserDetailDAO{
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	@Override
	public boolean registerUser(UserDetail user) {
		try
		{
		sessionFactory.getCurrentSession().save(user);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}

}
    @Transactional
	@Override
	public boolean updateDetail(UserDetail user) {
		try
		{
		sessionFactory.getCurrentSession().update(user);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}
}   @Transactional
	@Override
	public UserDetail getUserDetail(String username) {
		Session session=sessionFactory.openSession();
		UserDetail userDetail=(UserDetail)session.get(UserDetail.class,username);
		session.close();
		return userDetail;
		
}}