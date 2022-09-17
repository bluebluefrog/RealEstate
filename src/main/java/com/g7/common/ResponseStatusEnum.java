package com.g7.common;

public enum ResponseStatusEnum {

    SUCCESS(200, true, "Operation succeeded!"),
    FAILED(500, false, "Operation failed!"),

    // 50x
    UN_LOGIN(501,false,"Please log in before continuing!"),
    TICKET_INVALID(502,false,"The session is invalid, please log in again!"),
    NO_AUTH(503,false,"You have insufficient permissions to continue the operation!"),
    MOBILE_ERROR(504,false,"Failed to send SMS, please try again later!"),
    SMS_NEED_WAIT_ERROR(505,false,"SMS is sent too fast~Please try again later!"),
    SMS_CODE_ERROR(506,false,"Verification code expired or does not match, please try again later!"),
    USER_FROZEN(507,false,"The user has been frozen, please contact the administrator!"),
    USER_UPDATE_ERROR(508,false,"Failed to update user information, please contact the administrator!"),
    USER_INACTIVE_ERROR(509,false,"Please go to [Account Settings] to modify the information and activate it before proceeding with subsequent operations!"),
    USER_INFO_UPDATED_ERROR(5091,false,"User information modification failed!"),
    USER_INFO_UPDATED_NICKNAME_EXIST_ERROR(5092,false,"nickname already exists!"),
    USER_INFO_UPDATED_IMOOCNUM_EXIST_ERROR(5092,false,"MOOC number already exists!"),
    USER_INFO_CANT_UPDATED_IMOOCNUM_ERROR(5092,false,"MOOC number cannot be modified!"),
    FILE_UPLOAD_NULL_ERROR(510,false,"The file cannot be empty, please select a file and upload it!"),
    FILE_UPLOAD_FAILD(511,false,"File upload failed!"),
    FILE_FORMATTER_FAILD(512,false,"The file image format is not supported!"),
    FILE_MAX_SIZE_500KB_ERROR(5131,false,"Only supports uploading images under 500kb size!"),
    FILE_MAX_SIZE_2MB_ERROR(5132,false,"Only supports uploading pictures under 2MB!"),
    FILE_NOT_EXIST_ERROR(514,false,"The file you are viewing does not exist!"),
    USER_STATUS_ERROR(515,false,"Error in user status parameter!"),
    USER_NOT_EXIST_ERROR(516,false,"User does not exist!"),
    USERNAME_EXIST(517,false,"username already exists!"),
    LOGIN_FAIL(518,false,"Wrong password!"),

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
    ADMIN_USERNAME_EXIST_ERROR(562, false, "Administrator login already exists!"),
    ADMIN_NAME_NULL_ERROR(563, false, "Administrator cannot be empty!"),
    ADMIN_PASSWORD_ERROR(564, false, "The password cannot be empty and the two entries are inconsistent!"),
    ADMIN_CREATE_ERROR(565, false, "Failed to add administrator!"),
    ADMIN_PASSWORD_NULL_ERROR(566, false, "Password cannot be empty!"),
    ADMIN_NOT_EXIT_ERROR(567, false, "The administrator does not exist or the password is wrong!"),
    ADMIN_FACE_NULL_ERROR(568, false, "Face information cannot be empty!"),
    ADMIN_FACE_LOGIN_ERROR(569, false, "Face recognition failed, please try again!"),
    CATEGORY_EXIST_ERROR(570, false, "The article category already exists, please change the category name!"),

    // Media Center related error 58x
    ARTICLE_COVER_NOT_EXIST_ERROR(580, false, "The article cover does not exist, please choose one!"),
    ARTICLE_CATEGORY_NOT_EXIST_ERROR(581, false, "Please select the correct article field!"),
    ARTICLE_CREATE_ERROR(582, false, "Failed to create article, please try again or contact administrator!"),
    ARTICLE_QUERY_PARAMS_ERROR(583, false, "The article list query parameter error!"),
    ARTICLE_DELETE_ERROR(584, false, "Failed to delete article!"),
    ARTICLE_WITHDRAW_ERROR(585, false, "Article retraction failed!"),
    ARTICLE_REVIEW_ERROR(585, false, "Error in article review!"),
    ARTICLE_ALREADY_READ_ERROR(586, false, "The article is read repeatedly!"),

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
