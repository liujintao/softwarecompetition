package news.util;
import java.io.*;

public class CodeFilter{
	  public CodeFilter() {}
	  public static String change(String s) {
		  s = toHtml(s);
		  return s;
	  }

	//ÌØÊâ×Ö·û×ªÎªHtml
	public static String toHtml(String s) {
    s = Replace(s,"&","&amp;");
    s = Replace(s,"<","&lt;");
    s = Replace(s,">","&gt;");
    s = Replace(s,"\t","    ");
    s = Replace(s,"\r\n","\n");
    s = Replace(s,"\n","<br>");
    s = Replace(s,"  "," &nbsp;");
    s = Replace(s,"'","&#39;");
    s = Replace(s,"\\","&#92;");
    return s;
    }
	//Äæ
    public static String unHtml(String s){
	s = Replace(s,"<br>","\n");
	s = Replace(s,"&nbsp;"," ");
	return s;
  	}

  //Replace
   public static String Replace(String source,String oldString,String newString) {
    if(source == null) return null;
    StringBuffer output = new StringBuffer();
    int lengOfsource = source.length();
    int lengOfold = oldString.length();
    int posStart = 0;
    int pos;
    while((pos = source.indexOf(oldString,posStart)) >= 0) {
      output.append(source.substring(posStart,pos));
      output.append(newString);
      posStart = pos + lengOfold;
    }
    if(posStart < lengOfsource) {
      output.append(source.substring(posStart));
    }
    return output.toString();
  }

}
