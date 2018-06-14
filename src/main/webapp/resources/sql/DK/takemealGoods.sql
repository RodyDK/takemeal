--------------------------------------------------------
--  ÆÄÀÏÀÌ »ý¼ºµÊ - ¸ñ¿äÀÏ-6¿ù-14-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GOODS
--------------------------------------------------------

  CREATE TABLE "TAKEMEAL"."GOODS" 
   (	"NAME" VARCHAR2(300 BYTE), 
	"PRICE" NUMBER(38,0), 
	"QTY" NUMBER(38,0), 
	"DESCRIPTION" VARCHAR2(1000 BYTE), 
	"CONTENTS" VARCHAR2(4000 BYTE), 
	"REG_DATE" DATE, 
	"THUMBNAIL" VARCHAR2(1000 BYTE), 
	"NO" NUMBER(38,0), 
	"COMPANY" VARCHAR2(300 BYTE), 
	"COUNTRY" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into TAKEMEAL.GOODS
SET DEFINE OFF;
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('¿ÀÂ¡¾î',3000,1,'¼­»ê¿ÀÂ¡¾î','½Ì½ÌÇÑ ¿ÀÂ¡¾î°¡ ¿Ô¾î¿ä',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/15/800/120581615_0.jpg',1,'¼­»ê³ª¶ó','ÇÑ±¹');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('¾ç¹èÃß',1990,1,'±¹»ê¾ç¹èÃß','±¹³»»ê ¾ç¹èÃß',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/95/800/000005495_0.jpg',2,'³óÇù','ÇÑ±¹
');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('»ý´ß
',5990,1,'ÇÏ¸² »ýÀ° ´ß°í±â','½Å¼±ÇÑ ÇÏ¸² ´ß°í±â',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/68/800/106974268_0.jpg',3,'(ÁÖ)ÇÏ¸²','ÇÑ±¹');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('ÆØÀÌ¹ö¼¸',1000,1,'¾ËÀÌ Å« ÆØÀÌ¹ö¼¸','½Å¼±ÇÑ ÆØÀÌ¹ö¼¸',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',4,'³óÇù','ÇÑ±¹');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('ÆØÀÌ¹ö¼¸',1000,1,'¾ËÀÌ Å« ÆØÀÌ¹ö¼¸','½Å¼±ÇÑ ÆØÀÌ¹ö¼¸',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',5,'³óÇù','ÇÑ±¹');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('ÆØÀÌ¹ö¼¸',1000,1,'¾ËÀÌ Å« ÆØÀÌ¹ö¼¸','½Å¼±ÇÑ ÆØÀÌ¹ö¼¸',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',6,'³óÇù','ÇÑ±¹');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('ÆØÀÌ¹ö¼¸',1000,1,'¾ËÀÌ Å« ÆØÀÌ¹ö¼¸','½Å¼±ÇÑ ÆØÀÌ¹ö¼¸',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',7,'³óÇù','ÇÑ±¹');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('ÆØÀÌ¹ö¼¸',1000,1,'¾ËÀÌ Å« ÆØÀÌ¹ö¼¸','½Å¼±ÇÑ ÆØÀÌ¹ö¼¸',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',8,'³óÇù','ÇÑ±¹');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('ÆØÀÌ¹ö¼¸',1000,1,'¾ËÀÌ Å« ÆØÀÌ¹ö¼¸','½Å¼±ÇÑ ÆØÀÌ¹ö¼¸',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',9,'³óÇù','ÇÑ±¹');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('ÆØÀÌ¹ö¼¸',1000,1,'¾ËÀÌ Å« ÆØÀÌ¹ö¼¸','½Å¼±ÇÑ ÆØÀÌ¹ö¼¸',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',10,'³óÇù','ÇÑ±¹');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('ÆØÀÌ¹ö¼¸',1000,1,'¾ËÀÌ Å« ÆØÀÌ¹ö¼¸','½Å¼±ÇÑ ÆØÀÌ¹ö¼¸',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',11,'³óÇù','ÇÑ±¹');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('ÆØÀÌ¹ö¼¸',1000,1,'¾ËÀÌ Å« ÆØÀÌ¹ö¼¸','½Å¼±ÇÑ ÆØÀÌ¹ö¼¸',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',12,'³óÇù','ÇÑ±¹');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('ÆØÀÌ¹ö¼¸',1000,1,'¾ËÀÌ Å« ÆØÀÌ¹ö¼¸','½Å¼±ÇÑ ÆØÀÌ¹ö¼¸',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',13,'³óÇù','ÇÑ±¹');
--------------------------------------------------------
--  DDL for Index GOODS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAKEMEAL"."GOODS_PK" ON "TAKEMEAL"."GOODS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table GOODS
--------------------------------------------------------

  ALTER TABLE "TAKEMEAL"."GOODS" ADD CONSTRAINT "GOODS_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TAKEMEAL"."GOODS" MODIFY ("COUNTRY" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."GOODS" MODIFY ("COMPANY" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."GOODS" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."GOODS" MODIFY ("THUMBNAIL" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."GOODS" MODIFY ("REG_DATE" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."GOODS" MODIFY ("CONTENTS" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."GOODS" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."GOODS" MODIFY ("QTY" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."GOODS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."GOODS" MODIFY ("NAME" NOT NULL ENABLE);
