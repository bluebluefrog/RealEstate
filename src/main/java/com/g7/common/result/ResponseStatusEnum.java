package com.g7.common.result;

/**
 * Response result enumeration, used to provide GraceJSONResult returned to the front end
 * This enumeration class contains a lot of different status codes for use, which can be customized
 * It is convenient to manage the status code more elegantly, at a glance
 */
public enum ResponseStatusEnum {

    SUCCESS(200, true, "Operation succeeded!"),
    FAILED(500, false, "Operation failed!"),

    // 50x
    UN_LOGIN(501,false,"Please login before continuing!"),
    TICKET_INVALID(502,false,"The session is invalid, please log in again!"),
    NO_AUTH(503, false, "You have insufficient permissions to continue the operation!"),
    USER_NOT_EXIST_ERROR(516,false,"User does not exist!"),
    USERNAME_EXIST(517,false,"username already exists!"),
    LOGIN_FAIL(518,false,"Wrong password!"),
    PROPERTY_NO_EXIST(519,false,"property does not exist!"),
    AUCTION_NO_EXIST(520,false,"auction does not exist!"),
    AUCTION_FAIL_BID_PRICE_LOW(520,false,"auction fail bid price lower then previous!"),

    NEED_OVER_START_BID(521,false,"your bid is not over start bid!"),

    PARAM_EMPTY(522,false,"param is empty!"),

    AUCTION_EXIST(523,false,"auction exist!"),

    BID_MARKUP_NEED_REACH_THE_STANDARD(524,false,"bid markup need over standard!"),

    AUCTION_EXPIRE(525,false,"auction expire!"),

    AUCTION_DATE_WRONG(525,false,"auction date or duration is wrong!"),

    AUCTION_BID_WRONG(526,false,"auction start bid or markup is wrong!"),

    NO_WATCH_LIST(527,false,"no watch list!"),

    WATCH_LIST_EXIST(527,false,"watch list exist!"),
    FILE_MAX_SIZE_2MB_ERROR(5132,false,"Only supports uploading pictures under 2MB!"),


    // custom system level exception 54x
    SYSTEM_INDEX_OUT_OF_BOUNDS(541, false, "System error, array out of bounds!"),
    SYSTEM_ARITHMETIC_BY_ZERO(542, false, "System error, cannot divide by zero!"),
    SYSTEM_NULL_POINTER(543, false, "System error, null pointer!"),
    SYSTEM_NUMBER_FORMAT(544, false, "System error, abnormal number conversion!"),
    SYSTEM_PARSE(545, false, "System error, parsing exception!"),
    SYSTEM_IO(546, false, "System error, IO input and output exception!"),
    SYSTEM_FILE_NOT_FOUND(547, false, "System error, file not found!"),
    SYSTEM_CLASS_CAST(548, false, "System error, type cast error!"),
    SYSTEM_PARSER_ERROR(549, false, "System error, parsing error!"),
    SYSTEM_DATE_PARSER_ERROR(550, false, "System error, date parsing error!"),

    // admin management system 56x
    ADMIN_USERNAME_NULL_ERROR(561, false, "Administrator login name cannot be empty!"),


    // Media Center related error 58x
    ARTICLE_COVER_NOT_EXIST_ERROR(580, false, "The article cover does not exist, please choose one!"),
    ARTICLE_CATEGORY_NOT_EXIST_ERROR(581, false, "Please select the correct article field!"),
    ARTICLE_CREATE_ERROR(582, false, "Failed to create article, please try again or contact administrator!"),

    // face recognition error code
    FACE_VERIFY_TYPE_ERROR(600, false, "Incorrect face verification type!"),
    FACE_VERIFY_LOGIN_ERROR(601, false, "Face login failed!"),

    // system error, unexpected error 555
    SYSTEM_ERROR(555, false, "The system is busy, please try again later!"),
    SYSTEM_OPERATION_ERROR(556, false, "The operation failed, please try again or contact the administrator"),
    SYSTEM_RESPONSE_NO_INFO(557, false, ""),
    SYSTEM_ERROR_GLOBAL(558, false, "Global downgrade: system is busy, please try again later!"),
    SYSTEM_ERROR_FEIGN(559, false, "Client Feign downgrade: system is busy, please try again later!"),
    SYSTEM_ERROR_ZUUL(560, false, "The request system is too busy, please try again later!");


    // respond to business status
    private Integer status;
    // whether the call was successful
    private Boolean success;
    // response message, which can be a success or failure message
    private String msg;

    ResponseStatusEnum(Integer status, Boolean success, String msg) {
        this.status = status;
        this.success = success;
        this.msg = msg;
    }

    public Integer status() {
        return status;
    }
    public Boolean success() {
        return success;
    }
    public String msg() {
        return msg;
    }
}