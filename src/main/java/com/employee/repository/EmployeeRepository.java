package com.employee.repository;

import java.util.List;

import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.employee.entity.Employee;

@Repository // Is class ka object IOC banayega
public class EmployeeRepository {
	//DML operation call it
	private Session session;
	private Transaction transaction;
	

	@Autowired // dependency injection call constructer
	public EmployeeRepository(SessionFactory factory) { // is class ko SessionFactory ka object ,spring framework ne
														// bana kar diya h
		// Object of Session
		session = factory.openSession();
//	Object Of Transaction
		transaction = session.getTransaction();
	}

	public void saveEmployee(Employee employee) {
		// DML Operation hibernate
		transaction.begin();
		session.save(employee); 
		transaction.commit();

	}

//List Page
	public List<Employee> getEmployeeList() {
		Query<Employee> query = session.createQuery("from Employee", Employee.class);
		List<Employee> empList = query.list();

		return empList;
	}

	// Search page
	public Employee getEmployee(int eid) {
		// call session method get()/load() for retrive record
		Employee emp = session.get(Employee.class, eid);
		return emp;
	}

	public void deleteEmployee(Employee employee) {
		// DML Operation

		transaction.begin();
		session.delete(employee);
		transaction.commit();

	}

	public void updateEmployee(Employee employeeo, Employee employeen) {
		// yor code try
		// DML Operation
		transaction.begin();
//		employeeo.setEid();
		employeeo.setFirstname(employeen.getFirstname());
		employeeo.setLastname(employeen.getLastname());
		employeeo.setPhone(employeen.getPhone());
		employeeo.setDepartment(employeen.getDepartment());
		employeeo.setSalary(employeen.getSalary());
		session.update(employeeo);
		transaction.commit();
	}
}
