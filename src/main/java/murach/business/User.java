package murach.business;

import murach.inter.UserEnum;
import java.io.Serializable;
import java.sql.Date;

public class User implements Serializable {

    private String firstName;
    private String lastName;
    private String email;
    private Date birth;
    private UserEnum.Hear hear;
    private boolean receiveLike;
    private boolean receiveSend;
    private UserEnum.Contact contact;

    public User() {
        firstName = "";
        lastName = "";
        email = "";
        birth = null;
        hear = UserEnum.Hear.NON;
        receiveLike = false;
        receiveSend = false;
        contact = UserEnum.Contact.NON;
    }

    public User(String firstName, String lastName, String email, Date birth, UserEnum.Hear hear, boolean receiveLike, boolean receiveSend, UserEnum.Contact contact) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.birth = birth;
        this.hear = hear;
        this.receiveLike = receiveLike;
        this.receiveSend = receiveSend;
        this.contact = contact;
    }

    // Getters and setters for all fields
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public UserEnum.Hear getHear() {
        return hear;
    }

    public void setHear(UserEnum.Hear hear) {
        this.hear = hear;
    }

    public boolean isReceiveLike() {
        return receiveLike;
    }

    public void setReceiveLike(boolean receiveLike) {
        this.receiveLike = receiveLike;
    }

    public boolean isReceiveSend() {
        return receiveSend;
    }

    public void setReceiveSend(boolean receiveSend) {
        this.receiveSend = receiveSend;
    }

    public UserEnum.Contact getContact() {
        return contact;
    }

    public void setContact(UserEnum.Contact contact) {
        this.contact = contact;
    }
}
