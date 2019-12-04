package com.example.demo.bean;


public class User {

    private long uid;
    private String uname;
    private String upassword;
    private long roleRId;
    private long collegeColid;
    private java.sql.Timestamp createTime;


    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }


    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }


    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }


    public long getRoleRId() {
        return roleRId;
    }

    public void setRoleRId(long roleRId) {
        this.roleRId = roleRId;
    }


    public long getCollegeColid() {
        return collegeColid;
    }

    public void setCollegeColid(long collegeColid) {
        this.collegeColid = collegeColid;
    }


    public java.sql.Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(java.sql.Timestamp createTime) {
        this.createTime = createTime;
    }

}
