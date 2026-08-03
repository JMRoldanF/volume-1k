      ******************************************************************
      * COPYBOOK ZKCL0002 (record)                                     *
      ******************************************************************
               03 ZKCL0002-REC.
                  05 CLAI-REG-NUMBER       PIC S9(4) COMP.
                  05 CLAI-MAKE             PIC S9(7)V99 COMP-3.
                  05 CLAI-MANAGED-FUND     PIC S9(4) COMP.
                  05 CLAI-TAX-BAND         PIC 9(8).
                  05 CLAI-POSTCODE         PIC S9(4) COMP.
                  05 CLAI-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 CLAI-WITH-PROFITS     PIC 9(8).
                  05 CLAI-CC-RATING        PIC S9(4) COMP.
                  05 CLAI-MODEL            PIC X(20).
                  05 CLAI-VALUE            PIC X(20).
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
