package com;
public class id 
{
	public String Code(int id)
	{
		String s = Integer.toString(id);
		String f=new MD5().getMD5ofStr(s);
		return f;
	}
}
