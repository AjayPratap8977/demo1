package com.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.entity.Employee;
import com.employee.repository.EmployeeRepository;

@Service
public class EmployeeService {
	
	// EmployeeService(dependent) jo h EmployeeRepository(dependency) ke method ko
	// call karega mean EmployeeRepository class ka Object ka reference chahiye
	
	@Autowired //for Dependency Injection
	private EmployeeRepository employeeRepository;

	
	public void saveRecord(Employee employee) {
		
		employeeRepository.saveEmployee(employee);
	}

	//list page
	public List<Employee> getList() {

		return employeeRepository.getEmployeeList();
	}

	//search page
	public Employee getRecord(int eid) {
		
		return employeeRepository.getEmployee(eid);
	}

	//delete page
	public void deleteRecord(Employee employee) {
		employeeRepository.deleteEmployee(employee);
	
	}

	public void updateRecord(Employee employeen) {
	Employee employeeo=employeeRepository.getEmployee(employeen.getEid());
	employeeRepository.updateEmployee(employeeo,employeen);	
	}
}
