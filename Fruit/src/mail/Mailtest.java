﻿package mail;

import javax.mail.*;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;
import java.util.Scanner;

public class Mailtest {

	// 发件人的 邮箱 和 密码（替换为自己的邮箱和密码）
	// PS: 某些邮箱服务器为了增加邮箱本身密码的安全性，给 SMTP 客户端设置了独立密码（有的邮箱称为“授权码”）,
	// 对于开启了独立密码的邮箱, 这里的邮箱密码必需使用这个独立密码（授权码）。
	public static String account = "794412471@qq.com";// 账号
	public static String password = "ncgzpyailxphbebc";// 密码

	// 发件人邮箱的 SMTP 服务器地址, 必须准确, 不同邮件服务器地址不同, 一般(只是一般, 绝非绝对)格式为: smtp.xxx.com
	// 网易163邮箱的 SMTP 服务器地址为: smtp.163.com
	public static String myEmailSMTPHost = "smtp.qq.com";

	/**
	 * 发送邮件的方法
	 * 
	 * @param to
	 *            邮件的接收方
	 * @param code
	 *            邮件的激活码
	 */
	public static void sendMail(String to, String code) {
		// 1.创建连接对象，链接到邮箱服务器
		Properties props = new Properties(); // 参数配置
		props.setProperty("mail.transport.protocol", "smtp"); // 使用的协议（JavaMail规范要求）
		props.setProperty("mail.smtp.host", myEmailSMTPHost); // 发件人的邮箱的 SMTP 服务器地址
		props.setProperty("mail.smtp.auth", "true"); // 需要请求认证

		// 2.根据配置创建会话对象, 用于和邮件服务器交互
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(account, password);
			}
		});

		try {
			// 3.创建邮件对象
			Message message = new MimeMessage(session);
			// 3.1设置发件人
			message.setFrom(new InternetAddress(account));
			// 3.2设置收件人
			message.setRecipient(RecipientType.TO, new InternetAddress(to));
			// 3.3设置邮件的主题
			message.setSubject("来自茜茜大队的验证邮件");
			// 3.4设置邮件的正文
			message.setContent("<h1>来自茜茜大队的验证邮件，您的验证码是：" + code, "text/html;charset=UTF-8");
			// 4.发送邮件
			Transport.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

}
