package com.example.demo.bean;

public class Question {

    private long mid;
    private String content;
    private long userUid;
    private long courseCouid;


    public long getMid() {
        return mid;
    }

    public void setMid(long mid) {
        this.mid = mid;
    }


    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


    public long getUserUid() {
        return userUid;
    }

    public void setUserUid(long userUid) {
        this.userUid = userUid;
    }


    public long getCourseCouid() {
        return courseCouid;
    }

    public void setCourseCouid(long courseCouid) {
        this.courseCouid = courseCouid;
    }

}
