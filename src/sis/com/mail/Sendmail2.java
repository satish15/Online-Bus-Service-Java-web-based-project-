package sis.com.mail;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Sendmail2 {

	public Sendmail2() {
		// TODO Auto-generated constructor stub sendMail2
	}

	
	public boolean sendMail2(String name1,String email1,String feedback)throws Exception{
		System.out.println("____________________________");
		 System.out.println(name1);
		//System.out.println(otp);
		 System.out.print("email1");
		
		  final String name=" ";
		 final String email="satishparmar84@gmail.com";
		final String password="satish@15";
			String to=email;
		 System.out.println("Reading password..");
		 Properties prop=new Properties();
		 prop.put("mail.smtp.auth","true");
		 prop.put("mail.smtp.starttls.enable","true");
		 prop.put("mail.smtp.host","smtp.gmail.com");
		 prop.put("mail.smtp.port","587");
		 System.out.println("Message sending..");
		 Session eSession=Session.getInstance(prop,  new javax.mail.Authenticator() 
		 {
				protected PasswordAuthentication
				getPasswordAuthentication() {
					return new PasswordAuthentication(email, password);
				}
		 });
	
		 

				Message message = new MimeMessage(eSession);
				message.setFrom(new InternetAddress(email));
				
				message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(to));
				//message.setSubject("Your OTP is:"+otp);
				message.setText(name   +new Date());
				message.setText(email);
				message.setText(feedback);

				Transport.send(message);
                 
				System.out.println("Thankyou your message successfull send ");
				  return true;
			
		
		 }
	}
