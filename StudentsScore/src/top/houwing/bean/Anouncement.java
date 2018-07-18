package top.houwing.bean;

public class Anouncement {
		String AnouncementNumber;
		String Name;
		String Content;

		public Anouncement(String anouncementNumber, String name, String content) {
			AnouncementNumber = anouncementNumber;
			Name = name;
			Content = content;
		}
		public String getAnouncementNumber() {
			return AnouncementNumber;
		}
		public void setAnouncementNumber(String anouncementNumber) {
			AnouncementNumber = anouncementNumber;
		}
		public String getName() {
			return Name;
		}
		public void setName(String name) {
			Name = name;
		}
		public String getContent() {
			return Content;
		}
		public void setContent(String content) {
			Content = content;
		}
		

}
