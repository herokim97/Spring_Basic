-- SQL 임시 코드

-- 1. 테이블 생성하기
--   /*1) 일정 저장 테이블(SCHEDULES) 
   CREATE TABLE SCHDEULS (
      DATE_ID VARCHAR2 NOT NULL AUTO_INCREMENT,
      USER_ID VARCAHR2(50) NOT NULL,
      USER_PW VARCHAR2(100) NOT NULL,
      TITLE VARCHAR2(50) NOT NULL,
      CONTENT VARCHAR2(200),
      MODIFIY_DATE DATE DEFUALT CURRENT_TIMESTAMP,
      SCHDEUL_DATE DATE,
      CREATE_DATE TIMESTAMP DEFUALT CURRENT_TIMESTAMP,
      PRIMARY KEY (DATE_ID),
      FOREIGN KEY(USER_ID) REFERENCES USER_INFO(USER_ID)
    );
--   2) 사용자 정보 테이블(USER_INFO)
     CREATE TABLE USER_INFO (
       USER_ID VARCHAR2(50) NOT NULL,
       USER_PW VARCHAR2(100) NOT NULL,
       CREATE_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
       USER_EMAIL VARCHAR2(100) NOT NULL,
       PRIMARY KEY (USER_ID)
     );

-- 2. 일정 생성하기
  INSERT INTO SCHDEULES(date_id, user_id, user_pw, title, content, modifiy_date, schdeul_date, create_date)
  VALUES(auto_increment, "kim97", "asdf1234", "Study", "Study and Focuse", CURRENT_TIMESTAMP, "2024-11-11", CURRENT_TIMESTAMP);

-- 3. 전체 일정 조회하기
   SELECT title, modifiy_date FROM SCHDEULES order by modifiy_date desc;

-- 4. 선택 일정 조회하기
   SELECT title ='Study' FROM SCHDEULES;

-- 5. 선택 일정 수정하기
   UPDATE SCHDEULES
   SET content ="Meeting"
   WHERE content ="Study and Focuse";

-- 7. 선택 일정 삭제하기
   DELETE FROM SCHDEULES
   WHERE title = "Study";
   
     