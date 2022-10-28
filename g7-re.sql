/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : g7-re

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 28/10/2022 20:52:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Is_seller` int NOT NULL,
  `person_info_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of account
-- ----------------------------
BEGIN;
INSERT INTO `account` VALUES ('2209200C051MRMNC', 'wjb6791', '4QrcOUm6Wau+VuBX8g+IPg==', '/images/6f13ac5c-9791-4c8d-8c33-6c8c77269de6.webp', 0, '2209200C04XRHHM8', '2022-09-26 22:32:03', '2022-09-26 22:32:03');
INSERT INTO `account` VALUES ('221006D5BMC92NC0', 'thawzin', '4QrcOUm6Wau+VuBX8g+IPg==', 'http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg', 0, '221006D5BMBYW2K4', '2022-10-06 18:29:10', '2022-10-06 18:29:10');
INSERT INTO `account` VALUES ('221007GWWM0H2BXP', 'giaphat', 'QjIqOS1dRSfD/JlJkc4uAg==', 'http://127.0.0.1:8080/images/681fc206-7796-4aca-95aa-c0b0a16b3924.webp', 0, '221007GWWM02C84H', '2022-10-07 22:15:45', '2022-10-07 22:15:45');
INSERT INTO `account` VALUES ('221010AFZFNT7NTC', 'hello123', '01+SZM4Aw9fuViMCVOTh/Q==', 'http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg', 0, '221010AFZFN9KH28', '2022-10-10 14:45:41', '2022-10-10 14:45:41');
INSERT INTO `account` VALUES ('2210259YWNMG0DAW', 'giaphatHuynh', '4QrcOUm6Wau+VuBX8g+IPg==', 'http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg', 0, '2210259YWNKC8MY8', '2022-10-25 13:57:21', '2022-10-25 13:57:21');
INSERT INTO `account` VALUES ('221025ACF9Z7KBF8', 'rnrichard', '4QrcOUm6Wau+VuBX8g+IPg==', 'http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg', 0, '221025ACF9Y4XK1P', '2022-10-25 14:38:16', '2022-10-25 14:38:16');
INSERT INTO `account` VALUES ('221025ACFZ805RYW', 'shyamal', 'yW/UYwq4SeLtJueAXLMtJw==', 'http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg', 0, '221025ACFZ7KZ540', '2022-10-25 14:38:20', '2022-10-25 14:38:20');
INSERT INTO `account` VALUES ('221025AXMF24KHBC', 'AllenAllen', 'z7VyzG//BqQaFvF2fVC8dg==', 'http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg', 0, '221025AXMF1XSFFW', '2022-10-25 15:17:45', '2022-10-25 15:17:45');
INSERT INTO `account` VALUES ('221025AYHMPFS140', 'giaphat123', '/OqSD3QStdp74M9CuMk3WQ==', 'http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg', 0, '221025AYHMP7YZ7C', '2022-10-25 15:20:33', '2022-10-25 15:20:33');
INSERT INTO `account` VALUES ('221025B06X44PTTC', 'giaphat1234', '/OqSD3QStdp74M9CuMk3WQ==', 'http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg', 0, '221025B06X3XXRYW', '2022-10-25 15:25:31', '2022-10-25 15:25:31');
COMMIT;

-- ----------------------------
-- Table structure for agent
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `agent_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` int NOT NULL,
  `company` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of agent
-- ----------------------------
BEGIN;
INSERT INTO `agent` VALUES ('2209200D9H1S3XC', 'zhang', 123, '123', '2022-09-20 20:42:24', '2022-09-20 20:42:24');
INSERT INTO `agent` VALUES ('2209200D9H1S3XL', 'li', 123, '123', '2022-09-20 20:42:19', '2022-09-20 20:42:19');
COMMIT;

