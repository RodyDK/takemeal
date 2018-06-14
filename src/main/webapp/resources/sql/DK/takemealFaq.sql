--------------------------------------------------------
--  ������ ������ - �����-6��-14-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FAQ
--------------------------------------------------------

  CREATE TABLE "TAKEMEAL"."FAQ" 
   (	"NO" NUMBER(38,0), 
	"SUBJECT" VARCHAR2(300 BYTE), 
	"CONTENTS" VARCHAR2(4000 BYTE), 
	"HIT" NUMBER(38,0), 
	"REG_DATE" DATE, 
	"CATEGORY" NUMBER(38,0), 
	"USERID" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into TAKEMEAL.FAQ
SET DEFINE OFF;
Insert into TAKEMEAL.FAQ (NO,SUBJECT,CONTENTS,HIT,REG_DATE,CATEGORY,USERID) values (1,'���̵�,��й�ȣ�� �н��߾��.','�α��� â���� ���̵�/��й�ȣ ã�⸦ �̿��Ͻø� �˴ϴ�.<br>

���̵�� ��й�ȣ�� ȸ�������� ��ϵ� ���� ���� �Ǵ� ���θ��� �޴��������� ���� ã���� �� �ֽ��ϴ�.<br> 
���̵�� ȸ�������� ��ϵ� �̸��� �޴�����ȣ �Ǵ� �̸����� �Է��Ͻø� ���̵��� �Ϻθ� ���� �� �ֽ��ϴ�.<br>
���̵� ��ü�� ������ �� ���� ���̵��� �Ϻθ� ���� ã�� �Ŀ� �ϴ���  ���̵� ��üȮ�θ� Ŭ���ϼż� �޴���ȭ/�̸���/�������� �� �����ϼż� ������ȣ�� �Է��Ͻø� Ȯ���Ͻ� �� �ֽ��ϴ�.<br>
<br>
��й�ȣ�� ȸ�������� ��ϵ� ���̵� �Է��Ͻ� ��, �޴���ȭ/�̸���/���� ���� �� �����Ͻ� ������� ������ ���� ��й�ȣ�� �缳�� �Ͻ� �� �ֽ��ϴ�.<br>
<br>
��ϵ� ȸ�������� ��� ���Ͻðų� ����� ��쿡�� �ݼ��� 1577-3355�� ���� �ֽø� �ӽ� ��й�ȣ�� �߼� �ص帳�ϴ�.',152,to_date('18/06/06','RR/MM/DD'),1,'admin');
Insert into TAKEMEAL.FAQ (NO,SUBJECT,CONTENTS,HIT,REG_DATE,CATEGORY,USERID) values (2,'�������� ������ �ϰ� �;��.','���Բ��� ���Ͻô� ��� ì�ܸԾ�� ���� ����Ʈ���� ���� ��û�Ͻ� �� �ֽ��ϴ�.',188,to_date('18/06/06','RR/MM/DD'),1,'admin');
Insert into TAKEMEAL.FAQ (NO,SUBJECT,CONTENTS,HIT,REG_DATE,CATEGORY,USERID) values (3,'��ȸ���� �ֹ� �����Ѱ���?','��ȸ�� �ֹ������մϴ�.<br>
<br>
�ٸ�, ��ȸ������ �����Ͻø� ����Ʈ ���� �� ȸ������ ������ ���� �� �����ϴ�.',177,to_date('18/06/06','RR/MM/DD'),2,'admin');
Insert into TAKEMEAL.FAQ (NO,SUBJECT,CONTENTS,HIT,REG_DATE,CATEGORY,USERID) values (4,'��ٱ��� ��ǰ�� �������� �����ǳ���?','��ٱ��� ��ǰ�� ���Բ��� ��ٱ��Ͽ� ��� ��ǰ�� ����/�ֹ��� �Ϸ��Ͻñ� ������ ��� �����Ǹ�, ������ �Ϸ�<br>
�� �� ��ٱ��Ͽ� ��� ��ǰ�� �����˴ϴ�.<br>
��, �ֹ��� �Ϸ����� ������ ��� ��ǰ�� ���Բ��� ���������� ��ٱ��Ͽ� ���� ��¥���� 90�ϰ� �����˴ϴ�.
',243,to_date('18/06/06','RR/MM/DD'),2,'admin');
--------------------------------------------------------
--  DDL for Index FAQ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAKEMEAL"."FAQ_PK" ON "TAKEMEAL"."FAQ" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table FAQ
--------------------------------------------------------

  ALTER TABLE "TAKEMEAL"."FAQ" ADD CONSTRAINT "FAQ_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TAKEMEAL"."FAQ" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."FAQ" MODIFY ("REG_DATE" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."FAQ" MODIFY ("HIT" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."FAQ" MODIFY ("CONTENTS" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."FAQ" MODIFY ("SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "TAKEMEAL"."FAQ" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FAQ
--------------------------------------------------------

  ALTER TABLE "TAKEMEAL"."FAQ" ADD CONSTRAINT "FAQ_FK1" FOREIGN KEY ("USERID")
	  REFERENCES "TAKEMEAL"."MEMBER" ("USERID") ENABLE;
