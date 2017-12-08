Is the file empty

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

