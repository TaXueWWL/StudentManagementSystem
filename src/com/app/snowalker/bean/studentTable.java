package com.app.snowalker.bean;
/**
 * 学生用户bean
 * @author Administrator
 * @date 2015年10月28日
 * @name studentTable.java
 */
public class studentTable {
		/*
		 * 用户信息
		 */
		private String id;
		private String password;
		private String name;
		private String gender;//性别
		private String major;
		private String age;
		/*
		 * 学生成绩
		 */
		private String math;
		private String cpp;
		private String database;
		private String Java;
		private String english;
		
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getMajor() {
			return major;
		}
		public void setMajor(String major) {
			this.major = major;
		}
		public String getAge() {
			return age;
		}
		public void setAge(String age) {
			this.age = age;
		}
		public String getMath() {
			return math;
		}
		public void setMath(String math) {
			this.math = math;
		}
		public String getCpp() {
			return cpp;
		}
		public void setCpp(String cpp) {
			this.cpp = cpp;
		}
		public String getDatabase() {
			return database;
		}
		public void setDatabase(String database) {
			this.database = database;
		}
		public String getJava() {
			return Java;
		}
		public void setJava(String java) {
			Java = java;
		}
		public String getEnglish() {
			return english;
		}
		public void setEnglish(String english) {
			this.english = english;
		}
}
