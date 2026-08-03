      ******************************************************************
      * COPYBOOK ZKAG0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKAG0007-REC.
                  05 AGEN-MAKE             PIC S9(4) COMP.
                  05 AGEN-BEDROOMS         PIC X(10).
                  05 AGEN-STATUS-CODE      PIC X(20).
                  05 AGEN-CC-RATING        PIC X(20).
                  05 AGEN-REG-NUMBER       PIC X(10).
                  05 AGEN-COLOUR           PIC X(10).
                  05 AGEN-TERM             PIC S9(4) COMP.
                  05 AGEN-WITH-PROFITS     PIC X(20).
                  05 AGEN-VALUE            PIC X(10).
                  05 AGEN-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
