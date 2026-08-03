      ******************************************************************
      * COPYBOOK ZKBI0006 (record)                                     *
      ******************************************************************
               03 ZKBI0006-REC.
                  05 BILL-AGENT-CODE       PIC 9(8).
                  05 BILL-POSTCODE         PIC S9(4) COMP.
                  05 BILL-STATUS-CODE      PIC S9(4) COMP.
                  05 BILL-PREMIUM          PIC X(10).
                  05 BILL-MANAGED-FUND     PIC S9(4) COMP.
                  05 BILL-TAX-BAND         PIC 9(8).
                  05 BILL-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 BILL-MODEL            PIC S9(7)V99 COMP-3.
                  05 BILL-EQUITIES         PIC X(10).
                  05 BILL-BROKER-ID        PIC 9(8).
                  05 BILL-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
