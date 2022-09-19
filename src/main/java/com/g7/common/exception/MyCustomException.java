package com.g7.common.exception;


import com.g7.common.result.ResponseStatusEnum;

/**
 * custom exception
 * Purpose: Unified processing of exception information
 * Easy decoupling, decoupling of interceptor, service and controller exception errors,
 * Not limited by the type returned by the service
 */
public class MyCustomException extends RuntimeException {

    private ResponseStatusEnum responseStatusEnum;

    public MyCustomException(ResponseStatusEnum responseStatusEnum) {
        super("Exception status code is: " + responseStatusEnum.status()
                + "; The specific exception information is: " + responseStatusEnum.msg());
        this.responseStatusEnum = responseStatusEnum;
    }

    public ResponseStatusEnum getResponseStatusEnum() {
        return responseStatusEnum;
    }

    public void setResponseStatusEnum(ResponseStatusEnum responseStatusEnum) {
        this.responseStatusEnum = responseStatusEnum;
    }
}
