package myaction;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import travel.database.hibernate.Userinfo;

import bean.MD5;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{
	private String username;
	private String password;
	private String rpassword;
	private String userEmail;
	private String MD5password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRpassword() {
		return rpassword;
	}
	public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}
	
	public String getMD5password() {
		return MD5password;
	}
	public void setMD5password(String mD5password) {
		MD5password = mD5password;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String execute()throws Exception{
		System.out.println("进入到RegisterAction中");
		System.out.println("username="+username);
		System.out.println("password="+password);
		System.out.println("userEmail"+userEmail);
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		List result=session.createQuery("from Userinfo").list();
		if(username.length()>10||username.length()<6){
			addFieldError("username","用户名长度必须在6-10个字符之间");
			return INPUT;
		}
		for(int i=0;i<result.size();i++)
		{
			Userinfo user=(Userinfo) result.get(i);
			String usernameHas=user.getUserName();
			if(username.equals(usernameHas))
			{
				addFieldError("username","该用户名已被注册，请换其他用户名");
				return INPUT;
	
			}
		}
		if(password.isEmpty())
		{
			addFieldError("password","密码不能为空，请输入密码");
			return INPUT;
		}
		if(!password.equals(rpassword)){
			addFieldError("rpassword","两次密码输入不一致，请重新输入");
			return INPUT;
		}
		//在各种异常处理完之后，正常情况下
		else{
			System.out.println("username="+username);
			System.out.println("password="+password);
			System.out.println("userEmail"+userEmail);
			//把密码进行MD5加密
		MD5 md5=new MD5();
		MD5password=md5.getMD5ofStr(password);
		Userinfo newuser=new Userinfo();
		newuser.setUserName(username);
		newuser.setPassword(MD5password);
		newuser.setUserEmail(userEmail);
		newuser.setUserLevel("1");
		newuser.setUserType(1);
		newuser.setUserSilenced(0);
		session.save(newuser);
		Transaction tx=null;
		try{
			tx=session.beginTransaction();
			tx.commit();
		    return SUCCESS;
		}catch(RuntimeException e)
		{
			if(tx!=null)
				tx.rollback();
			throw e;
		}finally {
			session.close();
			sessionFactory.close();
		}
		
		}
		
	}
	

}
