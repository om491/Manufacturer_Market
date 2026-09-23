package ccom.nt.Service;

import java.util.Random;
import java.util.function.Supplier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {
	
	public int otp;
	@Autowired
	private JavaMailSender mailSender;

	public void sendRegistrationMail(String email, String name) {

		otp = generateOtp();

		SimpleMailMessage message = new SimpleMailMessage();

		message.setTo(email);
		message.setSubject("Registration Successful");

		message.setText("Hello " + name + ",\n\n" + "Congratulations!\n\n"
				+ "Your registration has been completed successfully.\n\n" + "Your OTP is: " + otp + "\n\n"
				+ "You can now login and use our platform.\n\n" + "Thank you,\n" + "Stock Marketplace Team");

		mailSender.send(message);
	}

	public static int generateOtp() {

		Supplier<Integer> otp = () -> 100000 + new Random().nextInt(900000);

		int generatedOtp = otp.get();

		System.out.println("Generated OTP: " + generatedOtp);

		return generatedOtp;
	}
}
