# utl_check_if_a_file_is_empty
Is the file empty? Global macro variable set to 1 if file is empty.
    Is the file empty?

    INPUT
    =====

      Create an empty file

      x "type nul >>d:/txt/touch.txt";

      OR

      data _null_;
          call system("type nul >> d:/txt/touch.txt");
      run;quit;

    PROCESS
    =======

      Paul Dorfman?

       data _null_ ;

        infile "d:/txt/touch.txt" end = empty ;
        call symputx("empty",put(empty,1.)); /* 1 if empty */

       run;

       %put %sysfunc(ifc(&empty,FILE IS EMPTY,FILE IS NOT EMPTY));;

    OUTPUT
    ======

       FILE IS EMPTY
