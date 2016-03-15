package myaction;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import travel.database.hibernate.Attractioninfo;
import travel.database.hibernate.Hotelinfo;

import com.opensymphony.xwork2.ActionSupport;

public class AttractionDetailInfoAction extends ActionSupport{
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
private List<Hotelinfo> attractionHotels;
private Integer hoteiId;
private String hotelName;
private String hotelAddress;
private String hotelPic;
private Integer hotelPrice;
private String hotelPhone;
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

public List<Hotelinfo> getAttractionHotels() {
	return attractionHotels;
}

public void setAttractionHotels(List<Hotelinfo> attractionHotels) {
	this.attractionHotels = attractionHotels;
}


public Integer getHoteiId() {
	return hoteiId;
}

public void setHoteiId(Integer hoteiId) {
	this.hoteiId = hoteiId;
}

public String getHotelName() {
	return hotelName;
}

public void setHotelName(String hotelName) {
	this.hotelName = hotelName;
}

public String getHotelAddress() {
	return hotelAddress;
}

public void setHotelAddress(String hotelAddress) {
	this.hotelAddress = hotelAddress;
}

public String getHotelPic() {
	return hotelPic;
}

public void setHotelPic(String hotelPic) {
	this.hotelPic = hotelPic;
}

public Integer getHotelPrice() {
	return hotelPrice;
}

public void setHotelPrice(Integer hotelPrice) {
	this.hotelPrice = hotelPrice;
}

public String getHotelPhone() {
	return hotelPhone;
}

public void setHotelPhone(String hotelPhone) {
	this.hotelPhone = hotelPhone;
}

public String execute() throws Exception{
	System.out.println("进入到了AttractionDetailInfoAction中attractionId="+attractionId);
	Configuration config=new Configuration().configure();
	SessionFactory sessionFactory=config.buildSessionFactory();
	Session session=sessionFactory.openSession();
	Attractioninfo attra=new Attractioninfo();
	attra=(Attractioninfo) session.load(Attractioninfo.class, attractionId);
	attractionName=attra.getAcctractionName();
	attractionAddress=attra.getAttractionAddress();
	attractionIntro=attra.getAttractionIntro();
	commonTicketPrice=attra.getCommonTicketPrice();
	pirticularTicketPrice=attra.getPirticularTicketPrice();
	attractionPic1=attra.getAttractionPic1();
	attractionPic2=attra.getAttractionPic2();
	attractionPic3=attra.getAttractionPic3();
	openTime=attra.getOpenTime();
	session.close();
	//以上都是正确的
	session=sessionFactory.openSession();
	Hotelinfo hotel=new Hotelinfo();
	Criteria hotel_criteria=session.createCriteria(Hotelinfo.class);
	hotel_criteria.add(Restrictions.eq("attractioninfo",attra));
	List hotellist=hotel_criteria.list();
	Iterator it=hotellist.iterator();
	attractionHotels=new ArrayList<Hotelinfo>();
	while(it.hasNext())
	{
		System.out.println("?????????");
		hotel=(Hotelinfo) it.next();
		attractionHotels.add(hotel);
	}
	for(int i=0;i<attractionHotels.size();i++)
	{
		hotelName=attractionHotels.get(i).getHotelName();
		hotelPic=attractionHotels.get(i).getHotelPic();
		System.out.println("和景点相关联的hotelName="+hotelName);
		System.out.println("和景点相关联的hotelPic="+hotelPic);
	}
	return SUCCESS;
}
}
