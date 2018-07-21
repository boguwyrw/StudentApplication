<%@ page import="pl.home.StudentsApplication" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista aplikacji</title>
</head>
<body>

<table style="border: solid 1px blue" rules="all">
    <tr>
        <td>Id</td>
        <td>First name</td>
        <td>Second name</td>
        <td>Faculty</td>
        <td>Data</td>
        <td>Accepted</td>
    </tr>

    <%
        Object studentsApplications = (List<StudentsApplication>) session.getAttribute("studentsApplications");
        if (studentsApplications != null && studentsApplications instanceof List) {
            List<StudentsApplication> applicationList = (List<StudentsApplication>) studentsApplications;
            for (StudentsApplication studentsApplication : applicationList) {
                out.print("<tr>");
                out.print("<td>" + studentsApplication.getId() + "</td>");
                out.print("<td>" + studentsApplication.getFirstName() + "</td>");
                out.print("<td>" + studentsApplication.getSecondName() + "</td>");
                out.print("<td>" + studentsApplication.getFaculty() + "</td>");
                out.print("<td>" + studentsApplication.getDate() + "</td>");
                out.print("<td>" + studentsApplication.isAccepted() + "</td>");
                out.print("</tr>");
            }
        }

    %>

</table>

</body>
</html>
