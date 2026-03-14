Α brief description of the basics of the work:

We are creating a central menu (menu.jsp) that will be the home page for all users.

In this, the login (username, password) function will be performed with hash and salt
and the role of the user who wants to log in will be entered (patient, doctor, administrator).

Depending on his role, it will be checked if there is a record in the corresponding database table and if so,
then the corresponding menu of functions will be displayed for each (Patient.jsp, Doctor.jsp ,Admin.jsp).

On each of the above pages, buttons appear with functions that are executed in the corresponding:
PatientServlet, DoctorServlet, AdminServlet.

During the user's login, an HttpSession is created which ensures that the user will remain connected to the website until he/she logs out.
Then the session will be deleted and the user will have to reconnect with his/her data.
