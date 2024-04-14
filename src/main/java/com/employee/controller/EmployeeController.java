package com.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.employee.entity.Employee;
import com.employee.service.EmployeeService;

//02/07/2024 video numberl
@Controller
public class EmployeeController {

	
	// EmployeeController(dependent) jo h EmployeeService(dependency) ke method ko
	// call karega mean EmployeeService class ka Object ka reference chahiye

	@Autowired // for DI
	private EmployeeService employeeService;

	// handller for home page
	// used to map web requests onto specific handler classes and/or
							// handler/methods.
	@RequestMapping("/") 
	public String getHomeView() {
		return "home.jsp";
	}

	// handller for add.jsp page
	@RequestMapping("add-form") // add-form is mapping name
	public String getAddFormView() {
		return "add.jsp";
	}

	// handller for add-record.jsp action page
	@RequestMapping("add-record") // add-record is mapping name
	public String saveEmployeeRecord(Employee employee) { // front controller Employee class object bana ke jsp Employee
		
		//session ka object repository ke pass h to iske though waha iska reference bheja gya													// class value aayi (eid ,firstname..) setter method
		//contoller call employeeService and employeeService call employeeRepository method aur DML operation karega
		employeeService.saveRecord(employee);
		
		
		return "add-success.jsp";
	}

	// handller for list.jsp page
	@RequestMapping("employee-list")
	public String getEmployeeList(Model model) {
		//controller call employeeService method and employeeService call employeeRepository method and employeeRepository
		List<Employee> employeeList = employeeService.getList();
		//Model send data object(employeeList) from controller to views(list.jsp) page 
		model.addAttribute("elist", employeeList);
		return "list.jsp";
	}

	// handller for search.jsp page
	@RequestMapping("search-form")
	public String getSearchFormView() {
		return "search.jsp";
	}

	// handller for show-employee.jsp page
	@RequestMapping("search-record")
	public String searchEmployeeRecord(int eid, Model model) { // eid milega-->front
			//eid -> front controller ->web server ->browser ->form text se milega eid 													// controller-->Server-->Browser-->User(TextBox)
		Employee employee = employeeService.getRecord(eid);
		
		if (employee == null) {
			model.addAttribute("msg", "Record Not Found");
			model.addAttribute("eid", eid);

			return "search.jsp";
		}

		model.addAttribute("emp", employee);
		return "show-employee.jsp";

	}

	// handler for delete.jsp
	@RequestMapping("delete-form")
	public String getDeleteFormView() {
		return "delete.jsp";
	}

	// handller for delete-record.jsp page
	@RequestMapping("delete-record")
	public String deleteEmployeeRecord(int eid, Model model) { // eid milega-->front
																// controller-->Server-->Browser-->User(TextBox)
		Employee employee = employeeService.getRecord(eid);
		if (employee == null) {
			model.addAttribute("msg", "Record does not exist");

		} else {
			employeeService.deleteRecord(employee);
			model.addAttribute("msg", "Employee Record has been Deleted");
		}
		model.addAttribute("eid", eid);
		return "delete.jsp";
	}

	// handler for edit.jsp
	@RequestMapping("edit-form")
	public String getEditFormView() {
		return "edit.jsp";
	}

	// handller for edit-employee.jsp page
	@RequestMapping("show-record")
	public String showEmployeeRecord(int eid, Model model) {

		Employee employee = employeeService.getRecord(eid);
		if (employee == null) {
			model.addAttribute("msg", "Record does not FOUND");

			model.addAttribute("eid", eid);
			return "edit.jsp";
		}
		model.addAttribute("emp", employee);
		return "edit-employee.jsp";
	}

	// handller for update-record(edit-employee) page
	@RequestMapping("update-record") // add-form is mapping name
	public String updateEmployeeRecord(Employee employee) {
		
		employeeService.updateRecord(employee);
		
		return "update-success.jsp";
	}

}
