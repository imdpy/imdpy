package com.chen.pojo;

public class order {
    public int getOrderId() {
        return orderId;
    }

    public int getUserId() {
        return userId;
    }

    public int getBookId() {
        return bookId;
    }

    public String getAddr() {
        return addr;
    }

    public String getRemarks() {
        return remarks;
    }

    int orderId;
    int userId;
    int bookId;
    String addr;
    String remarks;
    @Override
    public String toString() {
        return "order{" +
                "orderId=" + orderId +
                ", userId=" + userId +
                ", bookId=" + bookId +
                ", addr='" + addr + '\'' +
                ", remarks='" + remarks + '\'' +
                '}';
    }
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

}
