package test.bussiness;

import java.util.ArrayList;
import java.util.List;

import test.bean.Mail;

public class MailDao {
	 public static List<Mail> buildList() {
			List<Mail> mails = new ArrayList<Mail>();
			mails.add(new Mail("sender1","reciever1","subject1","attachment1","timer1"));
			mails.add(new Mail("sender2","reciever2","subject2","attachment2","timer2"));
			mails.add(new Mail("sender3","reciever3","subject3","attachment3","timer3"));
			mails.add(new Mail("sender4","reciever4","subject4","attachment4","timer4"));
			mails.add(new Mail("sender5","reciever5","subject5","attachment5","timer5"));
			mails.add(new Mail("sender6","reciever6","subject6","attachment6","timer6"));
			mails.add(new Mail("sender7","reciever7","subject7","attachment7","timer7"));
			mails.add(new Mail("sender8","reciever8","subject8","attachment8","timer8"));
			mails.add(new Mail("sender9","reciever9","subject9","attachment9","timer9"));
			mails.add(new Mail("sender0","reciever0","subject0","attachment0","timer0"));
			mails.add(new Mail("sender1","reciever1","subject1","attachment1","timer1"));
			mails.add(new Mail("sender2","reciever2","subject2","attachment2","timer2"));
			mails.add(new Mail("sender3","reciever3","subject3","attachment3","timer3"));
			mails.add(new Mail("sender4","reciever4","subject4","attachment4","timer4"));
			mails.add(new Mail("sender5","reciever5","subject5","attachment5","timer5"));
			mails.add(new Mail("sender6","reciever6","subject6","attachment6","timer6"));
			return mails;
	 }
	 
	public static Integer getMailsCount(List<Mail> list) {
		return list.size();
	} 
}