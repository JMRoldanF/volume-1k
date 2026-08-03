      ******************************************************************
      * COPYBOOK ZKEN0002 (record)                                     *
      ******************************************************************
               03 ZKEN0002-REC.
                  05 ENDO-STATUS-CODE      PIC X(20).
                  05 ENDO-MAKE             PIC S9(7)V99 COMP-3.
                  05 ENDO-REG-NUMBER       PIC X(20).
                  05 ENDO-MODEL            PIC 9(8).
                  05 ENDO-BEDROOMS         PIC X(10).
                  05 ENDO-SUM-ASSURED      PIC X(10).
                  05 ENDO-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 ENDO-HOUSE-TYPE       PIC 9(8).
                  05 ENDO-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 ENDO-MANAGED-FUND     PIC X(20).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
