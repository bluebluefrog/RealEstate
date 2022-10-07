package com.g7.entity.bo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UpdatePersonInfoBO {

    private String firstName;
    private String lastName;
    private Integer phone;
    private Integer sex;
    private Date birthday;
    private String email;
    private Integer age;
    private String otherInfo;
    private String address;

}
