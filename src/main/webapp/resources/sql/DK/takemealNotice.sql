--------------------------------------------------------
--  ������ ������ - �����-6��-14-2018   
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
Insert into TAKEMEAL.NOTICE (NO,USERID,SUBJECT,CONTENTS,HIT,REG_DATE) values (1,'admin','Ȩ������ ����!','�ȳ��ϼ���!
ì�ܸԾ�� �������Դϴ�.<br><br>

ì�ܸԾ�䰡 2018�� 6�� 20�Ϻη� ���ķ�Ī�� �Ͽ����ϴ�.<br>
����� �丮���� �����ǵ��� ������ �Բ� ������ ��ǰ������<br>
���� �׸��� ��Ằ, �������� �پ��� �������� �����Ǹ�<br>
�˻��� �� �ֽ��ϴ�.<br><br>

���е��� �� ���ְ� �ǰ��� ���� ���� ����ϰڽ��ϴ�.<br><br>

�����մϴ�.',1562,to_date('18/06/20','RR/MM/DD'));
Insert into TAKEMEAL.NOTICE (NO,USERID,SUBJECT,CONTENTS,HIT,REG_DATE) values (2,'admin','�丮��ΰ� ��ø���!','�ȳ��ϼ���!<br>
ì�ܸԾ�� �������Դϴ�.<br><br>

���� ì�ܸԾ�信���� ���� ���� ���������� ����<br>
��ΰ� �� SNS ���÷�𼭵��� �����մϴ�.<br><br>

�پ��� ������ ì�ܸԾ��� �Բ� ���� ����ڵ鿡�� �����Ͽ�<br>
���� Win-Win �� �� �ִ� ������ ����� ���� ����ϰڽ��ϴ�.<br><br>

��ΰŵ��� ���� �����ǵ� ����� �� �ְ�<br>
����� ������ �� �ֽ��ϴ�.<br><br>

���� ������Ź�帳�ϴ�.<br>
�����մϴ�.',2652,to_date('18/06/21','RR/MM/DD'));
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
