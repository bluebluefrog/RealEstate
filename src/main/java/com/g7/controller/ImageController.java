package com.g7.controller;

import com.g7.common.exception.GraceException;
import com.g7.common.result.GraceJSONResult;
import com.g7.common.result.ResponseStatusEnum;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/image")
public class ImageController {

    public static String fileUploadPath = System.getProperty("user.dir") + "/src/main/upload/";

    @PostMapping("/uploadImg")
    public GraceJSONResult uploadImage(MultipartFile multipartFile){

        UUID uuid = UUID.randomUUID();

        String originalFileName = multipartFile.getOriginalFilename();

        String fileSuffix = originalFileName.substring(originalFileName.lastIndexOf('.'));

        File file = new File( fileUploadPath + uuid + fileSuffix);
        try {
            multipartFile.transferTo(file);
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }

        return GraceJSONResult.ok(uuid + fileSuffix);
    }

    @PostMapping("/uploadImgs")
    public GraceJSONResult uploadImage(MultipartFile[] multipartFiles){

        List<String> imgsPath = new ArrayList<>();

        for (MultipartFile multipartFile:multipartFiles) {

            UUID uuid = UUID.randomUUID();
            String originalFileName = multipartFile.getOriginalFilename();

            String fileSuffix = originalFileName.substring(originalFileName.lastIndexOf('.'));

            File file = new File( fileUploadPath + uuid + fileSuffix);
            try {
                multipartFile.transferTo(file);
            } catch (IOException e) {
                System.out.println(e.getMessage());
            }
            imgsPath.add(uuid + fileSuffix);
        }
        return GraceJSONResult.ok(imgsPath);
    }
}
