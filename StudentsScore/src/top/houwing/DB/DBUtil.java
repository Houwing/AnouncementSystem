package top.houwing.DB;

import java.util.HashMap;
import java.util.Map;

import top.houwing.bean.Anouncement;
import top.houwing.bean.StudentInfo;

public class DBUtil {
	public static Map<String,StudentInfo>map=new HashMap<String,StudentInfo>();
	public static Map<String,Anouncement>Amap=new HashMap<String,Anouncement>();
	static {
		map.put("001",new StudentInfo("11071010", "赵明", "123456"));
		map.put("002",new StudentInfo( "11071011", "李雷", "123456"));
		map.put("003",new StudentInfo( "11071012", "韩梅梅", "123456"));
		map.put("004",new StudentInfo( "11071013", "大熊", "123456"));
		map.put("005",new StudentInfo( "11071014", "李景祥", "123456"));
		map.put("006",new StudentInfo( "11071015", "胖虎", "123456"));
	}
	static {
		Amap.put("001", new Anouncement("001", "開學", "請同學們于9月1日前來報道！"));
		Amap.put("002", new Anouncement("002", "選課", "開始選課啦~"));
		Amap.put("003", new Anouncement("003", "競選班委", "將於近期競選班幹部"));
		Amap.put("004", new Anouncement("004", "評選獎學金", "評選獎學金啦~"));
		
	}
	public static boolean selectStudentByStudentnumberAndPassword(StudentInfo S) {
		boolean flag=false;
		for(String key:map.keySet()) {
			StudentInfo temp=map.get(key);
			if(S.getStudentNumber().equals(temp.getStudentNumber())&&S.getPassword().equals(temp.getPassword())) {
				flag=true;
				break;
			}
		}
		return flag;
	}
	public static String getKey(StudentInfo S){
		for(String key:map.keySet()) {
			StudentInfo temp=map.get(key);
			if(S.getStudentNumber().equals(temp.getStudentNumber())&&S.getPassword().equals(temp.getPassword())) {
				return key;
			}
		}
		return null;
	}
	
}