-- ----------------------------
-- Table structure for auction
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auction_date` date NOT NULL,
  `auction_duration` datetime NOT NULL,
  `starting_bid` decimal(10,0) NOT NULL,
  `highest_auction_record_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auction_title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auction_detail` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auction_announcement` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_estate_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `auction_sponsor_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `security_deposit` decimal(10,0) NOT NULL,
  `appraised_value` decimal(10,0) NOT NULL,
  `markup` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auction
-- ----------------------------
BEGIN;
INSERT INTO `auction` VALUES ('22100807ZT0Y4A3C', '2022-10-08', '2022-11-20 00:22:40', 10000, '0', 'Auction for great property', 'The Nova offers an impressive street presence. This double storey home gives you an ingenious solution to your family needs. It includes three bedrooms with built in robes and a master with walk in robe, two bathrooms, a double garage and generous alfresco area. This home is designed to be more affordable and there are no compromises, only clever design.\n\nPackage Inclusion\n- 2590mm High Ceilings to Ground Floor\n- Technika Bellissmo 600mm Stainless Steel Oven\n- Technika Bellissmo 600mm Stainless Steel Cooktop\n- Technika Bellissmo 900mm Stainless Steel Oven Canopy\n- Polished Edge Mirrors to full width of Vanity\n- Fixed Price Site Costs\n- Gas Ducted Heating\n- Interior Design Influenced Colour Schemes\n- Developer Covenants\n- 5 Weeks to Contract\n*Porter Davis Terms & Conditions: Please see website for promotion specific terms and conditions relating to our 3 for Free offer and 5k to slab pour https://porterdavis.com.au/special-offers/ Package price is based on standard home, standard façade unless specified, builder\'s preferred siting and current promotion. Refer to sales consultant for actual working drawings for available façade options and inclusions. Pricing may vary due to actual land availability. Porter Davis reserves the right to change prices without notice. Fixed price packages are subject to developer\'s design review panel for final approval. $2,000 non-refundable deposit only. First Home Buyer price less First Home Owner Grant subject to SRO eligibility criteria. If required via a town planning permit, client must provide landscaping and fencing etc at their own cost. Photos for illustration purposes only and include examples of upgrades not included in the package price. Refer to working drawings. Guaranteed site start subject to land title and finance availability. Geographic build zones apply. BAL rating up to 12.5 included, based on the standard home and specification. Should client variations after the requirements to achieve compliance, Porter Davis will debit or credit the client via a post contract variation. Please see website for details.', 'Auction for great property', '2209200C4392AMCL', '2022-10-25 13:09:32', '2022-10-25 13:09:32', '2209200C051MRMNC', 10000, 100000, 100);
INSERT INTO `auction` VALUES ('221008089TPB1A5P', '2022-10-06', '2022-11-20 00:22:40', 621900, '0', 'Lot 3846 Makalu Circuit (Meridian Central Estate), Clyde North, Vic 3978', 'With four bedrooms, a study, games room, theatre room, and designer kitchen set over two storeys, you\'d be forgiven for thinking you were staying in a seven star resort in the Rochedale. When you step into the main bedroom you know you\'re in for a treat and what lies beyond is what can only be described as an epic ensuite matched with the luxury of huge walk in robe. If you want to live in a home that doesn\'t compromise, the Rochedale delivers the reality.\n\nPackage Inclusion\n- 2590mm High Ceilings to Ground Floor / 2440mm High Ceilings to First Floor\n- 900mm Stainless Steel Technika Upright Over & Cooktop\n- 900mm Stainless Steel Technika Rangehood\n- 600mm Stainless Steel Technika Dishwasher\n- Flooring throughout Home\n- Boutique Aluminum Stacker Door to Alfresco / Dining or Family Rooms\n- Colorbond Panel Lift Garage Door\n- Gas Ducted Heating\n- 20mm Stone to Kitchen Benchtops and 40mm Edge to Island Category 1\n- Fixed Price Site Costs\n*Terms & Conditions: Package price is based on standard home, standard façade unless specified, builder\'s preferred siting and current promotion. Refer to sales consultant for actual working drawings for available façade options and inclusions. Pricing may vary due to actual land availability. Porter Davis reserves the right to change prices without notice. Fixed price packages are subject to developer\'s design review panel for final approval. First Home Buyer price less First Home Owner Grant subject to SRO eligibility criteria. If required via a town planning permit, client must provide landscaping and fencing etc at their own cost. Photos for illustration purposes only and include examples of upgrades not included in the package price. Refer to working drawings. Guaranteed site start subject to land title and finance availability. Geographic build zones apply. BAL rating up to 12.5 included, based on the standard home and specification. Should client variations after the requirements to achieve compliance, Porter Davis will debit or credit the client via a post contract variation. Package price correct at 7-10-2022', 'start biding at 621,900', '2209200C4392AMCQ', '2022-10-25 13:05:16', '2022-10-25 13:05:16', '2209200C051MRMNC', 10000, 700000, 100);
INSERT INTO `auction` VALUES ('22100808SM3N111P', '2022-10-08', '2022-11-20 00:22:40', 730900, '0', 'Porter Davis Homes - Victoria', 'Orientation flexibility is the key driver in the Midland with living zones to three sides allowing a generous amount of light into the home The multiple living areas, generous bedrooms and floorplan with a variety of design options, ensure that the Midland really is a home with universal appeal. The master bedroom, located at the front of the house, leads into the separate living area and then into two minor bedrooms and central bathroom, all located in the central section of the house. The rear of the home opens out to the family and dining areas complete with the popular yet unique, rear kitchen layout with garden views, something you would normally only expect to see in a large double storey home. The Midland will appeal to those looking for a light-filled and functional family living.\n\nPackage Inclusion\n- 2590mm High Ceilings to Ground Floor\n- 900mm Stainless Steel Technika Upright Over & Cooktop\n- 900mm Stainless Steel Technika Rangehood\n- 600mm Stainless Steel Technika Dishwasher\n- Flooring throughout Home\n- Boutique Aluminum Stacker Door to Alfresco / Dining or Family Rooms\n- Colorbond Panel Lift Garage Door\n- Gas Ducted Heating\n- 20mm Stone to Kitchen Benchtops and 40mm Edge to Island Category 1\n- Fixed Price Site Costs\n*Terms & Conditions: Package price is based on standard home, standard façade unless specified, builder\'s preferred siting and current promotion. Refer to sales consultant for actual working drawings for available façade options and inclusions. Pricing may vary due to actual land availability. Porter Davis reserves the right to change prices without notice. Fixed price packages are subject to developer\'s design review panel for final approval. First Home Buyer price less First Home Owner Grant subject to SRO eligibility criteria. If required via a town planning permit, client must provide landscaping and fencing etc at their own cost. Photos for illustration purposes only and include examples of upgrades not included in the package price. Refer to working drawings. Guaranteed site start subject to land title and finance availability. Geographic build zones apply. BAL rating up to 12.5 included, based on the standard home and specification. Should client variations after the requirements to achieve compliance, Porter Davis will debit or credit the client via a post contract variation. Package price correct at 7-10-2022', 'Porter Davis Homes - Victoria', '2209200C4392AMCU', '2022-10-25 13:05:24', '2022-10-25 13:05:24', '2209200C051MRMNC', 10000, 800000, 1000);
INSERT INTO `auction` VALUES ('221008093F2C38PH', '2022-10-08', '2022-11-20 00:22:40', 606900, '0', 'Explore 27 home designs from Porter Davis - PDX', 'The Jura gives you a spacious open plan kitchen, dining and family area that is ideal for first home buyers. It provides stylish living with all the essential features such as three or four bedrooms (ensuite to master bedroom), an additional main bathroom, laundry and lock up garage. The Jura has everything you would want in your first home.\n\nPackage Inclusion\n- 2590mm High Ceilings to Ground Floor\n- Technika Bellissmo 600mm Stainless Steel Oven\n- Technika Bellissmo 600mm Stainless Steel Cooktop\n- Technika Bellissmo 900mm Stainless Steel Oven Canopy\n- Polished Edge Mirrors to full width of Vanity\n- Fixed Price Site Costs\n- Gas Ducted Heating\n- Interior Design Influenced Colour Schemes\n- Developer Covenants\n- 5 Weeks to Contract\n*Porter Davis Terms & Conditions: Please see website for promotion specific terms and conditions relating to our 3 for Free offer and 5k to slab pour https://porterdavis.com.au/special-offers/ Package price is based on standard home, standard façade unless specified, builder\'s preferred siting and current promotion. Refer to sales consultant for actual working drawings for available façade options and inclusions. Pricing may vary due to actual land availability. Porter Davis reserves the right to change prices without notice. Fixed price packages are subject to developer\'s design review panel for final approval. $2,000 non-refundable deposit only. First Home Buyer price less First Home Owner Grant subject to SRO eligibility criteria. If required via a town planning permit, client must provide landscaping and fencing etc at their own cost. Photos for illustration purposes only and include examples of upgrades not included in the package price. Refer to working drawings. Guaranteed site start subject to land title and finance availability. Geographic build zones apply. BAL rating up to 12.5 included, based on the standard home and specification. Should client variations after the requirements to achieve compliance, Porter Davis will debit or credit the client via a post contract variation. Please see website for details.', 'Explore 27 home designs from Porter Davis - PDX', '2209200C4392AMCW', '2022-10-25 13:05:26', '2022-10-25 13:05:26', '2209200C051MRMNC', 10000, 1000000, 10000);
INSERT INTO `auction` VALUES ('22100809D1N6GY14', '2022-10-08', '2022-11-20 00:22:40', 1231900, '0', 'Explore 30 home designs from Porter Davis Homes - Victoria', 'Things don\'t get much better than the Waldorf Grange. Combining the aesthetic aspects of the traditional Waldorf design with added extras to enhance family living, the Waldorf Grange promises a wealth of opportunity for all your home needs. On the ground floor, the entry hall is flanked by a cloak and powder room to the left, study and lounge to the right. In the central zone is the kitchen, gallery and dining area, with attached galley, store and laundry rooms. Behind this is the home theatre, additional family area and alfresco. Up on the first floor, the master bedroom is situated at the front of the house, with his and hers WIRs, a master ensuite and retreat area for added peace and serenity. Two voids contribute to the sense of space and prestige in this incredible home. The three \'minor\' bedrooms, all with ensuites, are located down the left wing of the house, with the terrace towards the back and rumpus in the centre.\n\nPackage Inclusion\n- 2740mm High Ceilings to Ground Floor / 2590mm High Ceilings to First Floor\n- 900mm Stainless Steel Fisher & Paykel Appliances to Kitchen\n- 600mm Double Dis Draw Dishwasher\n- Stylish 20mm Stone to Kitchen Benchtops and Island up to Category 3\n- Flooring throughout Home\n- Downlights to living areas and bedrooms\n- Colorbond Panel Lift Garage Door\n- Security System With 4 Sensors\n- Gas Ducted Heating\n- Fixed Price Site Costs\n*Terms & Conditions: Package price is based on standard home, standard façade unless specified, builder\'s preferred siting and current promotion. Refer to sales consultant for actual working drawings for available façade options and inclusions. Pricing may vary due to actual land availability. Porter Davis reserves the right to change prices without notice. Fixed price packages are subject to developer\'s design review panel for final approval. First Home Buyer price less First Home Owner Grant subject to SRO eligibility criteria. If required via a town planning permit, client must provide landscaping and fencing etc at their own cost. Photos for illustration purposes only and include examples of upgrades not included in the package price. Refer to working drawings. Guaranteed site start subject to land title and finance availability. Geographic build zones apply. BAL rating up to 12.5 included, based on the standard home and specification. Should client variations after the requirements to achieve compliance, Porter Davis will debit or credit the client via a post contract variation. Package price correct at 21-9-2022', 'Explore 30 home designs from Porter Davis Homes - Victoria', '2209200C4392AMCY', '2022-10-25 13:05:29', '2022-10-25 13:05:29', '2209200C051MRMNC', 10000, 2000000, 1000);
INSERT INTO `auction` VALUES ('2210080A0BSS7MW0', '2022-10-08', '2022-11-20 00:22:40', 579899, '0', 'Waterfront Hamptons Townhomes in Berwick (Titled Land)', 'Got the new home itch? Maybe you\'re looking to make a savvy investment? Porter Davis’ next Greenacre release is a boutique collection of Hampton\'s townhomes at the forefront of innovative design and filled to the brim with absolutely everything you need to move in!\n\nHomes feature:\n+ Land titling soon\n+ Choice between two interior colour schemes\n+ Reconstituted Stone benchtop laminate\ncabinet and cabinet doors.\n+ 600mm stainless steel oven & gas cooktop\n\n\nWelcome to Minta!\n\nOne of the most sought-after estates in Melbourne\'s south-east...\nMinta is home to 22 hectares of a stunning nature reserve, lakes and open green space. Plus, a future employment hub in the adjacent precinct is set to offer over 10,000 new jobs for the area!\n\n\n*T&Cs apply, visit https://porterdavis.com.au/our-homes/townhouses-for-sale/greenacre-townhomes-minta-berwick-porter-davis-homes/', 'Waterfront Hamptons Townhomes in Berwick (Titled Land)', '2209200D9H1S3X2', '2022-10-25 13:05:31', '2022-10-25 13:05:31', '2209200C051MRMNC', 70000, 1000000, 1000);
INSERT INTO `auction` VALUES ('2210080AB1N9B168', '2022-10-08', '2022-11-20 00:22:40', 542541, '221025ADGRDYDXWH', 'Great Auction get it now!', 'If you want a home that offers privacy at every corner, you\'ll love Lagoon designs. Bedrooms are tucked away from the hustle and bustle of the main living areas for quiet retreat. The open plan kitchen, meals and family area is readily accessible from the garage with a laundry close by so you can manage the cooking, washing and entertaining at the same time. For even more space and comfort, there\'s the design option to integrate a second living room.\n\nBluescope Steel House Frame\nColorbond Roof\nSpacious Meals and Family Area\nTiled Splashback to Kitchen\nFlyscreens with Aluminium Mesh\nSectional Garage Door\nBushfire Compliance up to BAL 12.5\n12-Month Price Hold\n50 Year Structural Guarantee\nOver 30 Years Family Owned\n\nEvaporative Cooling\nFibre Provisioning\nLaminate Flooring & Carpet Throughout\nBrick Infill Above Garage Door\nBlockout Roller Blinds\nSite Costs Allowance Included\nTitled Land\n\n*JG King Homes reserves the right to withdraw or alter the prices at any time without notice. Package price is based on standard floorplan and builders preferred siting. Alterations may incur additional charges. Packages are subject to council approval, developer approval and availability. Images are for illustration purposes only, may depict fixtures and finishes either no longer supplied or above standard design specification. Namely decorative lights, window furnishings, external cladding, facades and landscaping such as planter boxes and fencing. Site costs are based on allowances only unless stated otherwise. 50-year structural warranty subject to application and eligibility criteria. For full terms and conditions and to determine the eligibility of your building for the warranty visit www.bluescopesteel.com.au/warranties or call BlueScope on 1800 022 999 or speak to a JG King Representative for more information. COLORBOND®️, TRUECORE®️ and BlueScope are registered trademarks of BlueScope Steel Limited.  Copyright ©️2021.  Reproduction in any form either in whole or part is forbidden. JG King Pty Ltd (T/A JG King Homes) ABN 21 006 627 210 Registered Building Practitioner licence CDBU 49366.  This infor­ma­tion is to be used as a guide only and JG King Homes makes no war­ranties about the accu­ra­cy or com­plete­ness of the infor­ma­tion.  JG King Homes reserves the right to alter or with­draw floor­plans and facades at any time with­out notice.', 'Auction for great property', '2209200D9H1S3X3', '2022-10-25 13:05:33', '2022-10-25 13:05:33', '2209200C051MRMNC', 10000, 1000000, 10000);
INSERT INTO `auction` VALUES ('2210080BCYWATRD4', '2022-10-08', '2022-11-20 00:22:40', 539900, '221009HA35DB706W', '8 Furphy Walk, Kalkallo, Vic 3064', 'In one of Melbourne\'s most sought after new estates with the open spaces of a future reserve at your doorstep, these brand new townhomes are the perfect option for your new home located in Cloverton estate, Kalkallo.\n\nThe Merribank is a 3 bedroom home which offers customers all bedrooms to the first floor with park views from the master suite. Downstairs boasts a open living area to the back with access to the courtyard and double garage. To the front of the home the perfect office or study space overlooks the future reserve which is located at your doorstep.\n\nWhat is included in your home:\n- Rear loaded garage with lane access\n- European Laundry\n- Caesarstone benchtops to kitchen\n- Raked ceiling to the first floor\n- Stainless steel appliances\n- Walk in robe to Master\n- Under stair storage\n- Split system air conditioning\n- Front and rear landscaping\n- Timber look flooring to ground floor and carpet to the first floor\n- Double vanity to your ensuite\n- No Body Corporate\n\nThis home can be yours with only a 5% deposit!\n\nBuy with peace of mind as Henley provides a 12 month maintenance check and 50 year structural warranty.\n\nCall Justin to book your private inspection.\n\nTo see all our completed homes for sale please visit https://henley.com.au/henley-ready\n\nDirections: https://goo.gl/maps/nT7KVDjciPqEjyTs8\n\nAbout Cloverton\n\nLocated just 38km from Melbourne’s CBD, Cloverton is Victoria\'s largest masterplanned community. Set to become a future city for the northern suburbs, residents will have access to schools, retail centres, medical facilities and well connected public transport in the future.\n\nCloverton\'s location is further enhanced by the picturesque surrounds of the Merri Creek and 80 hectares of lush open space.\n\n\nAbout Henley Completed homes\nHenley completed homes either ready to move into now or within 3 – 6 months from when you purchase your new home.\nYou get all the joy of buying an established home, which doesn’t require all the design, fitting and fixture decisions, but being from our new properties portfolio, it’s never been lived in – so everything is brand new – just for you!\n\nWe are backed by the $7 billion, 330-year Sumitomo Forestry Group, providing the resources to confidently and continually invest in innovation, well ahead of the market. It also ensures that no matter what happens, we will finish your home…so you can buy with us with absolute confidence!', '8 Furphy Walk, Kalkallo, Vic 3064', '2209200D9H1S3X4', '2022-10-25 13:05:35', '2022-10-25 13:05:35', '2209200C051MRMNC', 10000, 600000, 10000);
INSERT INTO `auction` VALUES ('2210080BW7NHTM5P', '2022-10-08', '2022-11-20 00:22:40', 719900, '221010AKF11Y8WSW', '221 O\'Hallorans Road, Lara, Vic 3212', 'From the moment you walk into the Siena, you will be impressed. The designer kitchen overlooks the dining and living areas while flowing effortlessly into the light filled alfresco – inspiring regular entertaining.\n\nWhile the master suite, three secondary bedrooms, large central bathroom and two additional living areas are the perfect place for the family to unwind in their own space. You will find endless luxury and sophistication in the Sienna. This house includes:\n• Carpet and Laminate Timber Look Flooring~\n• Tiles to Bathroom, ensuite, powder room and laundry\n• Tiled roof\n• Grand Island Benchtops to Kitchen\n• 20mm Caesarstone benchtops in Kitchen, ensuite and Bathroom\n• 900mm freestanding upright cooker with built in oven\n• Tiled splashback to the Kitchen\n• Estate Guidelines#\n• 50-year structural guarantee\n• 12-month maintenance check\n• Front landscaping, driveway, and fencing\n• Remote control garage\n\nSituated within a unique and exciting location in the Coridale Estate, you\'ll have everything you need to be healthy , happy and to live the good life. Only 4 minute drive to the Lara town centre, 20 minutes to the hustle and bustle of Geelong and 50 minutes to metro Melbourne.\n\nHenley Homes is the HIA Victorian and Australian Most Professional Major Builder of 2020. Having built over 50,000 homes since 1989, customers choose and trust Henley to build their new homes for their leading designs, innovation and transparency.\nHenley is renowned for their level of inclusions that are included as standard in their homes and the choice that customers get at no extra cost to personalise their homes to suit their style and budget. This extends to Henley’s house and land packages which can be tailored to suit any house design, budget, lot size and orientation\n\nWe are backed by the $7 billion, 330-year Sumitomo Forestry Group, providing the resources to confidently and continually invest in innovation, well ahead of the market. It also ensures that no matter what happens, we will finish your home…so you can buy with us with absolute confidence!\n\n**NOTE**\nColours and finishes may vary.', '221 O\'Hallorans Road, Lara, Vic 3212', '2209200C4392AMCI', '2022-10-25 13:05:38', '2022-10-25 13:05:38', '2209200C051MRMNC', 10000, 800000, 1000);
INSERT INTO `auction` VALUES ('2210080C35XT1CSW', '2022-10-08', '2022-11-20 00:22:40', 624911, '0', 'Auction for great property', 'Get in from $624,910! Please speak to a New Homes Consultant for more information.\n\nHARVEY 23:\nA delightful home for the whole family to enjoy. The Harvey is the perfect blend of stylish design and thoughtful use of space.\n\nPositioned at the front of the home, the master bedroom features a large walk-in robe and ensuite with a double shower and provides optimal privacy for a secluded retreat. The three minor bedrooms are located toward the rear of the home, each offering a generous size complete with built-in robes and a shared bathroom.\n\nThe kitchen and expansive open plan living area make entertaining easy, yet functional. Enjoy the benefits of three kitchen benchtops and hide all that unwanted clutter with the large walk-in pantry, giving you plentiful storage and keeping your fridge out of sight. The main island bench also provides an area for casual and informal entertaining with the kitchen sink located along the adjacent benchtop.\n\nThe Harvey also includes a dedicated second living area with flexibility to cater for a home theatre or study, whilst the outdoor living provides an abundance of natural light, bringing you versatility for a smooth and functional flowing home from start to finish.\n\nYour new home will come standard with quality inclusions, industry leading guarantees/warranties and brand names that you can trust:\nFixed site costs\nExposed aggregate driveway\nElmer facade included\nQuality floor coverings throughout\nTiled kitchen splashback\nWestinghouse stainless steel appliances\nChoice of matt black or chrome tapware\nBrick infills over windows\n25 year structural guarantee\n12 month service warranty\n6 Star energy rating\nFibre Optic Connection\nRecycled Water Connection\n\nAbout Homebuyers Centre -\n\nHomebuyers Centre leads the way in building modern affordable homes and have built a reputation as Australia\'s leading builder for first home buyers. Since 1991, we have helped over 33,000 Australians into the exciting world of homeownership by offering a wide range of affordable and stylish designs with home and land packages across Victoria. Plus, we have partnered with Alisa and Lysandra, winners of The Block 2013 to curate six unique colour schemes - all designed to stay on-trend with timeless materials that will appeal to everyone.\n\n\nThe Homebuyers Centre Team will be there to guide you through every step of the process, from the moment you step into a display home to the day you step through your new front door and beyond.\n\nProud recipients of the 2022 ProductReview.com.au Award in the Home Builders Melbourne & VIC category. This award is a testament to the commitment our team has towards delivering a phenomenal customer experience.\n\n\nwww.homebuyers.com.au\n\nFor further details about this home and land package please click \"email agent\" link above.\n\n*Price based on home type and floor plan shown and on builder\'s preferred siting. Price includes deduction of First Home Owners Grant. Floor plan depicts a traditional facade, modern facade shown and included in price. All images used are an artist impression for illustrative purposes only. They may depict fixtures, finishes, features, furnishings and landscaping not supplied by Homebuyers Centre including, but not limited to, planter boxes, retaining walls, path, fencing, landscaping, coach lights, overhead cupboards, furnishings, water features, flooring, pergolas, outdoor kitchens, barbeques and design elements eg front door with side light. \"Fixed\" pricing means that, subject to the terms of this disclaimer and any owner requested changes, the price advertised will be the price contained in the building contract entered into and this price will not change other than in accordance with the building contract. The price is based on developer supplied engineering plans and plans of subdivision and final pricing may vary if actual site conditions differ to those shown in these developer supplied documents block and building dimensions may vary from the illustration and the details shown. For more information on the pricing and specifications for full extent of inclusions and features of this home please contact a New Homes Consultant. ABN Group Victoria has permission of the owner of the land to advertise the land as part of the price specified. The price does not include transfer duty, settlement costs, community infrastructure levies imposed or any other fees or disbursements associated with the settlement of the land (Jan 2022).', 'Auction for great property', '2209200C4392AMCR', '2022-10-25 13:05:39', '2022-10-25 13:05:39', '2209200C051MRMNC', 10000, 1200000, 10000);
INSERT INTO `auction` VALUES ('221010A1R9KF31GC', '2022-10-10', '2022-11-20 00:22:40', 99999, '0', 'Auction for great property 467 O\'brien', 'Townhouse at berwick\n', 'Waterfront Hamptons Townhomes in Berwick (Titled Land) Buy with 10% deposit & nothing more until completion*', '2209201C4392AMCI', '2022-10-25 13:05:42', '2022-10-25 13:05:42', '221007GWWM0H2BXP', 9, 9, 9);
INSERT INTO `auction` VALUES ('221010A39X1A6T9P', '2022-10-11', '2022-11-20 00:22:40', 99999, '0', 'Auction for great property 467 O\'brien', 'House at Kings way\n', 'Auction for great property', '2209202C4392AMCL', '2022-10-25 13:05:44', '2022-10-25 13:05:44', '221007GWWM0H2BXP', 99999, 99999, 99999);
INSERT INTO `auction` VALUES ('221010A3M7XNNS3C', '2022-10-11', '2022-11-20 00:22:40', 5555555, '0', 'Auction for great property 467 O\'brien', 'House at A beckett\n', 'Auction for great property', '2209203C4392AMCQ', '2022-10-25 13:05:46', '2022-10-25 13:05:46', '221007GWWM0H2BXP', 77777, 77777, 88888);
INSERT INTO `auction` VALUES ('221010A3W272TC94', '2022-10-05', '2022-11-20 00:22:40', 87787878, '0', 'Auction for great property 467 O\'brien', 'Nice house', '3  2  2   350 m² House', '2209204C4392AMCR', '2022-10-25 13:05:48', '2022-10-25 13:05:48', '221007GWWM0H2BXP', 989898, 989898, 989898);
INSERT INTO `auction` VALUES ('221010A4DA13BH6W', '2022-10-04', '2022-11-20 00:22:40', 7676767, '0', 'Great Auction get it now!', 'Good price get now', '8 Furphy Walk, Kalkallo, Vic 3064', '2209205C4392AMCU', '2022-10-25 13:05:49', '2022-10-25 13:05:49', '221007GWWM0H2BXP', 656565, 998989, 434343);
INSERT INTO `auction` VALUES ('221010A4RXP312A8', '2022-10-12', '2022-11-20 00:22:40', 767676, '0', 'Good price for apartment', 'Good price house at Station Street', 'Auction for great property', '2209206C4392AMCW', '2022-10-25 13:05:52', '2022-10-25 13:05:52', '221007GWWM0H2BXP', 87878, 656565, 87);
INSERT INTO `auction` VALUES ('221010A5328ZHDAW', '2022-10-12', '2022-11-20 00:22:40', 65656, '0', 'House at Hoddle Street', 'Good house at WaterFront', 'Waterfront Hamptons Townhomes in Berwick (Titled Land) Buy with 10% deposit & nothing more until completion*', '2209207C4392AMCY', '2022-10-25 13:05:54', '2022-10-25 13:05:54', '221007GWWM0H2BXP', 6565, 4343, 3434);
INSERT INTO `auction` VALUES ('221010A57ZABF98H', '2022-10-11', '2022-11-20 00:22:40', 76766, '221010ABT2CXFCH0', 'Great Auction get it now!', 'Good house at Nott Street\n', 'Auction for great property', '2209209D9H1S3X3', '2022-10-25 13:05:56', '2022-10-25 13:05:56', '221007GWWM0H2BXP', 7676, 76767, 212);
INSERT INTO `auction` VALUES ('2210259C32D96TMW', '2022-10-01', '2022-11-30 13:12:26', 1000, '0', 'Auction for great property 467 O\'brien', 'nice', 'Auction for great property', '2209200C43921111', '2022-10-25 13:12:59', '2022-10-25 13:12:59', '221006D5BMC92NC0', 100, 100000, 20);
INSERT INTO `auction` VALUES ('2210259C8NS9TWBC', '2022-10-01', '2022-11-30 13:13:03', 100000, '0', 'Great Auction get it now!', 'nice', '3  2  2   350 m² House', '2209200C43921112', '2022-10-25 13:13:36', '2022-10-25 13:13:36', '221006D5BMC92NC0', 1000, 100000, 100);
INSERT INTO `auction` VALUES ('2210259GRCRG01KP', '2022-10-01', '2022-11-30 13:18:59', 10000, '0', 'Auction for great property 467 O\'brien', '123', 'Auction for great property', '2209200C43921113', '2022-10-25 13:23:58', '2022-10-25 13:23:58', '221006D5BMC92NC0', 10000, 10000, 100);
INSERT INTO `auction` VALUES ('2210259GXNKDP6FW', '2022-10-01', '2022-11-30 13:24:07', 110000, '0', 'Auction for great property', 'nice', 'Waterfront Hamptons Townhomes in Berwick (Titled Land) Buy with 10% deposit & nothing more until completion*', '2209200C43921116', '2022-10-25 13:24:25', '2022-10-25 13:24:25', '221006D5BMC92NC0', 10000, 100, 100);
INSERT INTO `auction` VALUES ('2210259H4590CG9P', '2022-10-01', '2022-11-30 13:24:28', 10000, '221025AY55D41DS8', 'Auction for great property 467 O\'brien', 'nice', 'Auction for great property', '2209200C43921114', '2022-10-25 13:25:07', '2022-10-25 13:25:07', '221006D5BMC92NC0', 10000, 10000, 100);
INSERT INTO `auction` VALUES ('2210259ZF9PPRBF8', '2022-10-01', '2022-11-30 13:57:02', 500000, '221025AY2TBB6G54', '4 bedrooms townhouse with 2 garage at Catwell', '4 bedrooms townhouse with 2 garages at Catwell', 'Start from 500000', '2209200C43921115', '2022-10-25 13:59:14', '2022-10-25 13:59:14', '221006D5BMC92NC0', 200000, 4000000, 1);
INSERT INTO `auction` VALUES ('2210259ZYGYDK86W', '2022-10-01', '2022-11-30 13:59:50', 800000, '0', '2 Bedrooms apartment with 2 garages at Watso', '2 Bedrooms apartment with 2 garages at Watso', 'start from 800000', '2209200C43921117', '2022-10-25 14:00:33', '2022-10-25 14:00:33', '221006D5BMC92NC0', 6, 9, 1);
INSERT INTO `auction` VALUES ('221025A0BM2S651P', '2022-10-01', '2022-11-30 14:01:43', 400000, '0', '1 Bedroom apartment with 1 garage at Bruce', '1 Bedroom apartment with 1 garage at Bruce', 'Start from 400000', '2209200C43921118', '2022-10-25 14:01:57', '2022-10-25 14:01:57', '221006D5BMC92NC0', 5, 3, 1);
INSERT INTO `auction` VALUES ('221025A0N40BRWX4', '2022-10-01', '2022-10-29 14:02:37', 1, '221025AFMN2T437C', '1', '1', '1', '221025A08WH5TCM8', '2022-10-25 14:02:45', '2022-10-25 14:02:45', '2209200C051MRMNC', 1, 1, 1);
INSERT INTO `auction` VALUES ('221025A0PACM6NC0', '2022-10-01', '2022-11-30 14:02:40', 900000, '0', '3 bedrooms house with 2 garages at Queanbeyany', '3 bedrooms house with 2 garages at Queanbeyany', 'Start from 900000', '2209200C43921119', '2022-10-25 14:02:53', '2022-10-25 14:02:53', '221006D5BMC92NC0', 2, 3, 2);
INSERT INTO `auction` VALUES ('221025A1H4A78Z2W', '2022-10-01', '2022-11-30 14:04:49', 950000, '0', '5 Bedrooms house with 2 garages at O Connor', '5 Bedrooms house with 2 garages at O Connor', 'Start from 950000', '2209200C43921120', '2022-10-25 14:05:26', '2022-10-25 14:05:26', '221006D5BMC92NC0', 5, 3, 2);
INSERT INTO `auction` VALUES ('221025A36R3S6140', '2022-10-25', '2023-10-31 14:07:31', 500000, '0', 'Apartment on Lonsdale Street', 'Nice lovely apartment on Lonsdale Street', 'very nice apartment', '2209208D9H1S3X2', '2022-10-25 14:10:26', '2022-10-25 14:10:26', '221007GWWM0H2BXP', 9000, 9000, 9000);
COMMIT;

-- ----------------------------
-- Table structure for auction_record
-- ----------------------------
DROP TABLE IF EXISTS `auction_record`;
CREATE TABLE `auction_record` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL COMMENT '1lead 2out',
  `account_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auction_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bid_price` decimal(10,0) NOT NULL,
  `bid_time` datetime NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auction_record
-- ----------------------------
BEGIN;
INSERT INTO `auction_record` VALUES ('221009HA35DB706W', 1, '2209200C051MRMNC', '2210080BCYWATRD4', 1111111, '2022-10-09 22:55:29', '2022-10-09 22:55:29', '2022-10-09 22:55:29');
INSERT INTO `auction_record` VALUES ('221010ABT2CXFCH0', 1, '2209200C051MRMNC', '221010A57ZABF98H', 76766, '2022-10-10 14:36:12', '2022-10-10 14:36:12', '2022-10-10 14:36:12');
INSERT INTO `auction_record` VALUES ('221025A027C8837C', 2, '221007GWWM0H2BXP', '2210259ZF9PPRBF8', 500001, '2022-10-25 14:00:57', '2022-10-25 14:00:57', '2022-10-25 14:00:57');
INSERT INTO `auction_record` VALUES ('221025ACNX42PWDP', 2, '221006D5BMC92NC0', '221025ABB1NZ5K1P', 1000000, '2022-10-25 14:38:52', '2022-10-25 14:38:52', '2022-10-25 14:38:52');
INSERT INTO `auction_record` VALUES ('221025AD3ZWDDD40', 1, '2209200C051MRMNC', '221025ABB1NZ5K1P', 2000000, '2022-10-25 14:40:10', '2022-10-25 14:40:10', '2022-10-25 14:40:10');
INSERT INTO `auction_record` VALUES ('221025ADGRDYDXWH', 1, '2209200C051MRMNC', '2210080AB1N9B168', 1000000, '2022-10-25 14:41:25', '2022-10-25 14:41:25', '2022-10-25 14:41:25');
INSERT INTO `auction_record` VALUES ('221025AFMN2T437C', 1, '2209200C051MRMNC', '221025A0N40BRWX4', 2000, '2022-10-25 14:44:44', '2022-10-25 14:44:44', '2022-10-25 14:44:44');
COMMIT;

-- ----------------------------
-- Table structure for person_info
-- ----------------------------
DROP TABLE IF EXISTS `person_info`;
CREATE TABLE `person_info` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` int NOT NULL,
  `sex` int NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `age` int NOT NULL,
  `other_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of person_info
-- ----------------------------
BEGIN;
INSERT INTO `person_info` VALUES ('2209200C04XRHHM8', 'jingbin', 'wang', 426390626, 1, '2000-01-01', 'jingbin.wang.warren@gmail.com', 'NorthSydney', 20, 'hi i am warren', '2022-10-25 15:20:20', '2022-10-25 15:20:20');
INSERT INTO `person_info` VALUES ('221006D5BMBYW2K4', 'Thaw', 'Zin', 12345678, 1, '2022-10-07', 'thawzin@gmail.com', 'homebush', 24, 'unknow', '2022-10-25 13:56:18', '2022-10-25 13:56:18');
INSERT INTO `person_info` VALUES ('221007GWWM02C84H', 'phat', 'gia', 1234567, 1, '2000-01-01', '312312@qq.com', '123 Something Street, Suburb 2001 NSW', 20, 'my info', '2022-10-25 13:50:01', '2022-10-25 13:50:01');
INSERT INTO `person_info` VALUES ('221010AFZFN9KH28', 'unknown', 'nknow', 425, 0, '2022-10-10', 'unknow', 'unknow', 99, 'unknow', '2022-10-10 14:48:34', '2022-10-10 14:48:34');
INSERT INTO `person_info` VALUES ('2210259YWNKC8MY8', 'unknow', 'unknow', 0, 2, '2022-10-25', 'unknow', 'unknow', 99, 'unknow', '2022-10-25 13:57:21', '2022-10-25 13:57:21');
INSERT INTO `person_info` VALUES ('221025ACF9Y4XK1P', 'Richarddd', 'Nguyennn', 583938232, 1, '2002-10-17', 'richard23@gmail.com', '43 Some st', 22, 'im a buyer', '2022-10-25 15:33:30', '2022-10-25 15:33:30');
INSERT INTO `person_info` VALUES ('221025ACFZ7KZ540', 'Shyamal', 'Shyamal', 426179062, 1, '2002-01-31', 'shyamalmodgil31@gmail.com', '5 Peppercorn Pl Glenwood 2768 NSW', 20, 'Looking for a house around the area.', '2022-10-25 14:40:32', '2022-10-25 14:40:32');
INSERT INTO `person_info` VALUES ('221025AXMF1XSFFW', 'unknow', 'unknow', 0, 2, '2022-10-25', 'unknow', 'unknow', 99, 'unknow', '2022-10-25 15:17:45', '2022-10-25 15:17:45');
INSERT INTO `person_info` VALUES ('221025AYHMP7YZ7C', 'unknow', 'unknow', 0, 2, '2022-10-25', 'unknow', 'unknow', 99, 'unknow', '2022-10-25 15:20:33', '2022-10-25 15:20:33');
INSERT INTO `person_info` VALUES ('221025B06X3XXRYW', 'unknow', 'unknow', 0, 2, '2022-10-25', 'unknow', 'unknow', 99, 'unknow', '2022-10-25 15:25:31', '2022-10-25 15:25:31');
COMMIT;

-- ----------------------------
-- Table structure for real_estate
-- ----------------------------
DROP TABLE IF EXISTS `real_estate`;
CREATE TABLE `real_estate` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_estate_type` int NOT NULL,
  `land_area` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_estate_area` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bedrooms` int NOT NULL,
  `bathrooms` int NOT NULL,
  `garage` int NOT NULL,
  `street_address` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `suburb` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `agent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `on_auction` int NOT NULL COMMENT '0-no 1-yes',
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of real_estate
-- ----------------------------
BEGIN;
INSERT INTO `real_estate` VALUES ('2209200C43921111', 2, '700', '630', 1, 1, 1, '72/41 Chandler Street', 'Belconnen', '221006D5BMC92NC0', '2022-10-25 13:12:59', '2022-10-25 13:12:59', 1, '1 Master bedroom apartment with garage at Belconnen');
INSERT INTO `real_estate` VALUES ('2209200C43921112', 1, '823', '789', 3, 1, 1, '93 Ross Road', 'Queanbeyan', '221006D5BMC92NC0', '2022-10-25 13:13:35', '2022-10-25 13:13:35', 1, '3 bedrooms house with 1 garage at Queanbeyan');
INSERT INTO `real_estate` VALUES ('2209200C43921113', 1, '190', '132', 4, 3, 2, '45 Mcglashan Street', 'Taylor', '221006D5BMC92NC0', '2022-10-25 13:23:58', '2022-10-25 13:23:58', 1, '4 bedrooms house with 2 garages at Taylor');
INSERT INTO `real_estate` VALUES ('2209200C43921114', 1, '180', '150', 6, 4, 5, '27a & 27b William Street', 'Oaks Estate', '221006D5BMC92NC0', '2022-10-25 13:25:07', '2022-10-25 13:25:07', 1, '6 bedrooms house with 6 car parking space at Oaks Estate');
INSERT INTO `real_estate` VALUES ('2209200C43921115', 3, '195', '175', 4, 2, 2, '9/7 Purnell Place', 'Calwell', '221006D5BMC92NC0', '2022-10-25 13:59:14', '2022-10-25 13:59:14', 1, '4 Bedrooms townhouse with 2 garage at Calwell');
INSERT INTO `real_estate` VALUES ('2209200C43921116', 1, '210', '180', 4, 2, 4, '35 Fred Lane Crescent', 'Gordon', '221006D5BMC92NC0', '2022-10-25 13:24:25', '2022-10-25 13:24:25', 1, '4 Bedrooms house with 4 car parking space at Gordon');
INSERT INTO `real_estate` VALUES ('2209200C43921117', 1, '160', '120', 2, 2, 2, '72/20 Federal Highway', 'Watson', '221006D5BMC92NC0', '2022-10-25 14:00:32', '2022-10-25 14:00:32', 1, '2 Bedrooms apartment with 2 garage at Watson');
INSERT INTO `real_estate` VALUES ('2209200C43921118', 2, '160', '120', 1, 1, 1, '73/8 Baudinette Circuit', 'Bruce', '221006D5BMC92NC0', '2022-10-25 14:01:56', '2022-10-25 14:01:56', 1, '1 Bedroom apartment with 1 garage at Bruce');
INSERT INTO `real_estate` VALUES ('2209200C43921119', 1, '900', '875', 3, 1, 2, '281 Crawford Street', 'Queanbeyany', '221006D5BMC92NC0', '2022-10-25 14:02:53', '2022-10-25 14:02:53', 1, '3 bedrooms house with 2 garages at Queanbeyany');
INSERT INTO `real_estate` VALUES ('2209200C43921120', 1, '745', '717', 5, 2, 2, '9 Yarrow Place', 'O Connor', '221006D5BMC92NC0', '2022-10-25 14:05:26', '2022-10-25 14:05:26', 1, '5 Bedrooms house with 2 garages at O Connor');
INSERT INTO `real_estate` VALUES ('2209200C4392AMCI', 1, '700', '630', 4, 3, 1, '123 Winsdor', 'Mascot', '2209200C051MRMNC', '2022-10-10 14:06:44', '2022-10-10 14:06:44', 1, 'very good');
INSERT INTO `real_estate` VALUES ('2209200C4392AMCL', 2, '823', '789', 3, 4, 2, '467 O\'brien', 'Greensquare', '2209200C051MRMNC', '2022-10-10 14:06:46', '2022-10-10 14:06:46', 1, 'large land area');
INSERT INTO `real_estate` VALUES ('2209200C4392AMCQ', 1, '190', '132', 5, 3, 2, '34, George Street', 'Burwood', '2209200C051MRMNC', '2022-10-10 14:06:47', '2022-10-10 14:06:47', 1, 'beautiful house');
INSERT INTO `real_estate` VALUES ('2209200C4392AMCR', 1, '180', '150', 3, 3, 2, '1, Neon Street', 'Flemington', '2209200C051MRMNC', '2022-10-10 14:06:54', '2022-10-10 14:06:54', 1, 'very nice');
INSERT INTO `real_estate` VALUES ('2209200C4392AMCU', 1, '195', '175', 4, 2, 2, '86 Thomas Street', 'Strathfield', '2209200C051MRMNC', '2022-10-10 14:06:56', '2022-10-10 14:06:56', 1, 'Strathfield night market');
INSERT INTO `real_estate` VALUES ('2209200C4392AMCW', 1, '210', '180', 5, 4, 3, '23, Lucas Street', 'Marsfield', '2209200C051MRMNC', '2022-10-10 14:06:58', '2022-10-10 14:06:58', 1, 'chinese food court next by');
INSERT INTO `real_estate` VALUES ('2209200C4392AMCY', 1, '160', '120', 3, 2, 1, '61 Boronia Street', 'Kensington', '2209200C051MRMNC', '2022-10-10 14:07:01', '2022-10-10 14:07:01', 1, 'good view can see ocean');
INSERT INTO `real_estate` VALUES ('2209200D9H1S3X2', 1, '160', '120', 2, 2, 1, '36 Melody Street', 'Redfern', '2209200C051MRMNC', '2022-10-10 14:07:03', '2022-10-10 14:07:03', 1, '2 bathroom good view');
INSERT INTO `real_estate` VALUES ('2209200D9H1S3X3', 1, '900', '875', 4, 5, 2, '323 Hawk Cresent', 'Clyde North', '2209200C051MRMNC', '2022-10-10 14:07:05', '2022-10-10 14:07:05', 1, 'good view');
INSERT INTO `real_estate` VALUES ('2209200D9H1S3X4', 1, '745', '717', 3, 3, 1, '312 Saint George', 'Baulkham Hills', '2209200C051MRMNC', '2022-10-10 14:07:07', '2022-10-10 14:07:07', 1, 'very nice house');
INSERT INTO `real_estate` VALUES ('2209201C4392AMCI', 2, '700', '630', 1, 1, 1, '1/51-53 Bignell Street', 'Flemington', '221007GWWM0H2BXP', '2022-10-10 14:05:59', '2022-10-10 14:05:59', 1, 'Single Bedroom Apartment at Flemington');
INSERT INTO `real_estate` VALUES ('2209202C4392AMCL', 2, '823', '789', 3, 2, 1, '5/278-282 Kings Way', 'South Melbourne', '221007GWWM0H2BXP', '2022-10-10 14:10:46', '2022-10-10 14:10:46', 1, '3 Bedroom Apartment at South Melbourne');
INSERT INTO `real_estate` VALUES ('2209203C4392AMCQ', 2, '41', '41', 1, 1, 0, '3313/80 A‘BECKETT STREET', 'South Melbourne', '221007GWWM0H2BXP', '2022-10-10 14:11:40', '2022-10-10 14:11:40', 1, 'Single Bedroom apartment at South Melbourne');
INSERT INTO `real_estate` VALUES ('2209204C4392AMCR', 2, '180', '150', 2, 1, 1, '2007/80 A\'beckett Street', 'Melbourne', '221007GWWM0H2BXP', '2022-10-10 14:12:17', '2022-10-10 14:12:17', 1, '2 Bedroom apartment near Flagstaff Garden');
INSERT INTO `real_estate` VALUES ('2209205C4392AMCU', 2, '195', '175', 1, 1, 1, '506/300 Swanston Street', 'Melbourne', '221007GWWM0H2BXP', '2022-10-10 14:14:08', '2022-10-10 14:14:08', 1, 'Single bedroom apartment in Melbourne');
INSERT INTO `real_estate` VALUES ('2209206C4392AMCW', 1, '210', '180', 3, 3, 1, '155 Station Street', 'Carlton', '221007GWWM0H2BXP', '2022-10-10 14:15:03', '2022-10-10 14:15:03', 1, '3 bedroom 2 ensuite house at Carlton');
INSERT INTO `real_estate` VALUES ('2209207C4392AMCY', 1, '160', '120', 3, 1, 1, '1117 Hoddle Street', 'East Melbourne', '221007GWWM0H2BXP', '2022-10-10 14:16:02', '2022-10-10 14:16:02', 1, '3 Bedroom house at East Melbourne');
INSERT INTO `real_estate` VALUES ('2209208D9H1S3X2', 2, '160', '120', 2, 2, 1, '2611/618 Lonsdale Street', 'Melbourne', '221007GWWM0H2BXP', '2022-10-25 14:10:25', '2022-10-25 14:10:25', 1, '2 Bedroom 1 ensuite apartment right in the center of Melbourne');
INSERT INTO `real_estate` VALUES ('2209209D9H1S3X3', 2, '900', '875', 2, 2, 1, '503/77 Nott Street', 'Port Melbourne', '221007GWWM0H2BXP', '2022-10-10 14:16:34', '2022-10-10 14:16:34', 1, 'Apartment with 2 Bedroom at Port Melbourne');
INSERT INTO `real_estate` VALUES ('2209210D9H1S3X4', 1, '745', '717', 2, 2, 1, '342/71-89 Hobsons Road', 'Kensington', '221007GWWM0H2BXP', '2022-10-25 14:12:21', '2022-10-25 14:12:21', 1, '2 Bedroom apartment with 1 ensuite at Kensington');
COMMIT;

-- ----------------------------
-- Table structure for real_estate_img
-- ----------------------------
DROP TABLE IF EXISTS `real_estate_img`;
CREATE TABLE `real_estate_img` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_estate_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `position_sort` int NOT NULL,
  `is_main` int NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of real_estate_img
-- ----------------------------
BEGIN;
INSERT INTO `real_estate_img` VALUES ('2209200C4391AMCL', '2209200C4392AMCL', 1, 1, '2022-10-07 23:51:40', '2022-10-07 23:51:40', 'https://i3.au.reastatic.net/800x600/44df67d24f1f84dcc091a279bcdb189a38478e9e50af83c1a7d2947ceac0b398/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4391AMCQ', '2209200C4392AMCQ', 1, 1, '2022-10-07 23:53:39', '2022-10-07 23:53:39', 'https://i3.au.reastatic.net/800x600/1f8009d40b60f779c549089aff22eb8a52f6af06132fac6be871dd84c4892dc3/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMAR', '2209200C4392AMCR', 1, 1, '2022-10-07 23:57:51', '2022-10-07 23:57:51', 'https://i3.au.reastatic.net/800x600/ebf35b2e116b031e44136c9e67983504d72afa70d952797b3cb4cdf6c1832d86/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMAY', '2209200C4392AMCY', 2, 0, '2022-10-08 00:03:21', '2022-10-08 00:03:21', 'https://i3.au.reastatic.net/800x600/68700bdfb3fffb59213f1fee60f26da16199fa89414b68abd5882eb62b4953bf/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMDR', '2209200C4392AMCR', 2, 0, '2022-10-07 23:58:17', '2022-10-07 23:58:17', 'https://i3.au.reastatic.net/800x600/c57e1fd54e7e01a1c1815db5c1a929c0c0957c592948ec07adafe3685f591820/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMFR', '2209200C4392AMCR', 3, 0, '2022-10-07 23:58:35', '2022-10-07 23:58:35', 'https://i3.au.reastatic.net/800x600/de0dfbe2b6656d5b5085c40f953a87fa7e845417cd7e5af4e510e4f7396e06e2/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMGW', '2209200C4392AMCW', 3, 0, '2022-10-08 00:01:49', '2022-10-08 00:01:49', 'https://i3.au.reastatic.net/800x600/ae5dc7a947ed4dfd06ee477b49f1fd613bd5a004e799b86be2c58f1abe8eea65/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMHU', '2209200C4392AMCU', 3, 0, '2022-10-08 00:00:13', '2022-10-08 00:00:13', 'https://i3.au.reastatic.net/800x600/b9d1d4423965c3fcb5e6a74c546fab391dfd1d551a6b4ef654582fdc71654f87/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMJY', '2209200C4392AMCY', 1, 1, '2022-10-08 00:03:24', '2022-10-08 00:03:24', 'https://i3.au.reastatic.net/800x600/f7b3103be975a771e64f8dbb540eefb7e646ad12f0bf74c0200411f910ccc032/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMLY', '2209200C4392AMCY', 3, 0, '2022-10-08 00:03:55', '2022-10-08 00:03:55', 'https://i3.au.reastatic.net/800x600/4723c2caf1f5e7136ecf513f328473c65f0967b11381385576651e229f672b51/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMQW', '2209200C4392AMCW', 2, 0, '2022-10-08 00:01:02', '2022-10-08 00:01:02', 'https://i3.au.reastatic.net/800x600/e975fa5e6ad21bb87ccc0b87ecf981051ac62d656935bace2c069accc3a83e40/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMVU', '2209200C4392AMCU', 2, 0, '2022-10-07 23:59:43', '2022-10-07 23:59:43', 'https://i3.au.reastatic.net/800x600/5245e6df9dea4382e7211216b2ab3cafcc5cc592d09e7ba2f08ea60ead0a0720/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMZU', '2209200C4392AMCU', 1, 1, '2022-10-07 23:59:20', '2022-10-07 23:59:20', 'https://i3.au.reastatic.net/800x600/2f80e3775a1fc90d0d66b758bbcf9a4b124a02de18af1eab4d318fdd6be50b06/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4392AMZW', '2209200C4392AMCW', 1, 1, '2022-10-08 00:01:53', '2022-10-08 00:01:53', 'https://i3.au.reastatic.net/800x600/dc36c538ca1e75b7e267196271f801716069d1de7537e0db7c6795fde33d0e84/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200C4393AMCL', '2209200C4392AMCL', 2, 0, '2022-10-07 23:52:07', '2022-10-07 23:52:07', 'https://i3.au.reastatic.net/800x600/e14bdc88b9f64f5d3491faf297cf612d6e90ac1ea32a0820ba2fa094ce381f77/image.png');
INSERT INTO `real_estate_img` VALUES ('2209200C4393AMCQ', '2209200C4392AMCQ', 2, 0, '2022-10-07 23:55:31', '2022-10-07 23:55:31', 'https://i3.au.reastatic.net/800x600/9ad9d65b2092d44290fa556e380a9c15782bbd1b258ddbcc428c5047f4574d79/image.png');
INSERT INTO `real_estate_img` VALUES ('2209200C4394AMCL', '2209200C4392AMCL', 3, 0, '2022-10-07 23:53:15', '2022-10-07 23:53:15', 'https://i3.au.reastatic.net/800x600/0b8ae52033f6f598e39023e4a81555b4e8819beab9ec3b22cfe959ea561d7774/image.png');
INSERT INTO `real_estate_img` VALUES ('2209200C4394AMCQ', '2209200C4392AMCQ', 3, 0, '2022-10-08 00:37:36', '2022-10-08 00:37:36', 'https://i2.au.reastatic.net/952x776-resize,extend,r=33,g=40,b=46/c77d320b2977eb4fa59d4161b5df2fecd811986e856d5d05bf97fbb2990ff02c/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200D9H1S3H2', '2209200D9H1S3X2', 1, 1, '2022-10-08 00:05:07', '2022-10-08 00:05:07', 'https://i3.au.reastatic.net/800x600/7d6f3d4d0a525fb07874288928567ee780868d2c4fba9529ae7a534c261a72f8/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200D9H1S3X0', '2209200D9H1S3X3', 3, 0, '2022-10-08 00:07:58', '2022-10-08 00:07:58', 'https://i3.au.reastatic.net/800x600/0ebeb46f4bf8e3b2f0fdf5caac1b590b07424e0e8cf705149bb42a6aac2d0462/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200D9H1S3X1', '2209200D9H1S3X3', 1, 1, '2022-10-08 00:06:29', '2022-10-08 00:06:29', 'https://i3.au.reastatic.net/800x600/539077ccde509b6fc295791e948cb1b611ff9c0379a91b4377e09d512d7ededa/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200D9H1S3X5', '2209200D9H1S3X3', 2, 0, '2022-10-08 00:07:21', '2022-10-08 00:07:21', 'https://i3.au.reastatic.net/800x600/020a5402dafecf4b234618698b4d3201287df8d0fe0fc5b919f59f71ae691c91/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200D9H1S3X7', '2209200D9H1S3X2', 2, 0, '2022-10-08 00:05:38', '2022-10-08 00:05:38', 'https://i3.au.reastatic.net/800x600/94b964a8bdc8fd3ef696ff84a76d206a4c09cd677cf646c122a0a9e0d60d9643/image.png');
INSERT INTO `real_estate_img` VALUES ('2209200D9H1S3X9', '2209200D9H1S3X2', 3, 0, '2022-10-08 00:05:57', '2022-10-08 00:05:57', 'https://i3.au.reastatic.net/800x600/c3a5653a73d112a475f1db207996cd1f13f93dd277969c5f20ede44f8a35ba21/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200D9J1S3X4', '2209200D9H1S3X4', 2, 0, '2022-10-08 00:11:51', '2022-10-08 00:11:51', 'https://i3.au.reastatic.net/800x600/244f1a83dbe538e2736221e8df4d13e90ceba178c46fbc475e593a7615cf06d0/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200D9L1S3X4', '2209200D9H1S3X4', 3, 0, '2022-10-08 00:12:09', '2022-10-08 00:12:09', 'https://i3.au.reastatic.net/800x600/df7ec7ac8670e4bb96b9ec84f5a760a875b676dad11029fb1a2720c118f33a02/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209200D9T1S3X4', '2209200D9H1S3X4', 1, 1, '2022-10-08 00:11:04', '2022-10-08 00:11:04', 'https://i3.au.reastatic.net/800x600/57b2841fc0dcc1544d82630c7e8df2678693bc22a4c3bc21f8fffa04f439c5af/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209201D4391AMCI', '2209200C4392AMCI', 2, 0, '2022-10-08 00:38:11', '2022-10-08 00:38:11', 'https://i2.au.reastatic.net/952x776-resize,extend,r=33,g=40,b=46/c77d320b2977eb4fa59d4161b5df2fecd811986e856d5d05bf97fbb2990ff02c/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209201D4392AMCI', '2209200C4392AMCI', 1, 1, '2022-10-07 23:49:22', '2022-10-07 23:49:22', 'https://i2.au.reastatic.net/800x600/f33c481d75f5e7c174472d846113eb3980fe1c8fc816bff63714294efdc11786/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2209201D4393AMCI', '2209200D4392AMCI', 3, 0, '2022-10-08 00:38:27', '2022-10-08 00:38:27', 'https://i3.au.reastatic.net/800x600/6e95d6125bb00c92db89831335a83b78dcf558f87747f2ecc979d01742b599e1/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007FTCM436W94', '2209200C43921111', 1, 1, '2022-10-07 20:47:23', '2022-10-07 20:47:23', 'https://i2.au.reastatic.net/800x600-format=webp/9a7494a407683e1042a833b52978aec44f0a56817b25d70762b9a0b671c9366d/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007FZ0BX776RP', '2209200C43921111', 2, 0, '2022-10-07 20:58:05', '2022-10-07 20:58:05', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/e053465d5e44d54ad6e0e4b449f2db12f7c0b6db13f266d67d224e2b2afc9eae/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389011128', '2209200C43921112', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/800x600-format=webp/a9f15012fcc02cbc3db7f9cae37612ebb65afa5c25cf7b127a7200afbd1e4bb0/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389011228', '2209200C43921112', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/360x270-format=avif,/90fff7fe693d92467493476d1e690bc5dce48a5a3df8e13a56eae464d75aefcb/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389011328', '2209200C43921112', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/92b05365e734481753711084d497bbfdc0886eb3a8dad8ed9f35137e6bb69a07/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389011428', '2209200C43921113', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/800x600-format=webp/2d9515114819f550fdf93b6c6b411f74276e9672b9d50a0088e09cd166ad5083/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389011528', '2209200C43921113', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/ebcf1630bb8eac4cfae7ed8dd38442f6f46c0c25a8364855565c43cb22157bf4/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389011628', '2209200C43921113', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/2a6fb0c16fa0ee4e3138a80710fd6be3cf5c32c711aa4811c00a387a2768902e/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389011728', '2209200C43921114', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/de8ec3089d7225eb33b06583ee0911216b13f8445c44da9b31c1369cd670a94e/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389011828', '2209200C43921114', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/f786a2caca8291c8b815e146baceca1ead7d77b1ec9ba9a0450751d8aa1ba7aa/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389011928', '2209200C43921114', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/f815fcadd8063a30e49092fe28f0e5ecc9826dea3647f7616ab681ba8c30dc7c/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389012028', '2209200C43921115', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/ba3933461386cda932d140d46237db828a0df01ce98c6f7758b10b43bac514c3/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389012128', '2209200C43921115', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/4804d23f93408c9faf182e25240bfe821c24efd52210ab9216c386291d079dfd/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389012228', '2209200C43921115', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/5517c0b2ca569d8b42d558ff46fee4e6c46116765bec47c3d2ab94c8f9e56d7d/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389012328', '2209200C43921116', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/05d7274a86df3c36b23bf148c54bb79a3d68fcd70f744377d34923b8c19ab0a7/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389012428', '2209200C43921116', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/fe7810e685643b5d92d3c0b39a1e06580bdfe3ecb4ff8cd0e8ac0752414aad26/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389012528', '2209200C43921116', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/75479cbff5ba1fc797bfa3267d4e12cebf7d4fd2833e162b8515c4594e3f6dc4/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389012628', '2209200C43921117', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/e151ff40ec6482595ec0feced6d2f3fea04e02332ae6f3f110f7bd3d80923482/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389012728', '2209200C43921117', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/2568486628afdc112b7abadf5f71582f074b17c0585a928cc6f43277cd223c96/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389012828', '2209200C43921117', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/a4f5a7100e557e25093175733646c5d1601fe66f18d174428bfa1e443497ce4b/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389012928', '2209200C43921118', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/fdfd9175375d4b524e47555d9f26b69c89817cde24581d678080bff8be60cdb9/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389013028', '2209200C43921118', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/2150bfe94c8245f14e16ff992fdf68fd7cf6ce6985da99b14e295b4f07065707/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389013128', '2209200C43921118', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/f8374f6708105298eede83ed0f16e05bc25bf4b50e251e2fb6537d3f172ea040/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389013228', '2209200C43921119', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/962a06a73b25b887996281c59e08da0e3120ba387e7f38e88aa925a6ceecb798/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389013428', '2209200C43921119', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/b34bc11159d0e9d5f1084582056aff641cf9adedeef051e4c6b530a4651d1b47/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389013528', '2209200C43921119', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/bae0583b6f88d7339eb2c81d9c5ccc21d007b612a7e015996537468382e136ce/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389013628', '2209200C43921120', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/7c984308e4eed82d706f36b0f42f772582a5345936ac6f3156d583d343e671b0/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389013728', '2209200C43921120', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/0642e212bf802c2d3a0601ce87698be9e19bd946ccf0e1a149f59b558350033d/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H389013828', '2209200C43921120', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/60b92d22fa703503b19d6bf8eb91278900fd9edb6c8279acb3661584f6d01ed1/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221007H3890BMP28', '2209200C43921111', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/928x944-resize,extend,r=33,g=40,b=46/0ff4ed975383221bb89cc2dbf45f82d359ae586616e2272d0ed368da7eb910d1/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221107FTCM436W94', '2209201C4392AMCI', 1, 1, '2022-10-07 20:47:23', '2022-10-07 20:47:23', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/c54258efe885a9ecdb314cb27a7ee6248e25555c4c7fa22a18bdcd41b28b9208/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221207FZ0BX776RP', '2209201C4392AMCI', 2, 0, '2022-10-07 20:58:05', '2022-10-07 20:58:05', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/c8f897d1929d007757c90c062081a9ef6aef9fb423a6f38900b84d9fbc5f7b83/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H1110BMP28', '2209204C4392AMCR', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/d5727ce18386967a3a9de64f15fb2ead98abc3ad89c42b4d4861178665721865/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H2220BMP28', '2209204C4392AMCR', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/4dc07dd3ad7311a5bd90577dd69b0cc737a414a328c41404ea56bbc779c8f439/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3330BMP28', '2209205C4392AMCU', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/d078366167b63f1edefb885abbaaf24a68b68904c03f9d159a6908f651632e70/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP00', '2209210D9H1S3X4', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/4e2311d00982101fa3e087f5c80a6a4e247a9c1b1b558dbfe674d2f220711c20/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP01', '2209210D9H1S3X4', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/bec2cde75a4fae991436565b642dc6cbac0d7d6d64f99875f6ead09b49c65551/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP11', '2209207C4392AMCY', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/f9a8cbf462a7ae86fffcdafd266ebfc8b6c4dd40f104da52bc88ccfdbbf2aa20/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP22', '2209207C4392AMCY', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/2240bc1b8b71c20a55a40c13f1da1f4feabfacbcc25d4bfb29a72c73b83a240c/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP28', '2209201C4392AMCI', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/7ee410cc32c791cd6c1da9ca0830dd9478cb918984a539f2de12d6f1de6fdb16/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP33', '2209208D9H1S3X2', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/6982cad32480fa7744bdf2cbedae4bef7c0210284d00156af97df81a6a61a17c/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP44', '2209208D9H1S3X2', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/aef2cffb3538cef8a3a3b898a4253992df0d6b498fa7908adbee4f6e9f28a662/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP55', '2209208D9H1S3X2', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/05118dff847f67b3fc42def54d22c03348c58e2e8bbe236eeec3ef395468e60e/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP66', '2209209D9H1S3X3', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/dcb97633775d7c5fbc085fb1f3353245de932094f59f8c6a248c3040cbb94f48/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP77', '2209209D9H1S3X3', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/b5fbb166f420f59ef765a7da32c2a884a8b1b51e1226de15a243fc1c836cc747/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP88', '2209209D9H1S3X3', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/6b56b91f66ed2f3affc0b6ff94eeedce6a39eb40a40ae4e35350d2bd40f09500/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H3890BMP99', '2209210D9H1S3X4', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/76973d673ead9f05d6da8f9e02432dba132fd1752b9000f0ddd204f311bbcd6f/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H4440BMP28', '2209205C4392AMCU', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/32fefe0d8d7e0e30592fcee674d1fd2a95f42db28c77fcaadedb3ea801579028/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H5550BMP28', '2209205C4392AMCU', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/e8e8f4edb7ef920dd60f63a100d1052c39a6ec559f33ce9ccc3d2316c592ddfc/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H6660BMP28', '2209206C4392AMCW', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/7ee410cc32c791cd6c1da9ca0830dd9478cb918984a539f2de12d6f1de6fdb16/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H7770BMP28', '2209206C4392AMCW', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/7ee410cc32c791cd6c1da9ca0830dd9478cb918984a539f2de12d6f1de6fdb16/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H8880BMP28', '2209206C4392AMCW', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/7ee410cc32c791cd6c1da9ca0830dd9478cb918984a539f2de12d6f1de6fdb16/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221307H9990BMP28', '2209207C4392AMCY', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/cb08fa28222fb801d5a5821494c24f1f6432a6790ad5c4e5d99b1535dae62865/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221424H3890BMP28', '2209204C4392AMCR', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/4dc07dd3ad7311a5bd90577dd69b0cc737a414a328c41404ea56bbc779c8f439/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221444H3890BMP28', '2209202C4392AMCL', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/a004e6f1f484d2b91a552c6379064947b8323448d400ceaa1d8acbfd96e4e0ae/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221555H3890BMP28', '2209201C4392AMCI', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/b1e4c05b5c96e0f802eef63eddd2a6cdc4d08be939f686b57fc9b8d8c055c457/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221666H3890BMP28', '2209201C4392AMCI', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/33c0a8c611e0d4a21e71e549bc11178406c7d31b25a71c55478791adf743345e/image.jpg');
INSERT INTO `real_estate_img` VALUES ('221777H3890BMP28', '2209203C4392AMCQ', 1, 1, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/3bdb482ca172238ecc50c1fce2478e759c3e323ed0650e57428075d99ff0848e/image.png');
INSERT INTO `real_estate_img` VALUES ('221888H3890BMP28', '2209203C4392AMCQ', 2, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/3bdb482ca172238ecc50c1fce2478e759c3e323ed0650e57428075d99ff0848e/image.png');
INSERT INTO `real_estate_img` VALUES ('221999H3890BMP28', '2209203C4392AMCQ', 3, 0, '2022-10-07 22:35:01', '2022-10-07 22:35:01', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/3bdb482ca172238ecc50c1fce2478e759c3e323ed0650e57428075d99ff0848e/image.png');
COMMIT;

-- ----------------------------
-- Table structure for wallet
-- ----------------------------
DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `funds` decimal(10,0) NOT NULL,
  `bank_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wallet
