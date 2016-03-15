package myaction;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import travel.database.hibernate.Attractioninfo;
import travel.database.hibernate.Newsinfo;

import com.opensymphony.xwork2.ActionSupport;

public class NewsDetailForAdminAction extends ActionSupport{
	private Integer newsId;
	private String newsGuidence;
	private String newsContent;
	private String newsPic;
	private String newsPublicTime;
	private String newsTitle;
	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public String getNewsGuidence() {
		return newsGuidence;
	}
	public void setNewsGuidence(String newsGuidence) {
		this.newsGuidence = newsGuidence;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public String getNewsPic() {
		return newsPic;
	}
	public void setNewsPic(String newsPic) {
		this.newsPic = newsPic;
	}
	public String getNewsPublicTime() {
		return newsPublicTime;
	}
	public void setNewsPublicTime(String newsPublicTime) {
		this.newsPublicTime = newsPublicTime;
	}
	
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String execute() throws Exception{
		System.out.println("进入到NewsDetailForAdminAction中 newsId="+newsId);
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Newsinfo news=new Newsinfo();
		news=(Newsinfo) session.load(Newsinfo.class, newsId);
		newsTitle=news.getNewsTitle();
		newsContent=news.getNewsContent();
		newsPublicTime=news.getNewsPublicTime();
		newsPic=news.getNewsPic();
		newsGuidence=news.getNewsGuidence();
		session.close();
		return SUCCESS;
	}
}
