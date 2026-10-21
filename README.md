# StudentManagementSystem
STUDENT MANAGEMENT SYSTEM - JAVA SWING + MYSQL + VS CODE

WHAT THIS PROJECT USES
- Frontend: Java Swing (the graphical window)
- Backend: Java methods and JDBC (database connection)
- Database: MySQL
- Build/dependency manager: Maven (downloads MySQL Connector/J automatically)

BEFORE STARTING
1. Java JDK is already installed if `java -version` and `javac -version` work.
2. Install MySQL Server (or install XAMPP and start its MySQL service).
3. Install Apache Maven, or use VS Code's Java Extension Pack/Maven support.
4. In VS Code, install the Extension Pack for Java.

STEP A - CREATE THE DATABASE
Option 1: MySQL Workbench
1. Open MySQL Workbench and connect to your local MySQL server.
2. Open sql/setup.sql from this project.
3. Click the lightning bolt / Execute button to run the whole script.

Option 2: phpMyAdmin (if using XAMPP)
1. Start MySQL in the XAMPP Control Panel.
2. Open phpMyAdmin in your browser.
3. Select the SQL tab, paste/run the contents of sql/setup.sql.

STEP B - SET YOUR MYSQL LOGIN
The app defaults to:
  username: root
  password: (blank)
This often matches a default local XAMPP setup, but not every MySQL installation.

If your MySQL root account has a password, set these Windows environment variables before launching VS Code:
  SMS_DB_USER = root
  SMS_DB_PASSWORD = your_actual_mysql_password

For temporary setup in Command Prompt, use (replace the password):
  set SMS_DB_USER=root
  set SMS_DB_PASSWORD=your_actual_mysql_password
Then launch the app from that same Command Prompt.
Do not share your password or put it in a public repository.

STEP C - OPEN IN VS CODE
1. Extract the ZIP file to a normal folder (do not run it from inside the ZIP).
2. In VS Code choose File > Open Folder.
3. Select the StudentManagementSystemMySQL folder (the one containing pom.xml).
4. If VS Code asks to import the Maven project, accept.
5. Wait while Maven downloads MySQL Connector/J. Internet is needed for the first download.

STEP D - RUN
In VS Code, choose Terminal > New Terminal. Make sure the terminal is in the folder containing pom.xml.
Run:
  mvn clean compile
Then:
  mvn exec:java
The Swing graphical window should open.

If `mvn` is not recognized, install Apache Maven and add Maven's bin folder to PATH, then close/reopen VS Code. Alternatively use the Maven panel in VS Code and run the exec goal after the project imports.

HOW THE CONNECTION WORKS
- Java Swing is the graphical frontend.
- StudentManagementSystem.java contains the application logic and JDBC calls (backend).
- MySQL stores student registration, marks, and attendance in the student_management.students table.
- JDBC connects to jdbc:mysql://localhost:3306/student_management.
- Registering/updating a student writes the data to MySQL; startup loads saved records from MySQL.

TROUBLESHOOTING
- Communications link failure / connection refused: make sure MySQL Server is running and listening on port 3306.
- Access denied for user: set SMS_DB_USER and SMS_DB_PASSWORD correctly.
- Unknown database 'student_management': run sql/setup.sql.
- No suitable driver: ensure Maven imported/downloaded dependencies; run `mvn clean compile` again.
- `mvn` is not recognized: Maven is not installed or its bin folder is not on PATH.
- The Java app is a desktop Swing app; it is not a website.

FEATURES
Student registration, marks for three subjects, attendance entry, result and grade calculation, search, records table, dashboard summary.
Grades use example boundaries in the source and can be changed for your college's rules.

