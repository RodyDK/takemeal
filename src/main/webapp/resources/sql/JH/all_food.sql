--------------------------------------------------------
--  ������ ������ - ������-6��-18-2018   
--------------------------------------------------------
DROP TABLE "TAKEMEAL"."ALL_FOOD" cascade constraints;
DROP TABLE "TAKEMEAL"."FOOD" cascade constraints;
DROP TABLE "TAKEMEAL"."MEMBER" cascade constraints;
--------------------------------------------------------
--  DDL for Table ALL_FOOD
--------------------------------------------------------

  CREATE TABLE "TAKEMEAL"."ALL_FOOD" 
   (	"NO" NUMBER(3,0), 
	"CLASS_CODE" VARCHAR2(2 BYTE), 
	"FOOD_CODE" NUMBER(3,0), 
	"FOOD_NAME" VARCHAR2(30 BYTE), 
	"COOL_SYS" VARCHAR2(10 BYTE), 
	"EXPIRY_DATE" DATE, 
	"FOOD_COUNT" NUMBER(5,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TAKEMEAL"."ALL_FOOD"."NO" IS 'ȸ����ȣ';
   COMMENT ON COLUMN "TAKEMEAL"."ALL_FOOD"."CLASS_CODE" IS '��ǰ�ڵ�';
   COMMENT ON COLUMN "TAKEMEAL"."ALL_FOOD"."FOOD_CODE" IS '����ڵ�';
   COMMENT ON COLUMN "TAKEMEAL"."ALL_FOOD"."FOOD_NAME" IS '����̸�';
   COMMENT ON COLUMN "TAKEMEAL"."ALL_FOOD"."COOL_SYS" IS '��������';
   COMMENT ON COLUMN "TAKEMEAL"."ALL_FOOD"."EXPIRY_DATE" IS '�������';
   COMMENT ON COLUMN "TAKEMEAL"."ALL_FOOD"."FOOD_COUNT" IS '����';
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

   COMMENT ON COLUMN "TAKEMEAL"."FOOD"."CLASS_CODE" IS '��ǰ�ڵ�';
   COMMENT ON COLUMN "TAKEMEAL"."FOOD"."CLASS_NAME" IS '��ǰ�̸�';
   COMMENT ON COLUMN "TAKEMEAL"."FOOD"."TABLE_CODE" IS '���̺��з�';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "TAKEMEAL"."MEMBER" 
   (	"NO" NUMBER, 
	"USERID" VARCHAR2(200 BYTE), 
	"PASSWORD" VARCHAR2(200 BYTE), 
	"USERNAME" VARCHAR2(100 BYTE), 
	"TYPE" NUMBER, 
	"PHONE" VARCHAR2(150 BYTE), 
	"BLOG" VARCHAR2(250 BYTE), 
	"REG_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into TAKEMEAL.ALL_FOOD
SET DEFINE OFF;
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'ME',101,'�ҵ��','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'ME',102,'�ҾȽ�','�õ�',null,4);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'ME',103,'�Ұ���','����',null,4);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'ME',201,'����','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'ME',202,'���','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'ME',203,'��������','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'ME',301,'���Ѹ���','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'ME',302,'�߰�����','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'ME',303,'�߹�','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'ME',304,'�߰���','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',101,'���','�ǿ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',102,'���','�ǿ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',103,'����','�ǿ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',201,'������','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',202,'������','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',203,'������','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',204,'�ϵ���','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',301,'�а���','�ǿ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',302,'�Ұ���','�ǿ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',303,'Ƣ�谡��','�ǿ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',304,'������','�ǿ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',401,'�Ļ�','�ǿ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',402,'�ٰ�Ʈ��','�ǿ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',403,'���̱�','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',501,'������','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'CR',502,'�����̶�','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'EG',101,'���','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'EG',102,'���߸���','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'EG',103,'������','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'FS',101,'�����','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'FS',102,'����','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'FS',103,'��ġ','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'FS',104,'��ġ','����',null,2);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'FS',201,'������','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'FS',202,'�������','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'FS',203,'����','�õ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'FS',301,'�����̿�','�ǿ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'FS',302,'�����ٽø�','�ǿ�',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'MK',101,'����','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'MK',102,'���Ʈ','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'MK',201,'ü��ġ��','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'MK',202,'����Ÿġ��','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'VT',101,'�ɻ���','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'VT',102,'������','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'VT',103,'����','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'VT',104,'�����','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'VT',105,'����','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'VT',106,'����','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'VT',107,'���','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'VT',108,'����','����',null,0);
Insert into TAKEMEAL.ALL_FOOD (NO,CLASS_CODE,FOOD_CODE,FOOD_NAME,COOL_SYS,EXPIRY_DATE,FOOD_COUNT) values (1,'VT',109,'����','����',null,0);
--------------------------------------------------------
--  Constraints for Table ALL_FOOD
--------------------------------------------------------

  ALTER TABLE "TAKEMEAL"."ALL_FOOD" MODIFY ("FOOD_COUNT" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."ALL_FOOD" MODIFY ("FOOD_CODE" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."ALL_FOOD" MODIFY ("COOL_SYS" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."ALL_FOOD" MODIFY ("FOOD_NAME" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."ALL_FOOD" MODIFY ("CLASS_CODE" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."ALL_FOOD" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ALL_FOOD
--------------------------------------------------------

  ALTER TABLE "TAKEMEAL"."ALL_FOOD" ADD CONSTRAINT "ALL_FOOD_FK1" FOREIGN KEY ("CLASS_CODE")
	  REFERENCES "TAKEMEAL"."FOOD" ("CLASS_CODE") ENABLE;
  ALTER TABLE "TAKEMEAL"."ALL_FOOD" ADD CONSTRAINT "ALL_FOOD_FK2" FOREIGN KEY ("NO")
	  REFERENCES "TAKEMEAL"."MEMBER" ("NO") ENABLE;