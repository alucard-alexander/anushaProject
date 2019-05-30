package com.anu.DAO;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.net.ssl.internal.ssl.Provider;

public class Email {



	public static boolean sendEmail(String receiver,String name,int quantity,Double total_cost) {
		try {
			String host = "smtp.gmail.com";
			String user = "moderbasket@gmail.com";
			//Hi there
			String pass = "modernBasket123";
			String to =receiver ;
			String from = "moderbasket@gmail.com";
			String subject = "Order notification";
			String messageText = "Item Name:"+name+"\nQuantity:"+quantity+"\nTotal Price:"+total_cost+"\nOrder is placed successfully";
			boolean sessionDebug = false; 
			Properties props = System.getProperties();
			
			props.put("mail.smtp.starttls.enable", "true");
			
			props.put("mail.smpt.host", host);
			props.put("mail.smtp.port", "587");
			props.put("mail.smpt.auth", "true");
			props.put("mail.smtp.starttls.required", "true");

			java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());

			Session mailSession = Session.getDefaultInstance(props, null);
			mailSession.setDebug(sessionDebug);
			Message msg = new MimeMessage(mailSession);

			msg.setFrom(new InternetAddress(from));
			InternetAddress[] address = {new InternetAddress(to)};
			msg.setRecipients(Message.RecipientType.TO, address);
			msg.setSubject(subject);
			msg.setSentDate(new Date());
			msg.setText(messageText);
			//hi
			Transport transport = mailSession.getTransport("smtp");
			transport.connect(host,user,pass);
			transport.sendMessage(msg, msg.getAllRecipients());
			transport.close();
			return true;
			

			
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

}
