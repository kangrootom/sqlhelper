SQL> select round(to_date('25-12月-12'),'month') from dual;

ROUND(TO_DATE(                                                                  
--------------                                                                  
01-1月 -13                                                                      

SQL> select round(to_date('25-12月-12'),'year') from dual;

ROUND(TO_DATE(                                                                  
--------------                                                                  
01-1月 -13                                                                      

SQL> select ename,hiredate from emp;

ENAME                HIREDATE                                                   
-------------------- --------------                                             
SMITH                17-12月-80                                                 
ALLEN                20-2月 -81                                                 
WARD                 22-2月 -81                                                 
JONES                02-4月 -81                                                 
MARTIN               28-9月 -81                                                 
BLAKE                01-5月 -81                                                 
CLARK                09-6月 -81                                                 
SCOTT                13-7月 -87                                                 
KING                 17-11月-81                                                 
TURNER               08-9月 -81                                                 
ADAMS                13-7月 -87                                                 
JAMES                03-12月-81                                                 
FORD                 03-12月-81                                                 
MILLER               23-1月 -82                                                 
范德萨               16-10月-18                                                 

已选择15行。

SQL> spool off;
