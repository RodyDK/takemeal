--------------------------------------------------------
--  파일이 생성됨 - 목요일-6월-14-2018   
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
Insert into TAKEMEAL.FAQ (NO,SUBJECT,CONTENTS,HIT,REG_DATE,CATEGORY,USERID) values (1,'아이디,비밀번호를 분실했어요.','로그인 창에서 아이디/비밀번호 찾기를 이용하시면 됩니다.<br>

아이디와 비밀번호는 회원정보에 등록된 정보 인증 또는 본인명의 휴대폰인증을 통해 찾으실 수 있습니다.<br> 
아이디는 회원정보에 등록된 이름과 휴대폰번호 또는 이메일을 입력하시면 아이디의 일부를 보실 수 있습니다.<br>
아이디 전체를 보고자 할 때는 아이디의 일부를 먼저 찾은 후에 하단의  아이디 전체확인를 클릭하셔서 휴대전화/이메일/본인인증 중 선택하셔서 인증번호를 입력하시면 확인하실 수 있습니다.<br>
<br>
비밀번호는 회원정보에 등록된 아이디를 입력하신 후, 휴대전화/이메일/본인 인증 중 선택하신 방법으로 인증을 거쳐 비밀번호를 재설정 하실 수 있습니다.<br>
<br>
등록된 회원정보를 기억 못하시거나 변경된 경우에는 콜센터 1577-3355로 연락 주시면 임시 비밀번호를 발송 해드립니다.',152,to_date('18/06/06','RR/MM/DD'),1,'admin');
Insert into TAKEMEAL.FAQ (NO,SUBJECT,CONTENTS,HIT,REG_DATE,CATEGORY,USERID) values (2,'개인정보 수정을 하고 싶어요.','고객님께서 원하시는 경우 챙겨먹어요 서비스 사이트에서 변경 요청하실 수 있습니다.',188,to_date('18/06/06','RR/MM/DD'),1,'admin');
Insert into TAKEMEAL.FAQ (NO,SUBJECT,CONTENTS,HIT,REG_DATE,CATEGORY,USERID) values (3,'비회원도 주문 가능한가요?','비회원 주문가능합니다.<br>
<br>
다만, 비회원으로 구매하시면 포인트 적립 등 회원만의 혜택을 누릴 수 없습니다.',177,to_date('18/06/06','RR/MM/DD'),2,'admin');
Insert into TAKEMEAL.FAQ (NO,SUBJECT,CONTENTS,HIT,REG_DATE,CATEGORY,USERID) values (4,'장바구니 상품은 언제까지 보관되나요?','장바구니 상품은 고객님께서 장바구니에 담고 상품의 결제/주문을 완료하시기 전까지 계속 보관되며, 결제가 완료<br>
된 후 장바구니에 담긴 상품은 삭제됩니다.<br>
단, 주문을 완료하지 않으신 경우 상품은 고객님께서 마지막으로 장바구니에 담은 날짜부터 90일간 보관됩니다.
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
