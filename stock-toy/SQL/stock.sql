CREATE TABLE stock_vi(
stk_id NUMBER, --��ȣ
stk_cd varchar2(50), --�����ڵ� 
stk_nm varchar2(50),  --�����
stk_pri varchar2(50), --����
stk_inc varchar2(50), --��·�
stk_act varchar2(50), --�ߵ��ð� 
stk_rel varchar2(50), -- �����ð�
stk_daye Date default sysdate -- �����͵�Ͻð�
-- CONSTRAINT pk_stkid PRIMARY KEY(stk_id)
);
--alter table stock_vi add stk_daye Date default sysdate
alter table stock_vi drop primary key
commit
drop table stock_vi
commit;
--ALTER TABLE stock_vi MODIFY stk_rel VARCHAR2(50);
--ALTER TABLE stock_vi MODIFY stk_act VARCHAR2(50);
--ALTER TABLE stock_vi DROP CONSTRAINT pk_stkid;
--alter table stock_vi add primary key(stk_cd);


    -- if 0 �̶�� ���  1�̶��(������ ����) �ٽ� �� ,
	select count(*) from stock_vi where stk_id = '5' and to_date(stk_daye,'YY/MM/DD') =(SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') FROM DUAL)
	
    --  �ð����� ���ؼ� 1�̶��(�������ְ� rel :00��) return / 0�̶�� ������Ʈ 
	select count(*) from stock_vi where stk_id = '5' and stk_rel='00:00:00' and to_date(stk_daye,'YY/MM/DD') =(SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') FROM DUAL)
	
    
    select count(*) from stock_vi where stk_id = '153' 
    
    select * from stock_vi WHERE (CASE WHEN stk_rel = '00:00:00' THEN stk_rel = '11' else stk_rel='22' end)
    
    select * (case when stk_rel = '00:00:00' then stk_rel = '11' else stk_rel='22' end) from stock_vi
    
rollback

update stock_vi set stk_rel = '12:12:12' where stk_id = '155'

commit;

create SEQUENCE seq_stock

select * from stock_vi
	
    	INSERT INTO stock_vi (stk_id)
        VALUES (#{stk_id})
    
INSERT INTO stock_vi (stk_id, stk_cd, stk_nm, stk_pri, stk_inc)
VALUES (SEQ_STOCK.nextval,1111,'�����',8000,100);

COMMIT


------- list �۾� -----
--select * from stock_vi order by TO_NUMBER(stk_id)

select * from stock_vi order by stk_id

SELECT SYSDATE FROM DUAL;

select * from stock_vi where to_date(stk_daye,'YY/MM/DD') ='21/03/04' 

select * from stock_vi where to_date(stk_daye,'YY/MM/DD') =(SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') FROM DUAL) order by stk_id desc

select count(*) from stock_vi where stk_id = #{stk_id}

    update stock_vi set stk_rel = '24:24:24' where stk_id = 5 and stk_nm = '�����ǰ2'