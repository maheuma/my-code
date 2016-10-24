package com.niit.springshopbackend;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.springshop.dao.BuyDAO;
import com.niit.springshop.dao.BuyDAOimp;
import com.niit.springshop.dao.CartDAO;
import com.niit.springshop.dao.CartDAOimp;
import com.niit.springshop.dao.CategoryDAO;
import com.niit.springshop.dao.CategoryDAOImpl;
import com.niit.springshop.dao.ProductDAO;
import com.niit.springshop.dao.ProductDAOImpl;
import com.niit.springshop.dao.SupplierDAO;
import com.niit.springshop.dao.SupplierDAOImpl;
import com.niit.springshop.dao.UserDAO;
import com.niit.springshop.dao.UserDAOImpl;
import com.niit.springshop.model.Buy;
import com.niit.springshop.model.Cart;
import com.niit.springshop.model.Category;
import com.niit.springshop.model.Product;
import com.niit.springshop.model.Supplier;
import com.niit.springshop.model.User;

@Configuration
@ComponentScan("com.niit.springshop.model")
@EnableTransactionManagement


public class ApplicationContextConfig {

  
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		System.out.println("data source");
	DriverManagerDataSource dataSource = new DriverManagerDataSource();
	dataSource.setDriverClassName("org.h2.Driver");
	dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
	System.out.println("inside getdata source");
	dataSource.setUsername("sa");
	dataSource.setPassword("sa");
	return dataSource;
	}
	    
   
    
    private Properties getHibernateProperties() {
    	System.out.println("in properties");
    Properties properties = new Properties();
    properties.put("hibernate.show_sql", "true");
      properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
     properties.put("hibernate.hbm2ddl.auto", "update");
    return properties;
    }
    
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	System.out.println("in sessionf");
    LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    sessionBuilder.addProperties(getHibernateProperties());
    sessionBuilder.addAnnotatedClass(Category.class);
    sessionBuilder.addAnnotatedClass(Supplier.class);
    sessionBuilder.addAnnotatedClass(Product.class);
    sessionBuilder.addAnnotatedClass(User.class);
    sessionBuilder.addAnnotatedClass(Cart.class);
    sessionBuilder.addAnnotatedClass(Buy.class);
    
    
      return sessionBuilder.buildSessionFactory();
    }
    
@Autowired
@Bean(name = "transactionManager")
public HibernateTransactionManager getTransactionManager(
SessionFactory sessionFactory) {
	System.out.println("In transaction");
HibernateTransactionManager transactionManager = new HibernateTransactionManager(
sessionFactory);

return transactionManager;
}
    
   


 @Autowired
   @Bean(name = "categoryDAO")
   public CategoryDAO getCategoryDao(SessionFactory sessionFactory) {
   
return new CategoryDAOImpl(sessionFactory);
   }
 

 @Autowired
 @Bean(name = "supplierDAO")
 public SupplierDAO getSupplierDao(SessionFactory sessionFactory) {
 
return new SupplierDAOImpl(sessionFactory);

 }
 
 @Autowired
 @Bean(name = "productDAO")
 public ProductDAO getProductDao(SessionFactory sessionFactory) {
 
return new ProductDAOImpl(sessionFactory);

 }
 @Autowired
 @Bean(name = "userDAO")
 public UserDAO getUserDao(SessionFactory sessionFactory) {
 
return new UserDAOImpl(sessionFactory);
 
 }
 @Autowired
 @Bean(name = "cartDAO")
 public CartDAO getCartDao(SessionFactory sessionFactory) {
 
return new CartDAOimp(sessionFactory);
 
 }
 @Autowired
 @Bean(name = "buyDAO")
 public BuyDAO getBuyDao(SessionFactory sessionFactory) {
 
return new BuyDAOimp(sessionFactory);
 
 }
}