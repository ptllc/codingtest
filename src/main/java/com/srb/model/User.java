package com.srb.model;

import java.io.Serializable;
import java.util.Date;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

/**
 * @author user
 *
 */
@Component
@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4719496002133929741L;
	
	private String username;
	private Date birthDate;
	private String question1;
	private String question2;
	private String question3;
	private String answer1;
	private String answer2;
	private String answer3;
	
	public User() {
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getQuestion1() {
		return question1;
	}
	public void setQuestion1(String question1) {
		this.question1 = question1;
	}
	public String getQuestion2() {
		return question2;
	}
	public void setQuestion2(String question2) {
		this.question2 = question2;
	}
	public String getQuestion3() {
		return question3;
	}
	public void setQuestion3(String question3) {
		this.question3 = question3;
	}
	public String getAnswer1() {
		return answer1;
	}
	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}
	public String getAnswer2() {
		return answer2;
	}
	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}
	public String getAnswer3() {
		return answer3;
	}
	public void setAnswer3(String answer3) {
		this.answer3 = answer3;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", birthDate=" + birthDate + ", question1=" + question1 + ", question2="
				+ question2 + ", question3=" + question3 + ", answer1=" + answer1 + ", answer2=" + answer2
				+ ", answer3=" + answer3 + "]";
	}
		
}
