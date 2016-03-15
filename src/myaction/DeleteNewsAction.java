package myaction;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import travel.database.hibernate.Newsinfo;

import com.opensymphony.xwork2.ActionSupport;

public class DeleteNewsAction extends ActionSupport{
private Integer newsId;

public Integer getNewsId() {
	return newsId;
}

public void setNewsId(Integer newsId) {
	this.newsId = newsId;
}
public String execute() throws Exception{
	System.out.println("进入到DeleteNewsAction中,传进来的NewsId="+newsId);
	Configuration config=new Configuration().configure();
	SessionFactory sessionFactory=config.buildSessionFactory();
	Session session=sessionFactory.openSession();
	Transaction tx=session.beginTransaction();
	Newsinfo news=new Newsinfo();
	news=(Newsinfo) session.load(Newsinfo.class, newsId);
	session.delete(news);
	tx.commit();
	session.close();
	return SUCCESS;
}
}
