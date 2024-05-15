package com.educative.ecommerce.dto;

import com.educative.ecommerce.model.User;

public class ResponseDto {

    private String status;
    private String message;
    private User user;

    private User getUser(){ return user;}

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public ResponseDto(String status, String message) {
        this.status = status;
        this.message = message;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
