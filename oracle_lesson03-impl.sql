--spool ·����sql����ִ�н�������·����
--������1���ҵ�Ա�����й�����ߵ�ǰ����
SQL> select rownum "��������",ename,sal from (select * from emp order by sal desc) sub where rownum <=3;

  �������� ENAME                       SAL                                      
---------- -------------------- ----------                                      
         1 KING                       5000                                      
         2 SCOTT                      3000                                      
         3 FORD                       3000                                      

����ʱ��:  00: 00: 00.01
SQL> desc emp;
 ����                                      �Ƿ�Ϊ��? ����
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MGR                                                NUMBER(4)
 HIREDATE                                           DATE
 SAL                                                NUMBER(7,2)
 COMM                                               NUMBER(7,2)
 DEPTNO                                             NUMBER(2)

SQL> select * from emp;

     EMPNO ENAME                JOB                       MGR HIREDATE          
---------- -------------------- ------------------ ---------- --------------    
       SAL       COMM     DEPTNO                                                
---------- ---------- ----------                                                
      7369 SMITH                CLERK                    7902 17-12��-80        
       800                    20                                                
                                                                                
      7499 ALLEN                SALESMAN                 7698 20-2�� -81        
      1600        300         30                                                
                                                                                
      7521 WARD                 SALESMAN                 7698 22-2�� -81        
      1250        500         30                                                
                                                                                
      7566 JONES                MANAGER                  7839 02-4�� -81        
      2975                    20                                                
                                                                                
      7654 MARTIN               SALESMAN                 7698 28-9�� -81        
      1250       1400         30                                                
                                                                                
      7698 BLAKE                MANAGER                  7839 01-5�� -81        
      2850                    30                                                
                                                                                
      7782 CLARK                MANAGER                  7839 09-6�� -81        
      2450                    10                                                
                                                                                
      7788 SCOTT                ANALYST                  7566 13-7�� -87        
      3000                    20                                                
                                                                                
      7839 KING                 PRESIDENT                     17-11��-81        
      5000                    10                                                
                                                                                
      7844 TURNER               SALESMAN                 7698 08-9�� -81        
      1500          0         30                                                
                                                                                
      7876 ADAMS                CLERK                    7788 13-7�� -87        
      1100                    20                                                
                                                                                
      7900 JAMES                CLERK                    7698 03-12��-81        
       950                    30                                                
                                                                                
      7902 FORD                 ANALYST                  7566 03-12��-81        
      3000                    20                                                
                                                                                
      7934 MILLER               CLERK                    7782 23-1�� -82        
      1300                    10                                                
                                                                                

��ѡ��14�С�

����ʱ��:  00: 00: 00.08

--������2���ҵ�Ա������Ա��нˮ���������ڱ�����ƽ��нˮ��Ա��
SQL> select emp.empno,emp.ename,emp.sal,round(avgsal,0) from emp join (select deptno,avg(sal) avgsal from emp group by deptno) sub on emp.deptno = sub.deptno and emp.sal > sub.avgsal;

     EMPNO ENAME                       SAL ROUND(AVGSAL,0)                      
---------- -------------------- ---------- ---------------                      
      7499 ALLEN                      1600            1567                      
      7566 JONES                      2975            2175                      
      7698 BLAKE                      2850            1567                      
      7788 SCOTT                      3000            2175                      
      7839 KING                       5000            2917                      
      7902 FORD                       3000            2175                      

��ѡ��6�С�

����ʱ��:  00: 00: 00.02
SQL> select emp.empno,emp.ename,emp.sal,avgsal from emp join (select deptno,avg(sal) avgsal from emp group by deptno) sub on emp.deptno = sub.deptno and emp.sal > sub.avgsal;

     EMPNO ENAME                       SAL     AVGSAL                           
---------- -------------------- ---------- ----------                           
      7499 ALLEN                      1600 1566.66667                           
      7566 JONES                      2975       2175                           
      7698 BLAKE                      2850 1566.66667                           
      7788 SCOTT                      3000       2175                           
      7839 KING                       5000 2916.66667                           
      7902 FORD                       3000       2175                           

��ѡ��6�С�

����ʱ��:  00: 00: 00.01
SQL> desc empinfo;
 ����                                      �Ƿ�Ϊ��? ����
 ----------------------------------------- -------- ----------------------------
 FEMPNO                                    NOT NULL VARCHAR2(10)
 FEMPNAME                                  NOT NULL VARCHAR2(20)
 FAGE                                      NOT NULL NUMBER(2)
 FSALARY                                   NOT NULL NUMBER(10,2)

SQL> select * from empinfo;

FEMPNO               FEMPNAME         FAGE    FSALARY                           
-------------------- ---------- ---------- ----------                           
1                    AA                 30       7000                           
2                    BB                 31       8000                           
3                    CC                 32       9000                           
4                    DD                 33      10000                           
5                    EE                 34      11000                           
6                    FF                 35      12000                           
7                    GG                 36      13000                           
8                    FF                 37      14000                           

��ѡ��8�С�

����ʱ��:  00: 00: 00.02

/*
������3����һ��Ա����empinfo�ṹ����
      create table empinfo(
	fempno	varchar2(10) primary key,
	fempname varchar2(20) not null, 
        fage number(2) not null, 
        fsalary number(10,2) not null
      );
      insert into empinfo(fempno,fempname,fage,fsalary) values('1','AA',30,7000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('2','BB',31,8000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('3','CC',32,9000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('4','DD',33,10000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('5','EE',34,11000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('6','FF',35,12000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('7','GG',36,13000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('8','FF',37,14000);

      ����ñ��д�Լ1000������¼��дһ�����Ч��SQL��䣬��������4������ÿ��Ա�������� 
      ��1���ˣ�fsalary>9999 and fage>35
      ��2���ˣ�fsalary>9999 and fage<35
      ��3���ˣ�fsalary<9999 and fage>35
      ��4���ˣ�fsalary<9999 and fage<35
     
      ��ʾ��ֻ��һ��SQL�㶨
*/
SQL> select sum(case when fage>35 and fsalary > 9999 then 1 else 0 end ) "��һ����",sum(case when fage>35 and fsalary < 9999 then 1 else 0 end ) "�ڶ�����",sum(case when fage<35 and fsalary > 9999 then 1 else 0 end ) "��������",sum(case when fage<35 and fsalary < 9999 then 1 else 0 end ) "��������"from empinfo;

  ��һ����   �ڶ�����   ��������   ��������                                     
---------- ---------- ---------- ----------                                     
         2          0          2          3                                     

����ʱ��:  00: 00: 00.01
SQL> spool off;
