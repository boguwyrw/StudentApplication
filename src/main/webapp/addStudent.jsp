<%@ page import="pl.home.StudentsApplication" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj studenta</title>
</head>
<body>

<%! int applicationCounter = 1; %>

<%
    String firstName = request.getParameter("firstName");
    String secondName = request.getParameter("secondName");
    String faculty = request.getParameter("faculty");
    String applicationTime = request.getParameter("application_time");

    StudentsApplication studentsApplication = new StudentsApplication(applicationCounter++, firstName, secondName, faculty, LocalDate.now(), false);

    Object studentsApplications = (List<StudentsApplication>) session.getAttribute("studentsApplications");
    List<StudentsApplication> applicationList;

    if (studentsApplications != null && studentsApplications instanceof List) {
        applicationList = (List<StudentsApplication>) studentsApplications;
    } else {
        applicationList = new ArrayList<>();
    }

    applicationList.add(studentsApplication);
    session.setAttribute("studentsApplications", applicationList);
    response.sendRedirect("applicationList.jsp");

%>

</body>
</html>
