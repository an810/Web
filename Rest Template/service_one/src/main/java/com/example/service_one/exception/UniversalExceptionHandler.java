package com.example.service_one.exception;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;


public class UniversalExceptionHandler {
    @ExceptionHandler(Exception.class)
    public ResponseEntity<Object> handleException(HttpServletRequest req, Exception e) {
        BusinessException err = new BusinessException(HttpStatus.BAD_REQUEST, e.getMessage());
        return new ResponseEntity<Object>(err, new HttpHeaders(), err.getHttpStatus());
    }


}
