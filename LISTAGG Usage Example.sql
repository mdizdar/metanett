SELECT   manager.ename manager,
         LISTAGG(suboridinates.ename,',') WITHIN GROUP (order by suboridinates.ename) suboridinates_list
    FROM emp suboridinates, emp manager
   WHERE manager.empno = suboridinates.mgr
   GROUP BY  manager.ename
ORDER BY manager.ename;