package test.bean;

public class Mail implements Comparable<Mail>{
	private String sender;
	private String reciever;
	private String subject;
	private String attachment;
	private String timer;
	
	public Mail(String sender, String reciever, String subject,
			String attachment, String timer) {
		super();
		this.sender = sender;
		this.reciever = reciever;
		this.subject = subject;
		this.attachment = attachment;
		this.timer = timer;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReciever() {
		return reciever;
	}

	public void setReciever(String reciever) {
		this.reciever = reciever;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getAttachment() {
		return attachment;
	}

	public void setAttachment(String attachment) {
		this.attachment = attachment;
	}

	public String getTimer() {
		return timer;
	}

	public void setTimer(String timer) {
		this.timer = timer;
	}

	@Override
	public int compareTo(Mail arg0) {
		// TODO Auto-generated method stub
		return 0;
	}
}
