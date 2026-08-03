      ******************************************************************
      * COPYBOOK ZKCL0011 (record)                                     *
      ******************************************************************
               03 ZKCL0011-REC.
                  05 CLAI-PREMIUM          PIC X(10).
                  05 CLAI-TERM             PIC S9(4) COMP.
                  05 CLAI-CC-RATING        PIC X(10).
                  05 CLAI-COLOUR           PIC 9(8).
                  05 CLAI-HOUSE-TYPE       PIC S9(4) COMP.
                  05 CLAI-MAKE             PIC X(20).
                  05 CLAI-VALUE            PIC X(10).
                  05 CLAI-MODEL            PIC 9(8).
                  05 CLAI-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 CLAI-BEDROOMS         PIC X(10).
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
