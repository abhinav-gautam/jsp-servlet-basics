package com.abhinavgautam.MVCBasics;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
	public static List<Student> getStudents() {
		// Create empty list
		List<Student> students = new ArrayList<>();
		
		// Add sample data
		students.add(new Student("Abhinav", "Gautam", 23));
		students.add(new Student("John", "Doe", 13));
		students.add(new Student("Jane", "Doe", 28));
		
		// Return data
		return students;

	}
}
