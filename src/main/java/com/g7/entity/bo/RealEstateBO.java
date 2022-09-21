package com.g7.entity.bo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class RealEstateBO {

    @NotNull(message = "need realEstate Type")
    private Integer realEstateType;

    @NotBlank(message = "need landArea")
    private String landArea;

    @NotBlank(message = "need realEstate Area")
    private String realEstateArea;

    @NotNull(message = "need bedrooms")
    private Integer bedrooms;

    @NotNull(message = "need bathrooms")
    private Integer bathrooms;

    @NotNull(message = "need garage")
    private Integer garage;

    @NotBlank(message = "need street Address")
    private String streetAddress;

    @NotBlank(message = "need suburb")
    private String suburb;

}
