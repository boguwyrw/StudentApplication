package pl.home;

import java.time.LocalDate;

public class StudentsApplication {

    private long id;
    private String firstName;
    private String secondName;
    private String faculty;
    private LocalDate date;
    private boolean accepted;

    public StudentsApplication() {
    }

    public StudentsApplication(long id, String firstName, String secondName, String faculty, LocalDate date, boolean accepted) {
        this.id = id;
        this.firstName = firstName;
        this.secondName = secondName;
        this.faculty = faculty;
        this.date = date;
        this.accepted = accepted;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public boolean isAccepted() {
        return accepted;
    }

    public void setAccepted(boolean accepted) {
        this.accepted = accepted;
    }
}
