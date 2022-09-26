package com.g7.controller;


import com.g7.common.exception.GraceException;
import com.g7.common.result.GraceJSONResult;
import com.g7.common.result.ResponseStatusEnum;
import com.g7.entity.Account;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@RestController
public class BaseController {

    public static String fileUploadPath = System.getProperty("user.dir") + "/src/main/upload/";

    public Account getAccountFromSession(HttpServletRequest request){
        HttpSession session = request.getSession();

        return (Account)session.getAttribute("loginAccount");
    }

    public String uploadImage(MultipartFile multipartFile){

        if (multipartFile == null) {
            GraceException.display(ResponseStatusEnum.FAILED);
        }

        UUID uuid = UUID.randomUUID();

        String originalFileName = multipartFile.getOriginalFilename();

        String fileSuffix = originalFileName.substring(originalFileName.lastIndexOf('.'));

        File file = new File( fileUploadPath + uuid + fileSuffix);
        try {
            multipartFile.transferTo(file);
        } catch (IOException e) {
            GraceException.display(ResponseStatusEnum.IMG_UPLOAD_FAIL);
        }

        return "/images/" + uuid + fileSuffix;
    }

    public List<String> uploadImage(MultipartFile[] multipartFiles){

        if (multipartFiles == null || multipartFiles.length <= 0) {
            GraceException.display(ResponseStatusEnum.FAILED);
        }

        List<String> imgsPath = new ArrayList<>();

        for (MultipartFile multipartFile:multipartFiles) {

            UUID uuid = UUID.randomUUID();
            String originalFileName = multipartFile.getOriginalFilename();

            String fileSuffix = originalFileName.substring(originalFileName.lastIndexOf('.'));

            File file = new File( fileUploadPath + uuid + fileSuffix);
            try {
                multipartFile.transferTo(file);
            } catch (IOException e) {
                GraceException.display(ResponseStatusEnum.IMG_UPLOAD_FAIL);
            }
            imgsPath.add("/images/" + uuid + fileSuffix);
        }
        return imgsPath;
    }
}
