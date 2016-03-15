package travel.database.hibernate;

import java.util.HashSet;
import java.util.Set;

/**
 * Attractioninfo entity. @author MyEclipse Persistence Tools
 */

public class Attractioninfo implements java.io.Serializable {

	// Fields

	private Integer attractionId;
	private String acctractionName;
	private String ownedDistruct;
	private Integer commonTicketPrice;
	private Integer pirticularTicketPrice;
	private String attractionIntro;
	private String attractionPic1;
	private String otherInfo;
	private String openTime;
	private String attractionPic2;
	private String attractionPic3;
	private String ownedCity;
	private String attractionAddress;
	private Set hotelinfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Attractioninfo() {
	}

	/** full constructor */
	public Attractioninfo(String acctractionName, String ownedDistruct,
			Integer commonTicketPrice, Integer pirticularTicketPrice,
			String attractionIntro, String attractionPic1, String otherInfo,
			String openTime, String attractionPic2, String attractionPic3,
			String ownedCity, String attractionAddress, Set hotelinfos) {
		this.acctractionName = acctractionName;
		this.ownedDistruct = ownedDistruct;
		this.commonTicketPrice = commonTicketPrice;
		this.pirticularTicketPrice = pirticularTicketPrice;
		this.attractionIntro = attractionIntro;
		this.attractionPic1 = attractionPic1;
		this.otherInfo = otherInfo;
		this.openTime = openTime;
		this.attractionPic2 = attractionPic2;
		this.attractionPic3 = attractionPic3;
		this.ownedCity = ownedCity;
		this.attractionAddress = attractionAddress;
		this.hotelinfos = hotelinfos;
	}

	// Property accessors

	public Integer getAttractionId() {
		return this.attractionId;
	}

	public void setAttractionId(Integer attractionId) {
		this.attractionId = attractionId;
	}

	public String getAcctractionName() {
		return this.acctractionName;
	}

	public void setAcctractionName(String acctractionName) {
		this.acctractionName = acctractionName;
	}

	public String getOwnedDistruct() {
		return this.ownedDistruct;
	}

	public void setOwnedDistruct(String ownedDistruct) {
		this.ownedDistruct = ownedDistruct;
	}

	public Integer getCommonTicketPrice() {
		return this.commonTicketPrice;
	}

	public void setCommonTicketPrice(Integer commonTicketPrice) {
		this.commonTicketPrice = commonTicketPrice;
	}

	public Integer getPirticularTicketPrice() {
		return this.pirticularTicketPrice;
	}

	public void setPirticularTicketPrice(Integer pirticularTicketPrice) {
		this.pirticularTicketPrice = pirticularTicketPrice;
	}

	public String getAttractionIntro() {
		return this.attractionIntro;
	}

	public void setAttractionIntro(String attractionIntro) {
		this.attractionIntro = attractionIntro;
	}

	public String getAttractionPic1() {
		return this.attractionPic1;
	}

	public void setAttractionPic1(String attractionPic1) {
		this.attractionPic1 = attractionPic1;
	}

	public String getOtherInfo() {
		return this.otherInfo;
	}

	public void setOtherInfo(String otherInfo) {
		this.otherInfo = otherInfo;
	}

	public String getOpenTime() {
		return this.openTime;
	}

	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}

	public String getAttractionPic2() {
		return this.attractionPic2;
	}

	public void setAttractionPic2(String attractionPic2) {
		this.attractionPic2 = attractionPic2;
	}

	public String getAttractionPic3() {
		return this.attractionPic3;
	}

	public void setAttractionPic3(String attractionPic3) {
		this.attractionPic3 = attractionPic3;
	}

	public String getOwnedCity() {
		return this.ownedCity;
	}

	public void setOwnedCity(String ownedCity) {
		this.ownedCity = ownedCity;
	}

	public String getAttractionAddress() {
		return this.attractionAddress;
	}

	public void setAttractionAddress(String attractionAddress) {
		this.attractionAddress = attractionAddress;
	}

	public Set getHotelinfos() {
		return this.hotelinfos;
	}

	public void setHotelinfos(Set hotelinfos) {
		this.hotelinfos = hotelinfos;
	}

}