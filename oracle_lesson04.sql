SQL> declare
  2  	i number;
  3  begin
  4  	for i in 1..10
  5  	loop
  6  	dbms_output.put_line(i);
  7  	end loop;
  8  end;
  9  /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              

PL/SQL 过程已成功完成。

已用时间:  00: 00: 00.02
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

已用时间:  00: 00: 00.07
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

SQL> col empno for 9999;
SQL> col ename for a10;
SQL> col job for a10;
SQL> col mgr for 9999;
SQL> col hiredate for a12;
SQL> col sal for 9999;
SQL> col comm for 9999;
SQL> col deptno for 99;
SQL> col tname for a40;
SQL> set pagesize 80;
SQL> col tname for a40;
SQL> select * from emp;

EMPNO ENAME      JOB          MGR HIREDATE       SAL  COMM DEPTNO               
----- ---------- ---------- ----- ------------ ----- ----- ------               
 7369 SMITH      CLERK       7902 17-12月-80     800           20               
 7499 ALLEN      SALESMAN    7698 20-2月 -81    1600   300     30               
 7521 WARD       SALESMAN    7698 22-2月 -81    1250   500     30               
 7566 JONES      MANAGER     7839 02-4月 -81    2975           20               
 7654 MARTIN     SALESMAN    7698 28-9月 -81    1250  1400     30               
 7698 BLAKE      MANAGER     7839 01-5月 -81    2850           30               
 7782 CLARK      MANAGER     7839 09-6月 -81    2450           10               
 7788 SCOTT      ANALYST     7566 13-7月 -87    3000           20               
 7839 KING       PRESIDENT        17-11月-81    5000           10               
 7844 TURNER     SALESMAN    7698 08-9月 -81    1500     0     30               
 7876 ADAMS      CLERK       7788 13-7月 -87    1100           20               
 7900 JAMES      CLERK       7698 03-12月-81     950           30               
 7902 FORD       ANALYST     7566 03-12月-81    3000           20               
 7934 MILLER     CLERK       7782 23-1月 -82    1300           10               

已选择14行。

已用时间:  00: 00: 00.03
SQL> select * from emp_bak;

未选定行

已用时间:  00: 00: 00.00
SQL> insert into emp_bak select * from emp;

已创建 14 行。

已用时间:  00: 00: 00.01
SQL> select * from emp_bak;

EMPNO ENAME      JOB          MGR HIREDATE       SAL  COMM DEPTNO               
----- ---------- ---------- ----- ------------ ----- ----- ------               
 7369 SMITH      CLERK       7902 17-12月-80     800           20               
 7499 ALLEN      SALESMAN    7698 20-2月 -81    1600   300     30               
 7521 WARD       SALESMAN    7698 22-2月 -81    1250   500     30               
 7566 JONES      MANAGER     7839 02-4月 -81    2975           20               
 7654 MARTIN     SALESMAN    7698 28-9月 -81    1250  1400     30               
 7698 BLAKE      MANAGER     7839 01-5月 -81    2850           30               
 7782 CLARK      MANAGER     7839 09-6月 -81    2450           10               
 7788 SCOTT      ANALYST     7566 13-7月 -87    3000           20               
 7839 KING       PRESIDENT        17-11月-81    5000           10               
 7844 TURNER     SALESMAN    7698 08-9月 -81    1500     0     30               
 7876 ADAMS      CLERK       7788 13-7月 -87    1100           20               
 7900 JAMES      CLERK       7698 03-12月-81     950           30               
 7902 FORD       ANALYST     7566 03-12月-81    3000           20               
 7934 MILLER     CLERK       7782 23-1月 -82    1300           10               

已选择14行。

已用时间:  00: 00: 00.04
SQL> commit;

提交完成。

已用时间:  00: 00: 00.00
SQL> declare
  2  	cursor cemp is select ename,sal from emp;
  3  	pename emp.ename%type;
  4  	psal emp.sal%type;
  5  begin
  6  	open cemp;
  7  	loop
  8  		fetch cemp into pename,psal;
  9  		exit when cemp%notfound;
 10  		dbms_output.put_line(pename||'---'||psal);
 11  	end loop;
 12  	close cemp;
 13  end;
 14  /
