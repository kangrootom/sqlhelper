--spool 路径将sql语句和执行结果输出到路径中
--笔试题1：找到员工表中工资最高的前三名
SQL> select rownum "工资排名",ename,sal from (select * from emp order by sal desc) sub where rownum <=3;

  工资排名 ENAME                       SAL                                      
---------- -------------------- ----------                                      
         1 KING                       5000                                      
         2 SCOTT                      3000                                      
         3 FORD                       3000                                      

已用时间:  00: 00: 00.01
SQL> desc emp;
 名称                                      是否为空? 类型
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
      7369 SMITH                CLERK                    7902 17-12月-80        
       800                    20                                                
                                                                                
      7499 ALLEN                SALESMAN                 7698 20-2月 -81        
      1600        300         30                                                
                                                                                
      7521 WARD                 SALESMAN                 7698 22-2月 -81        
      1250        500         30                                                
                                                                                
      7566 JONES                MANAGER                  7839 02-4月 -81        
      2975                    20                                                
                                                                                
      7654 MARTIN               SALESMAN                 7698 28-9月 -81        
      1250       1400         30                                                
                                                                                
      7698 BLAKE                MANAGER                  7839 01-5月 -81        
      2850                    30                                                
                                                                                
      7782 CLARK                MANAGER                  7839 09-6月 -81        
      2450                    10                                                
                                                                                
      7788 SCOTT                ANALYST                  7566 13-7月 -87        
      3000                    20                                                
                                                                                
      7839 KING                 PRESIDENT                     17-11月-81        
      5000                    10                                                
                                                                                
      7844 TURNER               SALESMAN                 7698 08-9月 -81        
      1500          0         30                                                
                                                                                
      7876 ADAMS                CLERK                    7788 13-7月 -87        
      1100                    20                                                
                                                                                
      7900 JAMES                CLERK                    7698 03-12月-81        
       950                    30                                                
                                                                                
      7902 FORD                 ANALYST                  7566 03-12月-81        
      3000                    20                                                
                                                                                
      7934 MILLER               CLERK                    7782 23-1月 -82        
      1300                    10                                                
                                                                                

已选择14行。

已用时间:  00: 00: 00.08

--笔试题2：找到员工表中员工薪水大于他所在本部门平均薪水的员工
SQL> select emp.empno,emp.ename,emp.sal,round(avgsal,0) from emp join (select deptno,avg(sal) avgsal from emp group by deptno) sub on emp.deptno = sub.deptno and emp.sal > sub.avgsal;

     EMPNO ENAME                       SAL ROUND(AVGSAL,0)                      
---------- -------------------- ---------- ---------------                      
      7499 ALLEN                      1600            1567                      
      7566 JONES                      2975            2175                      
      7698 BLAKE                      2850            1567                      
      7788 SCOTT                      3000            2175                      
      7839 KING                       5000            2917                      
      7902 FORD                       3000            2175                      

已选择6行。

已用时间:  00: 00: 00.02
SQL> select emp.empno,emp.ename,emp.sal,avgsal from emp join (select deptno,avg(sal) avgsal from emp group by deptno) sub on emp.deptno = sub.deptno and emp.sal > sub.avgsal;

     EMPNO ENAME                       SAL     AVGSAL                           
---------- -------------------- ---------- ----------                           
      7499 ALLEN                      1600 1566.66667                           
      7566 JONES                      2975       2175                           
      7698 BLAKE                      2850 1566.66667                           
      7788 SCOTT                      3000       2175                           
      7839 KING                       5000 2916.66667                           
      7902 FORD                       3000       2175                           

已选择6行。

已用时间:  00: 00: 00.01
SQL> desc empinfo;
 名称                                      是否为空? 类型
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

已选择8行。

已用时间:  00: 00: 00.02

/*
笔试题3：有一个员工表empinfo结构如下
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

      假如该表有大约1000万条记录，写一句最高效的SQL语句，计算以下4种人中每种员工的数量 
      第1种人：fsalary>9999 and fage>35
      第2种人：fsalary>9999 and fage<35
      第3种人：fsalary<9999 and fage>35
      第4种人：fsalary<9999 and fage<35
     
      提示：只用一条SQL搞定
*/
SQL> select sum(case when fage>35 and fsalary > 9999 then 1 else 0 end ) "第一种人",sum(case when fage>35 and fsalary < 9999 then 1 else 0 end ) "第二种人",sum(case when fage<35 and fsalary > 9999 then 1 else 0 end ) "第三种人",sum(case when fage<35 and fsalary < 9999 then 1 else 0 end ) "第四种人"from empinfo;

  第一种人   第二种人   第三种人   第四种人                                     
---------- ---------- ---------- ----------                                     
         2          0          2          3                                     

已用时间:  00: 00: 00.01
SQL> spool off;
