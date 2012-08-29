/**
*  Title  新闻管理系统
*  @author: 陈钢
*  Company: http://www.pcccp.com
*  Copyright: Copyright (c) 2003
*  @version 1.0
*  servlet
*/
package news.util;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

public class ParamUtils
{
	public ParamUtils(){}

	private static String getString(HttpServletRequest request, String s){
        String temp = null;
		try{
			temp = request.getParameter(s).trim();
		}catch(Exception e){}
	return temp;
    }

	public static String getString(HttpServletRequest request, String s, String defaultString) throws Exception {
		String s1 = getString(request,s);
		if(s1==null) return defaultString;
		return s1;
	}

	public static int getInt(HttpServletRequest request,String s, int defaultInt){
		try{
			String temp = getString(request,s);
			if(temp==null)
				return defaultInt;
			else
				return Integer.parseInt(temp);
		}catch(NumberFormatException e){
			return 0;
		}
	}

	public static long getLong(HttpServletRequest request, String s, long defaultLong){
		try{
			String temp = getString(request,s);
			if(temp==null)
				return defaultLong;
			else
				return Long.parseLong(temp);
		}catch(NumberFormatException e){
			return 0;
		}
	}
}

