package com.springapp.mvc.entity;

/**
 * Created with IntelliJ IDEA.
 * User: qfp
 * Date: 13-10-31
 * Time: 下午10:47
 * To change this template use File | Settings | File Templates.
 */


import javax.persistence.*;

@Entity(name="users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Basic
    private String firstName;

    @Basic
    private String lastName;

    @Basic
    private String email;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String name) {
        this.firstName = name;
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
}