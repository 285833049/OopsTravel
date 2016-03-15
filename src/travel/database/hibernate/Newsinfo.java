package travel.database.hibernate;

/**
 * Newsinfo entity. @author MyEclipse Persistence Tools
 */

public class Newsinfo implements java.io.Serializable {

	// Fields

	private Integer newsId;
	private String newsTitle;
	private String newsGuidence;
	private String newsContent;
	private String newsPublicTime;
	private String newsPic;

	// Constructors

	/** default constructor */
	public Newsinfo() {
	}

	/** full constructor */
	public Newsinfo(String newsTitle, String newsGuidence, String newsContent,
			String newsPublicTime, String newsPic) {
		this.newsTitle = newsTitle;
		this.newsGuidence = newsGuidence;
		this.newsContent = newsContent;
		this.newsPublicTime = newsPublicTime;
		this.newsPic = newsPic;
	}

	// Property accessors

	public Integer getNewsId() {
		return this.newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public String getNewsTitle() {
		return this.newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsGuidence() {
		return this.newsGuidence;
	}

	public void setNewsGuidence(String newsGuidence) {
		this.newsGuidence = newsGuidence;
	}

	public String getNewsContent() {
		return this.newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public String getNewsPublicTime() {
		return this.newsPublicTime;
	}

	public void setNewsPublicTime(String newsPublicTime) {
		this.newsPublicTime = newsPublicTime;
	}

	public String getNewsPic() {
		return this.newsPic;
	}

	public void setNewsPic(String newsPic) {
		this.newsPic = newsPic;
	}

}