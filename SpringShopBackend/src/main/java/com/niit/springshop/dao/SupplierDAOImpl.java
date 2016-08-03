package com.niit.springshop.dao;


	import java.util.List;

		import org.hibernate.Query;
		import org.hibernate.SessionFactory;
		import org.springframework.beans.factory.annotation.Autowired;
		import org.springframework.stereotype.Repository;
		import org.springframework.transaction.annotation.Transactional;

		import com.niit.springshop.model.Supplier;

		@Repository("supplierDAO")

		public class SupplierDAOImpl implements SupplierDAO {
			
			
			@Autowired
			
		private SessionFactory sessionFactory;
			public SupplierDAOImpl(SessionFactory sessionFactory){
				
				this.sessionFactory = sessionFactory;
			}
			
			@Transactional
			public void saveOrUpdate(Supplier supplier)
			
			{
				sessionFactory.getCurrentSession().saveOrUpdate(supplier);
				
			}
			
			@Transactional
			
			public void delete(String id)
			{
				Supplier SupplierToDelete = new Supplier();
				SupplierToDelete.setId(id);
				sessionFactory.getCurrentSession().delete(SupplierToDelete);
			}
			private CategoryDAOImpl currentSession() {
				// TODO Auto-generated method stub
				return null;
			}

			@Transactional
			public Supplier get(String id)
			
			{
				String hql = "from Supplier where id=" +"'"+id+"'"+"'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			List<Supplier> listSupplier=query.list();
			
			if(listSupplier !=null && !listSupplier.isEmpty())
			{
				return listSupplier.get(0);
			}
			return null;
			}
			@Transactional
			public List<Supplier> list()
			{System.out.println("in the list creation");
				
				@SuppressWarnings("unchecked")
				
				List<Supplier> listSupplier=(List<Supplier>) sessionFactory.getCurrentSession().createCriteria(Supplier.class).list();
				return listSupplier;
				
				
			}
			
		}




