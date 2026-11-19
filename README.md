# Library Book Management and Fine Calculation System
OOPs Using Java - Case Study Project (Topic 2) | Chandigarh University
Team: Seema Rani (25BCS11678), Garima Sharma (25BCS10165)

## Features
- Add / view / search books; register students / view students
- Issue and return books (one transaction each, rolled back on error)
- Overdue fine = days late x Rs. 2 per day (loan period 14 days, editable in application.properties)
- Student borrowing history and overdue-books report
- Traditional JDBC (DriverManager, PreparedStatement, ResultSet) AND Spring Boot + JdbcTemplate

## Requirements
- JDK 17 or newer (JDK 21 works)
- Maven 3.8+ (or open the folder in IntelliJ IDEA / Eclipse / VS Code as a Maven project)
- Internet on the first run so Maven can download the dependencies
- No database installation needed: an embedded H2 database is created in the ./data folder

## Web front end (browser)
After the app starts, open **http://localhost:8080** in your browser. Tabs: Dashboard, Books, Students, Issue / Return, History.
The old console menu can still be switched on with `library.console.enabled=true` in application.properties.

## Run
    mvn spring-boot:run

or build a jar and run it:

    mvn clean package
    java -jar target/library-management-system-1.0.0.jar

Run the commands from inside this folder (the one containing pom.xml). The Run window prints the web address; open it in a browser.

## Quick test (shows the fine calculation)
1. Menu 6 -> Book ID 101, Student ID 1, issue date 2026-10-01  (due date becomes 2026-10-15)
2. Menu 7 -> Book ID 101, return date 2026-10-20               (5 days late -> Fine Rs. 10.00)

## Use MySQL instead of H2 (optional)
Run database/mysql_schema.sql, uncomment the MySQL dependency in pom.xml and the MySQL lines in
src/main/resources/application.properties (set your password).

## Project structure
    src/main/java/com/cu/library
        LibraryApplication.java        Spring Boot entry point
        model/                         Book, Student, IssueRecord, ReturnReceipt
        repository/                    Spring JDBC (JdbcTemplate) - @Repository
        service/                       Business logic, fine calculation - @Service, @Transactional
        jdbc/JdbcBookDao.java          Traditional JDBC - @Component
        ui/ConsoleMenu.java            Console menu - @Component, CommandLineRunner
    src/main/resources                 application.properties, schema.sql, data.sql
