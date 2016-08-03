package com.niit.springshop.dao;


	import java.util.List;

		import org.hibernate.Query;
		import org.hibernate.SessionFactory;
		import org.springframework.beans.factory.annotation.Autowired;
		import org.springframework.stereotype.Repository;
		import org.springframework.transaction.annotation.Transactional;

		import com.niit.springshop.model.User;

		@Repository("UserDAO")

		public class UserDAOImpl implements UserDAO {
			
			
			@Autowired
			
		private SessionFactory sessionFactory;
			public UserDAOImpl(SessionFactory sessionFactory){
				
				this.sessionFactory = sessionFactory;
			}
			
			@Transactional
			public void saveOrUpdate(User user)
			
			{
				sessionFactory.getCurrentSession().saveOrUpdate(user);
				
			}
			
			@Transactional
			
			public void delete(String id)
			{
				User UserToDelete = new User();
				UserToDelete.setId(id);
				sessionFactory.getCurrentSession().delete(UserToDelete);
			}
			private CategoryDAOImpl currentSession() {
				// TODO Auto-generated method stub
				return null;
			}

			@Transactional
			public User get(String id)
			
			{
				String hql = "from Supplier where id=" +"'"+id+"'"+"'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			List<User> listUser=query.list();
			
			if(listUser !=null && !listUser.isEmpty())
			{
				return listUser.get(0);
			}
			return null;
			}
			@Transactional
			public List<User> list()
			{System.out.println("in the list creation");
				
				@SuppressWarnings("unchecked")
				
				List<User> listUser=(List<User>) sessionFactory.getCurrentSession().createCriteria(User.class).list();
				return listUser;
				
				
			}
			
		}






