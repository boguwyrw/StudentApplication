<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wzor aplikacji</title>
</head>
<body>

<form action="addStudent.jsp" method="post">
    <form-group>
        <div><label for="firstName">Imie studenta:</label></div>
        <div><input type="text" id="firstName" name="firstName"></div>
    </form-group>
    <form-group>
        <div><label for="secondName">Nazwisko studenta:</label></div>
        <div><input type="text" id="secondName" name="secondName"></div>
    </form-group>
    <form-group>
        <div><label for="faculty">Wydzial:</label></div>
        <div><input type="text" id="faculty" name="faculty"></div>
    </form-group>
    <form-group>
        <div><label for="application_time">Data zlozenia podania:</label></div>
        <div><input type="date" id="application_time" name="application_time"></div>
    </form-group>
    <input type="submit" value="Przeslij podanie!">
</form>

</body>
</html>
