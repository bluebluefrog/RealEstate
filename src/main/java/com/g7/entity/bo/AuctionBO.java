package com.g7.entity.bo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class AuctionBO {

    @NotNull(message = "need auction start Date")
    private Date auctionDate;

    @NotNull(message = "need auction Duration")
    private Date auctionDuration;

    @NotBlank(message = "need auction Title")
    private String auctionTitle;

    @NotBlank(message = "need auction Detail")
    private String auctionDetail;

    @NotBlank(message = "need auction Announcement")
    private String auctionAnnouncement;

    @NotNull(message = "startingBid cant be null")
    private Long startingBid;

    @NotNull(message = "need realEstateId")
    private String realEstateId;

    @NotNull(message = "need securityDeposit")
    private Long securityDeposit;

    @NotNull(message = "need appraisedValue")
    private Long appraisedValue;

    @NotNull(message = "need markup")
    private Long markup;

}
