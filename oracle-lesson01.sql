SQL> select round(to_date('25-12��-12'),'month') from dual;

ROUND(TO_DATE(                                                                  
--------------                                                                  
01-1�� -13                                                                      

SQL> select round(to_date('25-12��-12'),'year') from dual;

ROUND(TO_DATE(                                                                  
--------------                                                                  
01-1�� -13                                                                      

SQL> select ename,hiredate from emp;

ENAME                HIREDATE                                                   
-------------------- --------------                                             
SMITH                17-12��-80                                                 
ALLEN                20-2�� -81                                                 
WARD                 22-2�� -81                                                 
JONES                02-4�� -81                                                 
MARTIN               28-9�� -81                                                 
BLAKE                01-5�� -81                                                 
CLARK                09-6�� -81                                                 
SCOTT                13-7�� -87                                                 
KING                 17-11��-81                                                 
TURNER               08-9�� -81                                                 
ADAMS                13-7�� -87                                                 
JAMES                03-12��-81                                                 
FORD                 03-12��-81                                                 
MILLER               23-1�� -82                                                 
������               16-10��-18                                                 

��ѡ��15�С�

SQL> spool off;
