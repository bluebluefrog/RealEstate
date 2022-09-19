package com.g7.common.exception;

import com.g7.common.result.ResponseStatusEnum;

public class GraceException {

    public static void display(ResponseStatusEnum responseStatusEnum) {
        throw new MyCustomException(responseStatusEnum);
    }

}
