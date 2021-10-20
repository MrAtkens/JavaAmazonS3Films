package com.book.find.models;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import java.sql.Date;
import java.util.UUID;

@MappedSuperclass
public class MainEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id = UUID.randomUUID();
    private Date createdDate;


    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public Date getCreatedDate() {
        return createdDate;
    }
}
