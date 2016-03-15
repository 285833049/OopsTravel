package myaction;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import travel.database.hibernate.Attractioninfo;
import travel.database.hibernate.Newsinfo;

import bean.NewsInfoPageDAO;

import com.opensymphony.xwork2.ActionSupport;

public class NewsForAdminAction extends ActionSupport{
	private Integer newsId;
	private String newsTitle;
    public String newsPublicTime;
	private List<Newsinfo> allNews;
	
	//以下是分页要用到的变量
	private List<Newsinfo> list;
    private int pageNow = 1 ; //初始化为1,默认从第一页开始显示
    private int pageSize = 5 ; //每页显示2条记录
    private int pageTotle= 1 ;//总页数
    private NewsInfoPageDAO pageDao = new NewsInfoPageDAO () ;
    
   /////
	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	
	public List<Newsinfo> getAllNews() {
		return allNews;
	}
	public void setAllNews(List<Newsinfo> allNews) {
		this.allNews = allNews;
	}
	public String getNewsPublicTime() {
		return newsPublicTime;
	}
	public void setNewsPublicTime(String newsPublicTime) {
		this.newsPublicTime = newsPublicTime;
	}
	
	
	
	public List<Newsinfo> getList() {
		return list;
	}
	public void setList(List<Newsinfo> list) {
		this.list = list;
	}
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageTotle() {
		return pageTotle;
	}
	public void setPageTotle(int pageTotle) {
		this.pageTotle = pageTotle;
	}
	public NewsInfoPageDAO getPageDao() {
		return pageDao;
	}
	public void setPageDao(NewsInfoPageDAO pageDao) {
		this.pageDao = pageDao;
	}
	public String execute() throws Exception{
		System.out.println("进入到了NewsInfoAction中");
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		allNews=new ArrayList<Newsinfo>();
		Criteria criteria=session.createCriteria(Newsinfo.class);
		List news_list=criteria.list();
		Iterator iterator=news_list.iterator();
		int i=0;
		while(iterator.hasNext())
		{
			i++;
			Newsinfo newsInfo=new Newsinfo();
			newsInfo=(Newsinfo) iterator.next();
			
			allNews.add(newsInfo);
		}
		
		System.out.println("表中新闻条数为"+i);
		System.out.println("allNews的大小为"+allNews.size());
		//得到每页显示的对象的集合list
        list  = pageDao.pageQuery(pageSize, pageNow,allNews);
        
        //得到总页数pageTotle
        pageTotle=pageDao.pageTotle(pageSize, pageNow);
		return SUCCESS;
	}

}
