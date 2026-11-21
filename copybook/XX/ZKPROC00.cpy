      ******************************************************************
      * COPYBOOK ZKPROC00 (shared procedure)                           *
      ******************************************************************
       ZKPROC-MAIN.
           PERFORM ZKPROC-AUDIT.
           PERFORM ZKPROC-TRACE.
           PERFORM ZKPROC-CHECK.
       ZKPROC-AUDIT.
           DISPLAY 'AUDIT'.
       ZKPROC-TRACE.
           DISPLAY 'TRACE'.
       ZKPROC-CHECK.
           DISPLAY 'CHECK'.
