package ch04.com.dao;

public class Person {
	
	private int id = 20190720; 
	private String name = "김민수";

	public Person() { // 기본 생성자.
		
	}

	public int getId() { 
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}