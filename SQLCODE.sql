EXCEPTION
   WHEN OTHERS THEN
      raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);
END;



EXCEPTION
   WHEN OTHERS THEN
      err_code := SQLCODE;
      err_msg := SUBSTR(SQLERRM, 1, 200);

      INSERT INTO audit_table (error_number, error_message)
      VALUES (err_code, err_msg);
END;