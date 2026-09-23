package ccom.nt.config;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
@ComponentScan("ccom.nt")
public class EmailConfiguration {
	@Bean
	public JavaMailSender javaMailSender() {
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		
		mailSender.setHost("smtp.gmail.com");
		mailSender.setPort(587);
		
		mailSender.setUsername("choudharisneha044@gmail.com");
		mailSender.setPassword("xrdbdtcdfoqpdrlj");
         
		Properties properties = mailSender.getJavaMailProperties();
		 properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.starttls.enable", "true");

		return mailSender;

	}
}
