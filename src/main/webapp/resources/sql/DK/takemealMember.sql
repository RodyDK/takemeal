--------------------------------------------------------
--  ÆÄÀÏÀÌ »ý¼ºµÊ - ¸ñ¿äÀÏ-6¿ù-14-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "TAKEMEAL"."MEMBER" 
   (	"NO" NUMBER, 
	"USERID" VARCHAR2(200), 
	"PASSWORD" VARCHAR2(200), 
	"USERNAME" VARCHAR2(100), 
	"TYPE" NUMBER, 
	"PHONE" VARCHAR2(150), 
	"BLOG" VARCHAR2(250), 
	"REG_DATE" DATE
   )
REM INSERTING into TAKEMEAL.MEMBER
SET DEFINE OFF;
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (1,'admin','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','°ü¸®ÀÚ',1,'010-0000-0000',null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (2,'user1','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','ÃÊ¾Æ',2,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (3,'user2','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','Çý¸®',2,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (4,'user3','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','¾ÆÀÌ¸°',2,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (5,'blog1','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (6,'blog2','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (7,'blog3','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (8,'blog4','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (9,'blog5','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (10,'blog6','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (11,'blog7','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (12,'blog8','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (13,'blog9','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (14,'blog10','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (15,'blog11','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (16,'blog12','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (17,'blog13','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
Insert into TAKEMEAL.MEMBER (NO,USERID,PASSWORD,USERNAME,TYPE,PHONE,BLOG,REG_DATE) values (18,'blog14','$2a$10$HitvIbUCymBdjVG1Tzrly.RwjheM17CMZFANgxuTfZdaiiuPe9PI2','È«¼®Ãµ',3,null,null,null);
--------------------------------------------------------
--  DDL for Index MEMBER_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAKEMEAL"."MEMBER_INDEX1" ON "TAKEMEAL"."MEMBER" ("NO")
--------------------------------------------------------
--  DDL for Index MEMBER_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAKEMEAL"."MEMBER_UK1" ON "TAKEMEAL"."MEMBER" ("USERID")
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "TAKEMEAL"."MEMBER" ADD CONSTRAINT "MEMBER_UK1" UNIQUE ("USERID") ENABLE
  ALTER TABLE "TAKEMEAL"."MEMBER" MODIFY ("USERNAME" NOT NULL ENABLE)
  ALTER TABLE "TAKEMEAL"."MEMBER" MODIFY ("PASSWORD" NOT NULL ENABLE)
  ALTER TABLE "TAKEMEAL"."MEMBER" MODIFY ("USERID" NOT NULL ENABLE)
  ALTER TABLE "TAKEMEAL"."MEMBER" MODIFY ("NO" NOT NULL ENABLE)
