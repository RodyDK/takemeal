--------------------------------------------------------
--  ������ ������ - �����-6��-14-2018   
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
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (1,'����ġ������ũ','������ �ڱ��ϴ� ������ ����� ġ���� ����','1.jpg',10,154,0,123,'blog1',to_date('18/05/23','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (2,'����佺Ʈ','������� ���� Ȳ�ݷ�����! ������ �Ļ��� ����� �ް� �޺�','2.png',30,1186,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (3,'���ں���','����ģ���� ���� ������ ����Ʈ','3.jpg',20,245,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (4,'���� ����','�����߳��ҽ� ����� �������� ���� ��𿡵� ���� ������','4.png',15,345,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (5,'�����ֵ���','���̵��� �����ϴ� ���� �ʼ���! �ǰ������ε� �ְ�!','5.jpg',30,784,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (6,'������������','ȥ���ְ�����, �������÷� ������� �������� �� ��Ҵ�','6.png',60,111,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (7,'�����佺Ʈ','���ŧ�� ���� �����佺Ʈ, ���̵鵵 �����ؿ�','7.jpg',25,203,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (8,'�������','�۴ٰ� �������� ���ö�! ���� ��� of ���','8.jpg',20,511,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (9,'�κ�����','�κα�ġ NO~! �κ����� OK~!','9.jpg',3,347,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (10,'���� ��ä','���߳�ä�� GGġ�� ���� ��ä','10.jpg',5,842,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (11,'�ٴҶ���̽�ũ��','�������� �ս��� �����Դ� ���� ����Ʈ','11.jpg',50,100,0,213,'blog1',to_date('18/05/24','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (12,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (13,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (14,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (15,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (16,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (17,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (18,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (19,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (20,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (21,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (22,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (23,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (24,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (25,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (26,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (27,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (28,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (29,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (30,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (31,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (32,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (33,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (34,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (35,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (36,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (37,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
Insert into TAKEMEAL.RECIPE (NO,SUBJECT,CONTENTS,THUMBNAIL,TIME,FOLLOW,HIT,KCAL,USERID,REG_DATE) values (38,'�����','���Ⱑ ��� �� ���� ���ɟ�','12.png',10,387,0,213,'blog1',to_date('18/06/25','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index RECIPE_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAKEMEAL"."RECIPE_INDEX1" ON "TAKEMEAL"."RECIPE" ("NO")
--------------------------------------------------------
--  Constraints for Table RECIPE
--------------------------------------------------------

  ALTER TABLE "TAKEMEAL"."RECIPE" MODIFY ("NO" NOT NULL ENABLE)
