      ******************************************************************
      * COPYBOOK ZKPA0000 (record)                                     *
      ******************************************************************
               03 ZKPA0000-REC.
                  05 PAYM-BROKER-ID        PIC 9(8).
                  05 PAYM-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 PAYM-PREMIUM          PIC X(10).
                  05 PAYM-MODEL            PIC X(10).
                  05 PAYM-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 PAYM-VALUE            PIC 9(8).
                  05 PAYM-COLOUR           PIC 9(8).
                  05 PAYM-CC-RATING        PIC 9(8).
                  05 PAYM-MANAGED-FUND     PIC 9(8).
                  05 PAYM-WITH-PROFITS     PIC X(20).
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
