      ******************************************************************
      * COPYBOOK ZKEN0011 (record)                                     *
      ******************************************************************
               03 ZKEN0011-REC.
                  05 ENDO-SUM-ASSURED      PIC S9(4) COMP.
                  05 ENDO-TERM             PIC X(20).
                  05 ENDO-MODEL            PIC S9(7)V99 COMP-3.
                  05 ENDO-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 ENDO-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 ENDO-POSTCODE         PIC 9(8).
                  05 ENDO-VALUE            PIC X(20).
                  05 ENDO-MANAGED-FUND     PIC X(10).
                  05 ENDO-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 ENDO-MAKE             PIC S9(4) COMP.
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
