--------------------------------------------------------
--  파일이 생성됨 - 목요일-6월-14-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RECIPE
--------------------------------------------------------

  CREATE TABLE "TAKEMEAL"."RECIPE" 
   (	"NO" NUMBER(*,0), 
	"SUBJECT" VARCHAR2(200), 
	"CONTENTS" VARCHAR2(2000), 
	"THUMBNAIL" VARCHAR2(200), 
	"TIME" NUMBER(*,0), 
	"FOLLOW" NUMBER(*,0), 
	"HIT" NUMBER(*,0), 
	"KCAL" NUMBER(*,0), 
	"USERID" VARCHAR2(100), 
	"REG_DATE" DATE
   )
REM INSERTING into TAKEMEAL.RECIPE
SET DEFINE OFF;
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (1,'딸기치즈케이크','여심을 자극하는 달콤한 딸기와 치즈의 만남','1.jpg',10,154,0,123,'blog1',to_date('18/05/23','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (2,'계란토스트','자취생을 위한 황금레시피! 달콤한 식빵과 고소한 달걀 콤비','2.png',30,1186,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (3,'초코빙수','여자친구를 위한 달콤한 디저트','3.jpg',20,245,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (4,'깻잎 누들','데리야끼소스 누들과 깻잎으로 만든 어디에도 없는 레시피','4.png',15,345,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (5,'한입핫도그','아이들이 좋아하는 간식 필수템! 건강식으로도 최고!','5.jpg',30,784,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (6,'마늘훈제삼겹살','혼술최강안주, 다진마늘로 돼지고기 냄새까지 싹 잡았다','6.png',60,111,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (7,'마늘토스트','드라큘라도 반한 마늘토스트, 아이들도 좋아해요','7.jpg',25,203,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (8,'꼬마김밥','작다고 무시하지 마시라! 맛은 김밥 of 김밥','8.jpg',20,511,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (9,'두부제육','두부김치 NO~! 두부제육 OK~!','9.jpg',3,347,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (10,'삼겹살 냉채','족발냉채도 GG치고간 삼겹살 냉채','10.jpg',5,842,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (11,'바닐라아이스크림','집에서도 손쉽게 만들어먹는 간단 디저트','11.jpg',50,100,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (12,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (13,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (14,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (15,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (16,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (17,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (18,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (19,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (20,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (21,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (22,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (23,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (24,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (25,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (26,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (27,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (28,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (29,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (30,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (31,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (32,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (33,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (34,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (35,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (36,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (37,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (38,'딸기롤','딸기가 듬뿍 들어간 수제 롤케잌','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index RECIPE_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAKEMEAL"."RECIPE_INDEX1" ON "TAKEMEAL"."RECIPE" ("NO")
--------------------------------------------------------
--  Constraints for Table RECIPE
--------------------------------------------------------

  ALTER TABLE "TAKEMEAL"."RECIPE" MODIFY ("NO" NOT NULL ENABLE)