SMITH---800                                                                     
ALLEN---1600                                                                    
WARD---1250                                                                     
JONES---2975                                                                    
MARTIN---1250                                                                   
BLAKE---2850                                                                    
CLARK---2450                                                                    
SCOTT---3000                                                                    
KING---5000                                                                     
TURNER---1500                                                                   
ADAMS---1100                                                                    
JAMES---950                                                                     
FORD---3000                                                                     
MILLER---1300                                                                   

PL/SQL 过程已成功完成。

已用时间:  00: 00: 00.04
SQL> declare
  2  	cursor cemp(cdeptno emp.deptno%type) is select ename,sal from emp where deptno=cdeptno;
  3  	pename emp.ename%type;
  4  	psal emp.sal%type;
  5  begin
  6  	open cemp(20);
  7  	loop
  8  		fetch cemp into pename,psal;
  9  		exit when cemp%notfound;
 10  		dbms_output.put_line(pename||'----'||psal);
 11  	end loop;
 12  	close cemp;
 13  end;
 14  /
SMITH----800                                                                    
JONES----2975                                                                   
SCOTT----3000                                                                   
ADAMS----1100                                                                   
FORD----3000                                                                    

PL/SQL 过程已成功完成。

已用时间:  00: 00: 00.02
SQL> declare
  2  	cursor cemp(cdeptno emp.deptno%type) is select ename,sal from emp where deptno=cdeptno;
  3  	pename emp.ename%type;
  4  	psal emp.sal%type;
  5  begin
  6  	open cemp(&deptno);
  7  	loop
  8  		fetch cemp into pename,psal;
  9  		exit when cemp%notfound;
 10  		dbms_output.put_line(pename||'----'||psal);
 11  	end loop;
 12  	close cemp;
 13  end;
 14  /
输入 deptno 的值:  40
原值    6: 	open cemp(&deptno);
新值    6: 	open cemp(40);

PL/SQL 过程已成功完成。

已用时间:  00: 00: 00.01
SQL> /
输入 deptno 的值:  30
原值    6: 	open cemp(&deptno);
新值    6: 	open cemp(30);
ALLEN----1600                                                                   
WARD----1250                                                                    
MARTIN----1250                                                                  
BLAKE----2850                                                                   
TURNER----1500                                                                  
JAMES----950                                                                    

PL/SQL 过程已成功完成。

已用时间:  00: 00: 00.01
SQL> /
输入 deptno 的值:  20
原值    6: 	open cemp(&deptno);
新值    6: 	open cemp(20);
SMITH----800                                                                    
JONES----2975                                                                   
SCOTT----3000                                                                   
ADAMS----1100                                                                   
FORD----3000                                                                    

PL/SQL 过程已成功完成。

已用时间:  00: 00: 00.01
SQL> /
输入 deptno 的值:  10
原值    6: 	open cemp(&deptno);
新值    6: 	open cemp(10);
CLARK----2450                                                                   
KING----5000                                                                    
MILLER----1300                                                                  

PL/SQL 过程已成功完成。

已用时间:  00: 00: 00.01
SQL> declare
  2   result number;
  3  begin
  4  	result := 1 / 0;
  5  	dbms_output.put_line(result);
  6  exception
  7  	when zero_divide then
  8  	dbms_output.put_line('除数不能为0');
  9  end;
 10  /
除数不能为0                                                                     

PL/SQL 过程已成功完成。

已用时间:  00: 00: 00.00
SQL> declare
  2  	pename emp.ename%type;
  3  begin
  4  	select ename into pename from emp where deptno = 100;
  5  	dbms_output.put_line(pename);
  6  exception
  7  	when NO_DATA_FOUND then
  8  		dbms_output.put_line('查无此员工');
  9  		insert into emp(empno,ename) values(1111,'ERROR');
 10  end;
 11  /
查无此员工                                                                      

PL/SQL 过程已成功完成。

已用时间:  00: 00: 00.01
SQL> spool off;
