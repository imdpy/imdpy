package com.chen.pojo;


import java.io.Serializable;

public class Books implements Serializable {
        private int bookID;
        private String bookName;
        private int bookCounts;
        private String detail;

        public int getPrice() {
                return price;
        }

        public void setPrice(int price) {
                this.price = price;
        }

        public String getPicaddr() {
                return picaddr;
        }

        public void setPicaddr(String picaddr) {
                this.picaddr = picaddr;
        }

        private int price;
        private String picaddr;
        public Books(int bookID, String bookName, int bookCounts, String detail,int price,String picaddr) {
                this.bookID = bookID;
                this.bookName = bookName;
                this.bookCounts = bookCounts;
                this.detail = detail;
                this.price=price;
                this.picaddr=picaddr;
        }

        public Books() {
        }

        public int getBookID() {
                return bookID;
        }

        public void setBookID(int bookID) {
                this.bookID = bookID;
        }

        public String getBookName() {
                return bookName;
        }

        public void setBookName(String bookName) {
                this.bookName = bookName;
        }

        public int getBookCounts() {
                return bookCounts;
        }

        public void setBookCounts(int bookCounts) {
                this.bookCounts = bookCounts;
        }

        public String getDetail() {
                return detail;
        }

        public void setDetail(String detail) {
                this.detail = detail;
        }

        @Override
        public String toString() {
                return "Books{" +
                        "bookID=" + bookID +
                        ", bookName='" + bookName + '\'' +
                        ", bookCounts=" + bookCounts +
                        ", detail='" + detail + '\'' +
                        ", price=" + price +
                        ", picaddr='" + picaddr + '\'' +
                        '}';
        }
}
