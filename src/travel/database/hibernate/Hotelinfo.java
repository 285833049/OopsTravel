package travel.database.hibernate;

/**
 * Hotelinfo entity. @author MyEclipse Persistence Tools
 */

public class Hotelinfo implements java.io.Serializable {

	// Fields

	private Integer hotelId;
	private Attractioninfo attractioninfo;
	private String hotelName;
	private String hotelAddress;
	private Integer hotelPrice;
	private String hotelPic;
	private String hotelPhone;

	// Constructors

	/** default constructor */
	public Hotelinfo() {
	}

	/** full constructor */
	public Hotelinfo(Attractioninfo attractioninfo, String hotelName,
			String hotelAddress, Integer hotelPrice, String hotelPic,
			String hotelPhone) {
		this.attractioninfo = attractioninfo;
		this.hotelName = hotelName;
		this.hotelAddress = hotelAddress;
		this.hotelPrice = hotelPrice;
		this.hotelPic = hotelPic;
		this.hotelPhone = hotelPhone;
	}

	// Property accessors

	public Integer getHotelId() {
		return this.hotelId;
	}

	public void setHotelId(Integer hotelId) {
		this.hotelId = hotelId;
	}

	public Attractioninfo getAttractioninfo() {
		return this.attractioninfo;
	}

	public void setAttractioninfo(Attractioninfo attractioninfo) {
		this.attractioninfo = attractioninfo;
	}

	public String getHotelName() {
		return this.hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getHotelAddress() {
		return this.hotelAddress;
	}

	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
	}

	public Integer getHotelPrice() {
		return this.hotelPrice;
	}

	public void setHotelPrice(Integer hotelPrice) {
		this.hotelPrice = hotelPrice;
	}

	public String getHotelPic() {
		return this.hotelPic;
	}

	public void setHotelPic(String hotelPic) {
		this.hotelPic = hotelPic;
	}

	public String getHotelPhone() {
		return this.hotelPhone;
	}

	public void setHotelPhone(String hotelPhone) {
		this.hotelPhone = hotelPhone;
	}

}