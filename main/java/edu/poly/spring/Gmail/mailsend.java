package edu.poly.spring.Gmail;

import javax.mail.MessagingException;

public interface mailsend {
 public void send(String to ,String from, String subject,String content) throws MessagingException;
 
}
