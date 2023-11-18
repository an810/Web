package com.example.service_one.exception;

import lombok.*;
import org.springframework.http.HttpStatus;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class BusinessException {
    private HttpStatus httpStatus;
    private String message;
}
