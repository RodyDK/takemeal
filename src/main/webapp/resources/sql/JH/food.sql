--------------------------------------------------------
--  파일이 생성됨 - 월요일-6월-18-2018   
--------------------------------------------------------
DROP TABLE "TAKEMEAL"."FOOD" cascade constraints;
--------------------------------------------------------
--  DDL for Table FOOD
--------------------------------------------------------

  CREATE TABLE "TAKEMEAL"."FOOD" 
   (	"CLASS_CODE" VARCHAR2(2 BYTE), 
	"CLASS_NAME" VARCHAR2(30 BYTE), 
	"TABLE_CODE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TAKEMEAL"."FOOD"."CLASS_CODE" IS '식품코드';
   COMMENT ON COLUMN "TAKEMEAL"."FOOD"."CLASS_NAME" IS '식품이름';
   COMMENT ON COLUMN "TAKEMEAL"."FOOD"."TABLE_CODE" IS '테이블분류';
REM INSERTING into TAKEMEAL.FOOD
SET DEFINE OFF;
Insert into TAKEMEAL.FOOD (CLASS_CODE,CLASS_NAME,TABLE_CODE) values ('ME','육류','MEATS');
Insert into TAKEMEAL.FOOD (CLASS_CODE,CLASS_NAME,TABLE_CODE) values ('FS','어패류','FISHS');
Insert into TAKEMEAL.FOOD (CLASS_CODE,CLASS_NAME,TABLE_CODE) values ('CR','곡류','CEREALS');
Insert into TAKEMEAL.FOOD (CLASS_CODE,CLASS_NAME,TABLE_CODE) values ('VT','야채류','VEGETABLES');
Insert into TAKEMEAL.FOOD (CLASS_CODE,CLASS_NAME,TABLE_CODE) values ('EG','계란','EGGS');
Insert into TAKEMEAL.FOOD (CLASS_CODE,CLASS_NAME,TABLE_CODE) values ('MK','유제품','MILKY');
--------------------------------------------------------
--  DDL for Index SYS_C007672
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAKEMEAL"."SYS_C007672" ON "TAKEMEAL"."FOOD" ("CLASS_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table FOOD
--------------------------------------------------------

  ALTER TABLE "TAKEMEAL"."FOOD" ADD PRIMARY KEY ("CLASS_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TAKEMEAL"."FOOD" MODIFY ("CLASS_NAME" NOT NULL ENABLE);
