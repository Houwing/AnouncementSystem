package top.houwing.DB;

import java.util.HashMap;
import java.util.Map;

import top.houwing.bean.Anouncement;
import top.houwing.bean.StudentInfo;

public class DBUtil {
	public static Map<String,StudentInfo>map=new HashMap<String,StudentInfo>();
	public static Map<String,Anouncement>Amap=new HashMap<String,Anouncement>();
	static {
		map.put("001",new StudentInfo("11071010", "����", "123456"));
		map.put("002",new StudentInfo( "11071011", "����", "123456"));
		map.put("003",new StudentInfo( "11071012", "��÷÷", "123456"));
		map.put("004",new StudentInfo( "11071013", "����", "123456"));
		map.put("005",new StudentInfo( "11071014", "���", "123456"));
		map.put("006",new StudentInfo( "11071015", "�ֻ�", "123456"));
	}
	static {
		Amap.put("001", new Anouncement("001", "�_�W", "Ոͬ�W����9��1��ǰ������"));
		Amap.put("002", new Anouncement("002", "�x�n", "�_ʼ�x�n��~"));
		Amap.put("003", new Anouncement("003", "���x��ί", "��춽��ڸ��x���ֲ�"));
		Amap.put("004", new Anouncement("004", "�u�x���W��", "�u�x���W����~"));
		
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
