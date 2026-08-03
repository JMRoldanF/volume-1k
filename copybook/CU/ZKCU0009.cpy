      ******************************************************************
      * COPYBOOK ZKCU0009 (record)                                     *
      ******************************************************************
               03 ZKCU0009-REC.
                  05 CUST-BROKER-ID        PIC 9(8).
                  05 CUST-SUM-ASSURED      PIC X(10).
                  05 CUST-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 CUST-TAX-BAND         PIC X(20).
                  05 CUST-MAKE             PIC S9(7)V99 COMP-3.
                  05 CUST-MANAGED-FUND     PIC X(20).
                  05 CUST-COLOUR           PIC S9(4) COMP.
                  05 CUST-NCD-YEARS        PIC X(10).
                  05 CUST-PREMIUM          PIC X(20).
                  05 CUST-STATUS-CODE      PIC X(20).
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
