      ******************************************************************
      * COPYBOOK ZKPROC00 (shared procedure)                           *
      ******************************************************************
       ZKPROC-MAIN.
           PERFORM ZKPROC-AUDIT.
           PERFORM ZKPROC-TRACE.
       ZKPROC-AUDIT.
           DISPLAY 'AUDIT'.
       ZKPROC-TRACE.
           DISPLAY 'TRACE'.
