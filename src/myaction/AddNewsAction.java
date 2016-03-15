package myaction;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import travel.database.hibernate.Newsinfo;


import bean.MD5;

import com.opensymphony.xwork2.ActionSupport;

public class AddNewsAction extends ActionSupport {
	
	private String newsTitle;
	private String newsGuidence;  //�ӱ��н��յ�
	private String newsContent;//�ӱ��н��յ�
    private File rimage;
    private String rimageContentType;
    private String rimageFileName;
    private String savePath;
    private String rtemp;
    private String newsPublicTime;
	 public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
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

	public String getSavePath() throws Exception{
	        return ServletActionContext.getServletContext().getRealPath(savePath); 
	    }

	    public void setSavePath(String savePath) {
	        this.savePath = savePath;
	    }

 
    public File getRimage() {
			return rimage;
		}
		public void setRimage(File rimage) {
			this.rimage = rimage;
		}
		public String getRimageContentType() {
			return rimageContentType;
		}
		public void setRimageContentType(String rimageContentType) {
			this.rimageContentType = rimageContentType;
		}
		public String getRimageFileName() {
			return rimageFileName;
		}
		public void setRimageFileName(String rimageFileName) {
			this.rimageFileName = rimageFileName;
		}
public String getRtemp() {
	return rtemp;
}
public void setRtemp(String rtemp) {
	this.rtemp = rtemp;
}
public String getNewsPublicTime() {
	return newsPublicTime;
}

public void setNewsPublicTime(String newsPublicTime) {
	this.newsPublicTime = newsPublicTime;
}

private void close(FileOutputStream fos, FileInputStream fis) {
     if (fis != null) {
         try {
             fis.close();
         } catch (IOException e) {
             System.out.println("FileInputStream�ر�ʧ��");
             e.printStackTrace();
         }
     }
     if (fos != null) {
         try {
             fos.close();
         } catch (IOException e) {
             System.out.println("FileOutputStream�ر�ʧ��");
             e.printStackTrace();
         }
     }
 }


//�����ǹر��ļ��ĺ���
	public String execute() throws Exception{
		System.out.println("?????????");
		
		if(newsTitle.length()==0)
		{
			addFieldError("newsTitle","���ű��ⲻ��Ϊ��");
			return INPUT;
		}
		if(newsTitle.length()>100)
		{
			addFieldError("newsTitle","���ű�����50��֮��");
			return INPUT;
		}
		if(newsGuidence.length()==0)
		{
			addFieldError("newsGuidence","���ŵ�������Ϊ��");
			return INPUT;
		}
		if(newsGuidence.length()>200)
		{
			addFieldError("newsGuidence","���ŵ�����100��֮��");
			return INPUT;
		}
		if(newsContent.length()==0)
		{
			addFieldError("newsContent","�������ݲ���Ϊ��");
			return INPUT;
		}
		if(newsContent.length()>2000)
		{
			addFieldError("newsContent","����������1000��֮��");
			return INPUT;
		}
		else{
			System.out.println("@@@@@@@@");
			Configuration config=new Configuration().configure();
			SessionFactory sessionFactory=config.buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tx=null;
			Newsinfo news=new Newsinfo();
			if(rimage==null)
			{
				
				rtemp=".\\images\\newswu.jpg";
				System.out.println("ͷ��ͼƬΪ"+rtemp);
			}
			else{//ͷ��ͼƬ�ı�
				
			FileOutputStream fos = null;
	        FileInputStream fis = null;
	        try {
	            // �����ļ������
	        	fos = new FileOutputStream(getSavePath() + "\\" + getRimageFileName());
	            rtemp="."+"\\"+"images"+"\\"+getRimageFileName();
	            // �����ļ��ϴ���
	            fis = new FileInputStream(getRimage());
	            byte[] buffer = new byte[1024];
	            int len = 0;
	            while ((len = fis.read(buffer)) > 0) {
	                fos.write(buffer, 0, len);
	            }
	        } catch (Exception e) {
	            System.out.println("�ļ��ϴ�ʧ��");
	            e.printStackTrace();
	            addFieldError("image","�ļ��ϴ�ʧ��");
	        } finally {
	            close(fos, fis);
	        }
			}//���� else�����ļ��ϴ����
			
				
				try{
				tx=session.beginTransaction();
				DateFormat dt1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Calendar ca1=Calendar.getInstance();
				newsPublicTime=dt1.format(ca1.getTime());
				System.out.println("newsTitle="+newsTitle);
				System.out.println("newsGuidence="+newsGuidence);
				System.out.println("newsContent="+newsContent);
				System.out.println("newsPice="+rtemp);
				System.out.println("newsPublicTime="+newsPublicTime);
				news.setNewsTitle(newsTitle);
				news.setNewsGuidence(newsGuidence);
				news.setNewsContent(newsContent);
				news.setNewsPic(rtemp);
				news.setNewsPublicTime(newsPublicTime);
				session.save(news);
				tx.commit();
				}catch(RuntimeException e)
				{
					if(tx!=null)
					{
						tx.rollback();
					}
					throw e;
				}finally{
					session.close();
				}
				return SUCCESS;
			//}
			
		}
	}

}
