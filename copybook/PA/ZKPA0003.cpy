      ******************************************************************
      * COPYBOOK ZKPA0003 (record)                                     *
      ******************************************************************
               03 ZKPA0003-REC.
                  05 PAYM-WITH-PROFITS     PIC S9(4) COMP.
                  05 PAYM-POSTCODE         PIC X(10).
                  05 PAYM-MANAGED-FUND     PIC X(10).
                  05 PAYM-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 PAYM-SUM-ASSURED      PIC X(10).
                  05 PAYM-MODEL            PIC 9(8).
                  05 PAYM-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 PAYM-EXCESS           PIC S9(7)V99 COMP-3.
                  05 PAYM-VALUE            PIC X(10).
                  05 PAYM-TAX-BAND         PIC X(20).
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
