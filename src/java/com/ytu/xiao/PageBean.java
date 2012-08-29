package com.ytu.xiao;
import java.util.Vector;
public class PageBean
{
	public int curPage ; 
	public int maxPage ; 
	public int maxRowCount;
	public int rowsPerPage=3;
	public java.util.Vector data;
	public PageBean()
	{

	}
	public void countMaxPage() {
    if (this.maxRowCount % this.rowsPerPage==0){
       this.maxPage = this.maxRowCount/this.rowsPerPage;
    }else{
       this.maxPage = this.maxRowCount/this.rowsPerPage + 1;        
        }
    }
    public Vector getResult()
    {
    	return this.data;
    }
    
    public PageBean(ContactBean contact)throws Exception
    {
    	 this.maxRowCount = contact.getAvailableCount();
   		 this.data = contact.getResult();
    	 this.countMaxPage();   
    }   
}                
    	 




	
