package sis.com.mail;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail3 {
	 public static boolean sendMail3(String mail,String otp)throws Exception{
			System.out.println("____________________________");
			 System.out.println(mail);
			System.out.println(otp);
			 System.out.print("MAIL");
			
			 final String email="satishparmar84@gmail.com";
			final String password="satish@15";
			String to=mail;
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
					//message.setSubject("Your OTP is : "+otp);
					message.setText("Welcome  "+new Date());

					Transport.send(message);
	                 
					System.out.println("message sent ");
					  return true;
				
		 
			
						

		 }//method

	}//class