# e-tuition

**Project Name: E Tuition**

This is an E-Learning web app. This app is built using, React(front-end) C#(backend) and MSSQL(database)

Project Members: Inzamam, Alvee, Abir

**Project Description:**

This is an E-Learning web app.
This app is built using,
React(front-end) C#(backend) and MSSQL(database)

**Required Softwares to run the project:**

Microsoft Visual Studio 2019 (16.8.5 or higher), Microsoft SQL Server Management Studio (18.4), NODE.
The Sql server needs to run in 'SQL Server Authentication' mode,
with appropriate port settings.
Then Database should be created using 'database.sql' file.

Edit the 'appsettings.json' file as
"DefaultConnectionString": "Server =DESKTOP-7RRRIQQ; Database=test; User ID = sa; Password=123456; ".
'DESKTOP-7RRRIQQ' should be changed to pc name(sql server name).

Run 'npm install' in the 'e-tuition/e-tuition/ClientApp/' folder
to install the node modules.

Then the e-tuition.sln file should be run.

**Project Features:**

There is an home section for teacher and students.
They can signup/signin separately from home.
A teacher can create courses and supply materials in each course.
For this a teacher needs to be varified by an admin.
A student can enroll courses and get the materials from a course.

There is an admin panel at /admin-login route,
which is saperate from the main home page.
An admin can see various statistics of the website,
and varify a teacher.
