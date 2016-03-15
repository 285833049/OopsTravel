package myaction;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import travel.database.hibernate.Attractioninfo;

import com.opensymphony.xwork2.ActionSupport;

public class SearchAttractionAction extends ActionSupport{
	private String searchfor;
    private List<Attractioninfo> search_results;
	public String getSearchfor() {
		return searchfor;
	}

	public void setSearchfor(String searchfor) {
		this.searchfor = searchfor;
	}
	
	public List<Attractioninfo> getSearch_results() {
		return search_results;
	}

	public void setSearch_results(List<Attractioninfo> search_results) {
		this.search_results = search_results;
	}

	public String execute() throws Exception{
		System.out.println("这里是SearchAttractionAction searchfor="+searchfor);
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		search_results=new ArrayList<Attractioninfo>();
		Criteria cr=session.createCriteria(Attractioninfo.class);
		cr.add(Restrictions.like("acctractionName", searchfor, MatchMode.ANYWHERE));
	    search_results=cr.list();
	    System.out.println("搜索结果的大小是"+search_results.size());
	    if(search_results.size()==0)
	    	return ERROR;
	    else
		return SUCCESS;
	}

}
