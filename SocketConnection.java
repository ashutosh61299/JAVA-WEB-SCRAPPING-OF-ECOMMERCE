package com.ashu;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.*;
public class SocketConnection
{
	StringBuilder sb,sb1;
	//String tv=null;
    public static String getURLSource(String url) 
    {
    	try{
        URL urlObject = new URL(url);
        URLConnection urlConnection = urlObject.openConnection();
        urlConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11");

        return toString(urlConnection.getInputStream());
    }catch(Exception ee){
    	return "get url source exception";
    }
    }

   private static String toString(InputStream inputStream) throws IOException
    {
        try 
        {
        	BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            String inputLine;
            StringBuilder stringBuilder = new StringBuilder();
            while ((inputLine = bufferedReader.readLine()) != null)
            {
                stringBuilder.append(inputLine);
            }

            return stringBuilder.toString();
        }catch(Exception e){
			System.out.println("EXCEPTION!!");
		}
    return "toString null";
    }


	public String result(String tv){
		
		
		try{
			SocketConnection s1=new SocketConnection();
			String print=s1.getURLSource("https://www.amazon.com/s?k="+tv+"&ref=nb_sb_noss_2");
			//System.out.println(print);
	
			WordSearch ss=new WordSearch();
			List<Integer> res=ss.findWord(print,"a-link-normal a-text-normal");
			List<Integer> res1=ss.findWord(print,"a-color-base a-text-normal");
			for(int i=0;i<res.size();i++){
			//System.out.println(res.get(i));
					int ind=res.get(i)+35;
					int ind1=res1.get(i)+39;
					
					char[] printC=print.toCharArray();
					//System.out.println(printC[ind]);
					 sb=new StringBuilder("https://www.amazon.com");
					sb1=new StringBuilder();
					
					while(printC[ind]!='"'){
						sb.append(Character.toString(printC[ind]));
						ind++;
						
						
					}
					while(printC[ind1]!='<'){
						sb1.append(Character.toString(printC[ind1]));
						ind1++;
						
						
					}	
					List<Integer> ui=ss.findWord(sb.toString(),"slredirect");
					//if(ui.size()!=0){
					
					
					//continue;
					//}
					//else{
						//System.out.println("Title::"+sb1);
						//System.out.println(sb);
						
					//}
					
					
					
					
		}
		}catch(Exception ee){
			return "inside Exception";

		}
	

	return sb1+":!:"+sb;
	}
	}


