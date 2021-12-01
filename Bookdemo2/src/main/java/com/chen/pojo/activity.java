package com.chen.pojo;

public class activity {
    int id;

    public void setId(int id) {
        this.id = id;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public void setPicaddr(String picaddr) {
        this.picaddr = picaddr;
    }

    String activity;

    @Override
    public String toString() {
        return "activity{" +
                "id=" + id +
                ", activity='" + activity + '\'' +
                ", picaddr='" + picaddr + '\'' +
                '}';
    }

    String picaddr;
}
