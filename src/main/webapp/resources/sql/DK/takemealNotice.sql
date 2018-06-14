--------------------------------------------------------
--  파일이 생성됨 - 목요일-6월-14-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "TAKEMEAL"."NOTICE" 
   (	"NO" NUMBER(38,0), 
	"USERID" VARCHAR2(300 BYTE), 
	"SUBJECT" VARCHAR2(300 BYTE), 
	"CONTENTS" VARCHAR2(4000 BYTE), 
	"HIT" NUMBER(38,0), 
	"REG_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into TAKEMEAL.NOTICE
SET DEFINE OFF;
Insert into TAKEMEAL.NOTICE (NO,USERID,SUBJECT,CONTENTS,HIT,REG_DATE) values (1,'admin','홈페이지 오픈!','안녕하세요!
챙겨먹어요 관리자입니다.<br><br>

챙겨먹어요가 2018년 6월 20일부로 정식런칭을 하였습니다.<br>
저희는 요리들의 레시피들을 제공과 함께 레시피 상품재료들을<br>
구매 그리고 재료별, 국가별등 다양한 조건으로 레시피를<br>
검색할 수 있습니다.<br><br>

고객분들의 더 맛있고 건강한 삶을 위해 노력하겠습니다.<br><br>

감사합니다.',1562,to_date('18/06/20','RR/MM/DD'));
Insert into TAKEMEAL.NOTICE (NO,USERID,SUBJECT,CONTENTS,HIT,REG_DATE) values (2,'admin','요리블로거 상시모집!','안녕하세요!<br>
챙겨먹어요 관리자입니다.<br><br>

저희 챙겨먹어요에서는 더욱 좋은 정보제공을 위해<br>
블로거 및 SNS 인플루언서들을 모집합니다.<br><br>

다양한 정보를 챙겨먹어요와 함께 많은 사용자들에게 제공하여<br>
서로 Win-Win 할 수 있는 구조를 만들기 위해 노력하겠습니다.<br><br>

블로거들은 직접 레시피도 등록할 수 있고<br>
고객들과 소통할 수 있습니다.<br><br>

많은 참여부탁드립니다.<br>
감사합니다.',2652,to_date('18/06/21','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAKEMEAL"."NOTICE_PK" ON "TAKEMEAL"."NOTICE" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "TAKEMEAL"."NOTICE" MODIFY ("REG_DATE" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."NOTICE" ADD CONSTRAINT "NOTICE_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TAKEMEAL"."NOTICE" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."NOTICE" MODIFY ("HIT" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."NOTICE" MODIFY ("CONTENTS" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."NOTICE" MODIFY ("SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."NOTICE" MODIFY ("USERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "TAKEMEAL"."NOTICE" ADD CONSTRAINT "NOTICE_FK1" FOREIGN KEY ("USERID")
	  REFERENCES "TAKEMEAL"."MEMBER" ("USERID") ENABLE;
