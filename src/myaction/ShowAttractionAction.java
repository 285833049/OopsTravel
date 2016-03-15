package myaction;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import travel.database.hibernate.Attractioninfo;

import bean.Attractions;

import com.opensymphony.xwork2.ActionSupport;

public class ShowAttractionAction extends ActionSupport {
	private Integer attractionId;
	private String attractionCity;
	private String attractionName;
	private String attractionAddress;
	private String attractionIntro;
	private Integer pirticularTicketPrice;
	private Integer commonTicketPrice;
	private String openTime;
	private String attractionPic1;
	private String attractionPic2;
	private String attractionPic3;
	private List<Attractions> all_attractions;
	
	public Integer getAttractionId() {
		return attractionId;
	}
	public void setAttractionId(Integer attractionId) {
		this.attractionId = attractionId;
	}
	public String getAttractionCity() {
		return attractionCity;
	}
	public void setAttractionCity(String attractionCity) {
		this.attractionCity = attractionCity;
	}
	public String getAttractionName() {
		return attractionName;
	}
	public void setAttractionName(String attractionName) {
		this.attractionName = attractionName;
	}
	public String getAttractionAddress() {
		return attractionAddress;
	}
	public void setAttractionAddress(String attractionAddress) {
		this.attractionAddress = attractionAddress;
	}
	public String getAttractionIntro() {
		return attractionIntro;
	}
	public void setAttractionIntro(String attractionIntro) {
		this.attractionIntro = attractionIntro;
	}
	public Integer getPirticularTicketPrice() {
		return pirticularTicketPrice;
	}
	public void setPirticularTicketPrice(Integer pirticularTicketPrice) {
		this.pirticularTicketPrice = pirticularTicketPrice;
	}
	public Integer getCommonTicketPrice() {
		return commonTicketPrice;
	}
	public void setCommonTicketPrice(Integer commonTicketPrice) {
		this.commonTicketPrice = commonTicketPrice;
	}
	public String getOpenTime() {
		return openTime;
	}
	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}
	public String getAttractionPic1() {
		return attractionPic1;
	}
	public void setAttractionPic1(String attractionPic1) {
		this.attractionPic1 = attractionPic1;
	}
	public String getAttractionPic2() {
		return attractionPic2;
	}
	public void setAttractionPic2(String attractionPic2) {
		this.attractionPic2 = attractionPic2;
	}
	public String getAttractionPic3() {
		return attractionPic3;
	}
	public void setAttractionPic3(String attractionPic3) {
		this.attractionPic3 = attractionPic3;
	}
	public List<Attractions> getAll_attractions() {
		return all_attractions;
	}
	public void setAll_attractions(List<Attractions> all_attractions) {
		this.all_attractions = all_attractions;
	}
	public String execute() throws Exception{
		System.out.println("进入到ShowAttractionAction中从jsp获得的attractionCity="+attractionCity);
		if(attractionCity.equals("海南"))
			System.out.println("匹配成功");
		else
			System.out.println("匹配失败");
		//以上是测试匹配和从jsp获得的参数的
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Criteria criteria=session.createCriteria(Attractioninfo.class);
		List attractions=criteria.list();
		Iterator iterator=attractions.iterator();
		all_attractions=new ArrayList<Attractions>();
		while(iterator.hasNext())
		{
			
			Attractioninfo attraction=(Attractioninfo) iterator.next();
			System.out.println("从数据库读出来的attractionCity="+attraction.getOwnedCity());
			if(attraction.getOwnedCity().equals("海南"))
			{
				System.out.println("进到了if循环里面");
		
				System.out.println(attraction.getAcctractionName()+"属于海南景点");
				//attractionCity=attraction.getOwnedCity();
				attractionId=attraction.getAttractionId();
				attractionName=attraction.getAcctractionName();
				attractionAddress=attraction.getAttractionAddress();
				attractionPic1=attraction.getAttractionPic1();
				System.out.println("?????attractionPic1="+attractionPic1);
				Attractions attra=new Attractions();
				attra.setAttractionAddress(attractionAddress);
				attra.setAttractionId(attractionId);
				attra.setAttractionName(attractionName);
				attra.setAttractionPic1(attractionPic1);
				//attractionIntro=attraction.getAttractionIntro();
				//pirticularTicketPrice=attraction.getPirticularTicketPrice();
			    //commonTicketPrice=attraction.getCommonTicketPrice();
				//openTime=attraction.getOpenTime();
				all_attractions.add(attra);
				
			
				//attractionPic1;
				//attractionPic2;
				//attractionPic3;
			}
			else
				System.out.println(attraction.getAcctractionName()+"不属于海南景点");
		}
		System.out.println("all_attractions的大小为"+all_attractions.size());
		for(int i=0;i<all_attractions.size();i++)
		{
			System.out.println("list输出来的结果"+all_attractions.get(i).getAttractionName());
		}
		session.close();
		return SUCCESS;
	}

}
