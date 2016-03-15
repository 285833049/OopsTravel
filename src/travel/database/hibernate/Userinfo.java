package travel.database.hibernate;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo implements java.io.Serializable {

	// Fields

	private Integer userId;
	private String userName;
	private Integer userSilenced;
	private String password;
	private Integer userType;
	private String userPicture;
	private String userIntroduction;
	private String userHobby;
	private String userLevel;
	private String userEmail;

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** full constructor */
	public Userinfo(String userName, Integer userSilenced, String password,
			Integer userType, String userPicture, String userIntroduction,
			String userHobby, String userLevel, String userEmail) {
		this.userName = userName;
		this.userSilenced = userSilenced;
		this.password = password;
		this.userType = userType;
		this.userPicture = userPicture;
		this.userIntroduction = userIntroduction;
		this.userHobby = userHobby;
		this.userLevel = userLevel;
		this.userEmail = userEmail;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Integer getUserSilenced() {
		return this.userSilenced;
	}

	public void setUserSilenced(Integer userSilenced) {
		this.userSilenced = userSilenced;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getUserType() {
		return this.userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}

	public String getUserPicture() {
		return this.userPicture;
	}

	public void setUserPicture(String userPicture) {
		this.userPicture = userPicture;
	}

	public String getUserIntroduction() {
		return this.userIntroduction;
	}

	public void setUserIntroduction(String userIntroduction) {
		this.userIntroduction = userIntroduction;
	}

	public String getUserHobby() {
		return this.userHobby;
	}

	public void setUserHobby(String userHobby) {
		this.userHobby = userHobby;
	}

	public String getUserLevel() {
		return this.userLevel;
	}

	public void setUserLevel(String userLevel) {
		this.userLevel = userLevel;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

}