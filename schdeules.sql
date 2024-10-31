-- SQL 임시 코드

-- 1. 테이블 생성하기
--   /*1) 일정 저장 테이블(SCHEDULES) 
   CREATE TABLE SCHDEULS (
      id BIGINT NOT NULL AUTO_INCREMENT,
      user_info_id BIGINT NOT NULL,
      user_pw VARCHAR2(100) NOT NULL,
      title VARCHAR2(50) NOT NULL,
      content VARCHAR2(200),
      modified_at DATE DEFUALT CURRENT_TIMESTAMP,
      schdeul_date DATE,
      created_at TIMESTAMP DEFUALT CURRENT_TIMESTAMP,
      PRIMARY KEY (id),
      FOREIGN KEY(user_user_id) REFERENCES USER_INFO(id)
    );
--   2) 사용자 정보 테이블(USER_INFO)
     CREATE TABLE USER_INFO (
       id BIGINT NOT NULL AUTO_INCREMENT,
       user_pw VARCHAR2(100) NOT NULL,
       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
       user_email VARCHAR2(100) NOT NULL,
       PRIMARY KEY (id)
     );

-- 2. 일정 생성하기
  INSERT INTO SCHDEULES(user_info_id, user_pw, title, content, modified_at, schdeul_date, created_at)
  VALUES("kim97", "asdf1234", "Study", "Study and Focuse", CURRENT_TIMESTAMP, "2024-11-11", CURRENT_TIMESTAMP);

-- 3. 전체 일정 조회하기
   SELECT title, modified_at FROM SCHDEULES order by modified_at desc;

-- 4. 선택 일정 조회하기
   SELECT * FROM SCHDEULES WHERE id = 1;

-- 5. 선택 일정 수정하기
   UPDATE SCHDEULES
   SET content ="Meeting"
   WHERE id = 1;

-- 7. 선택 일정 삭제하기
   DELETE FROM SCHDEULES
   WHERE id = 1;
   
     