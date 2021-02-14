SELECT DISTINCT FIRST_VALUE(salary)
 OVER (ORDER BY salary DESC
       RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
       AS "HIGHEST"
FROM employees;


/*
EMPLOYEE_ID  LAST_NAME  FIRST_NAME  SALARY  DEPT_ID
-----------  ---------  ----------  ------  -------
       1000  Jackson    Joe         2000    10
       2000  Smith      Jane        3500    10
       3000  Ferguson   Samantha    1900    10
       4000  Reynolds   Allen       4000    20
       5000  Anderson   Paige       3250    20
       6000  Johnson    Derek       2750    20
       7000  Nelson     Sarah       5000    30
       8000  Burke      Russell     1500    30


HIGHEST
-------
   5000
   
	   
*/