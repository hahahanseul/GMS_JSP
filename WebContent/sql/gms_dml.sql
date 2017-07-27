--id,name,pw,ssn,regdate; 
INSERT INTO Member(id,name,pw,ssn,regdate)
VALUES('song2','송무명','1','170215-4821305',SYSDATE)

INSERT INTO Major(major_id,title)
VALUES('computer', '컴공');

INSERT INTO Subject(subj_id,title)
VALUES('javascript','자스 ');

INSERT INTO Grade(grade_seq, score, exam_date, subj_id, id)
VALUES (article_seq.nextval, 'hong', '홍길동 안녕', '고동을 청춘의 무엇을 창공에 그들은 그리하였는가?', 0,SYSDATE);

-- id, title, content;
-- article_seq, hitcount;
-- regdate;
INSERT INTO Board(article_seq, id, title, content, hitcount, regdate)
VALUES (article_seq.nextval, 'hong', '홍길동 안녕', '고동을 청춘의 무엇을 창공에 그들은 그리하였는가?', 0,SYSDATE);


SELECT * FROM Member;
SELECT * FROM Member WHERE id = 'hong';
SELECT * FROM Member WHERE name = '홍길동';
SELECT COUNT(*) AS count FROM Member;
SELECT * FROM Board;
SELECT * FROM Subject;

UPDATE Member SET pw = '2' WHERE id = 'hong';
UPDATE Member SET phone='010-1234-4567';
UPDATE Member SET email='';
UPDATE Subject SET major_id='computer';
UPDATE Member SET major_id='computer';
UPDATE Member SET profile='defaultimg.jpg';

DELETE FROM Member WHERE id='hansuru';
DELETE FROM Board WHERE article_seq='1011'




