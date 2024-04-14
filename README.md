

# Employee Dashboard :briefcase:

**Employee Dashboard** is a web application for managing employee information and tasks.

### Subject Area

A user can create and manage employee profiles within the system. Each employee has attributes such as name, job title, department, and contact information. Additionally, users can assign tasks and track their progress.

### Definitions

- **User** - an authorized individual who can manage employee data and tasks. Users can create, update, and delete employee profiles.
- **Employee** - an individual whose information, including name, job title, department, and contact details, is managed within the dashboard.
- **Task** - a work-related activity assigned to an employee. Tasks can be created, updated, and deleted by users.

### Tech Part :Ajay Pratap:

- The main project language is Java, using Hibernate, Spring MVC, and MySQL for data management and web application development.
- The front end is built with Bootstrap 4, HTML, CSS, and JavaScript for a responsive and interactive user interface.
- The project follows the MVC pattern and incorporates other patterns such as Strategy and DAO.
- Apache Maven is used for building the project.
- MySQL serves as the primary database. The required tables can be created using the provided [main.sql](main.sql) script.
- The project runs on Apache Tomcat.

### Build and Package

**Prerequisites**<br>
To build and package the application, ensure you have Java 18, Maven, and MySQL installed.<br>
After installing the MySQL server, run the [main.sql](main.sql) script to create the schema and required tables.

**Build and package**<br>

1. Clone the repository to your local machine using Git.
2. Navigate to the root of the project and run `mvn package` in your terminal.

Once the packaging process is complete, start the application using the following command:
`java -jar target/employee-dashboard.jar`. The application will start (default port is 8080). Open your browser and type `localhost:8080` to access the application.

### Use Case

Here is an overview of how to use the Employee Dashboard:

1. **Login**: Log in to the application with your credentials.
2. **Employee Management**: Create, update, and delete employee profiles, including their name, job title, and department.
3. **Task Management**: Assign tasks to employees, update task progress, and monitor completion.
4. **Filtering**: Use filters to sort and view employees and tasks based on various criteria.

## Author

- Name: Ajay Pratap Rav
- Email: ajaypratap8977@gmail.com
- [LinkedIn](https://www.linkedin.com/in/ajaypratap143/)

---


