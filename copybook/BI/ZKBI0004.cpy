      ******************************************************************
      * COPYBOOK ZKBI0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKBI0004-REC.
                  05 BILL-MANAGED-FUND     PIC X(20).
                  05 BILL-WITH-PROFITS     PIC 9(8).
                  05 BILL-NCD-YEARS        PIC 9(8).
                  05 BILL-REG-NUMBER       PIC 9(8).
                  05 BILL-POSTCODE         PIC 9(8).
                  05 BILL-TERM             PIC 9(8).
                  05 BILL-VALUE            PIC S9(4) COMP.
                  05 BILL-HOUSE-TYPE       PIC X(20).
                  05 BILL-PREMIUM          PIC X(10).
                  05 BILL-MAKE             PIC S9(4) COMP.
                  05 BILL-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
