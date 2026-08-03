      ******************************************************************
      * COPYBOOK ZKEN0000 (record)                                     *
      ******************************************************************
               03 ZKEN0000-REC.
                  05 ENDO-PREMIUM          PIC 9(8).
                  05 ENDO-VALUE            PIC 9(8).
                  05 ENDO-TAX-BAND         PIC S9(4) COMP.
                  05 ENDO-AGENT-CODE       PIC 9(8).
                  05 ENDO-EQUITIES         PIC S9(4) COMP.
                  05 ENDO-TERM             PIC S9(7)V99 COMP-3.
                  05 ENDO-MANAGED-FUND     PIC X(20).
                  05 ENDO-WITH-PROFITS     PIC 9(8).
                  05 ENDO-REG-NUMBER       PIC S9(4) COMP.
                  05 ENDO-HOUSE-TYPE       PIC X(20).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