-- ----------------------------
BEGIN;
INSERT INTO `wallet` VALUES ('221009HA46P788SW', 0, '123213131', '2209200C051MRMNC', '2022-10-09 22:55:36', '2022-10-09 22:55:36');
INSERT INTO `wallet` VALUES ('221025ADBP8B79AW', 0, '1234123412341234', '221006D5BMC92NC0', '2022-10-25 14:40:59', '2022-10-25 14:40:59');
INSERT INTO `wallet` VALUES ('221025ADRZTRXM14', 0, '2222222222222222', '2209200C051MRMNC', '2022-10-25 14:42:05', '2022-10-25 14:42:05');
INSERT INTO `wallet` VALUES ('221025AY7KK3RD40', 0, '2222222222222333', '2209200C051MRMNC', '2022-10-25 15:19:35', '2022-10-25 15:19:35');
INSERT INTO `wallet` VALUES ('221025B349X15CDP', 0, '8539210395910294', '221025ACF9Z7KBF8', '2022-10-25 15:34:15', '2022-10-25 15:34:15');
COMMIT;

-- ----------------------------
-- Table structure for watch_list
-- ----------------------------
DROP TABLE IF EXISTS `watch_list`;
CREATE TABLE `watch_list` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_estate_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of watch_list
-- ----------------------------
BEGIN;
INSERT INTO `watch_list` VALUES ('221025ACPXHG0094', '221006D5BMC92NC0', '221025A9D2ZNH9D4', '2022-10-25 14:38:58', '2022-10-25 14:38:58');
INSERT INTO `watch_list` VALUES ('221025AD7NHAPZ2W', '2209200C051MRMNC', '221025A9D2ZNH9D4', '2022-10-25 14:40:33', '2022-10-25 14:40:33');
INSERT INTO `watch_list` VALUES ('221025AD8H7MFMRP', '2209200C051MRMNC', '2209210D9H1S3X4', '2022-10-25 14:40:39', '2022-10-25 14:40:39');
INSERT INTO `watch_list` VALUES ('221025AD9DNBF04H', '2209200C051MRMNC', '2209208D9H1S3X2', '2022-10-25 14:40:45', '2022-10-25 14:40:45');
INSERT INTO `watch_list` VALUES ('221025ADAR3G7ZMW', '2209200C051MRMNC', '221025A08WH5TCM8', '2022-10-25 14:40:53', '2022-10-25 14:40:53');
INSERT INTO `watch_list` VALUES ('221025ADCN5CWG0H', '2209200C051MRMNC', '2209200C43921114', '2022-10-25 14:41:06', '2022-10-25 14:41:06');
INSERT INTO `watch_list` VALUES ('221025AXFP3R1AW0', '2209200C051MRMNC', '2209200C43921116', '2022-10-25 15:17:20', '2022-10-25 15:17:20');
INSERT INTO `watch_list` VALUES ('221025AXMNGNKT7C', '221007GWWM0H2BXP', '2209200C43921120', '2022-10-25 15:17:46', '2022-10-25 15:17:46');
INSERT INTO `watch_list` VALUES ('221025AXNXM1PBR4', '221007GWWM0H2BXP', '2209200C43921114', '2022-10-25 15:17:54', '2022-10-25 15:17:54');
INSERT INTO `watch_list` VALUES ('221025B2B9T4AXKP', '221025ACFZ805RYW', '2209200C43921120', '2022-10-25 15:32:00', '2022-10-25 15:32:00');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
