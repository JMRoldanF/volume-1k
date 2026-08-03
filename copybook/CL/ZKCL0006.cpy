      ******************************************************************
      * COPYBOOK ZKCL0006 (record)                                     *
      ******************************************************************
               03 ZKCL0006-REC.
                  05 CLAI-PREMIUM          PIC X(10).
                  05 CLAI-REG-NUMBER       PIC S9(4) COMP.
                  05 CLAI-BEDROOMS         PIC 9(8).
                  05 CLAI-SUM-ASSURED      PIC X(20).
                  05 CLAI-WITH-PROFITS     PIC S9(4) COMP.
                  05 CLAI-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 CLAI-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 CLAI-POSTCODE         PIC S9(4) COMP.
                  05 CLAI-NCD-YEARS        PIC X(10).
                  05 CLAI-MAKE             PIC 9(8).
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
