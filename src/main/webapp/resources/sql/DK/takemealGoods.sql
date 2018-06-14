--------------------------------------------------------
--  ������ ������ - �����-6��-14-2018   
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
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('��¡��',3000,1,'�����¡��','�̽��� ��¡� �Ծ��',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/15/800/120581615_0.jpg',1,'���곪��','�ѱ�');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('�����',1990,1,'��������','������ �����',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/95/800/000005495_0.jpg',2,'����','�ѱ�
');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('����
',5990,1,'�ϸ� ���� �߰��','�ż��� �ϸ� �߰��',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/68/800/106974268_0.jpg',3,'(��)�ϸ�','�ѱ�');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('���̹���',1000,1,'���� ū ���̹���','�ż��� ���̹���',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',4,'����','�ѱ�');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('���̹���',1000,1,'���� ū ���̹���','�ż��� ���̹���',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',5,'����','�ѱ�');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('���̹���',1000,1,'���� ū ���̹���','�ż��� ���̹���',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',6,'����','�ѱ�');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('���̹���',1000,1,'���� ū ���̹���','�ż��� ���̹���',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',7,'����','�ѱ�');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('���̹���',1000,1,'���� ū ���̹���','�ż��� ���̹���',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',8,'����','�ѱ�');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('���̹���',1000,1,'���� ū ���̹���','�ż��� ���̹���',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',9,'����','�ѱ�');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('���̹���',1000,1,'���� ū ���̹���','�ż��� ���̹���',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',10,'����','�ѱ�');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('���̹���',1000,1,'���� ū ���̹���','�ż��� ���̹���',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',11,'����','�ѱ�');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('���̹���',1000,1,'���� ū ���̹���','�ż��� ���̹���',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',12,'����','�ѱ�');
Insert into TAKEMEAL.GOODS (NAME,PRICE,QTY,DESCRIPTION,CONTENTS,REG_DATE,THUMBNAIL,NO,COMPANY,COUNTRY) values ('���̹���',1000,1,'���� ū ���̹���','�ż��� ���̹���',to_date('18/06/09','RR/MM/DD'),'http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg',13,'����','�ѱ�');
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
