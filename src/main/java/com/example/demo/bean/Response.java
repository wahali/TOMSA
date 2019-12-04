package com.example.demo.bean;


public class Response {

    private long rid;
    private String content;
    private long questionMid;
    private long courseCouid;


    public long getRid() {
        return rid;
    }

    public void setRid(long rid) {
        this.rid = rid;
    }


    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


    public long getQuestionMid() {
        return questionMid;
    }

    public void setQuestionMid(long questionMid) {
        this.questionMid = questionMid;
    }


    public long getCourseCouid() {
        return courseCouid;
    }

    public void setCourseCouid(long courseCouid) {
        this.courseCouid = courseCouid;
    }

}
