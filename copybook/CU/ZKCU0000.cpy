      ******************************************************************
      * COPYBOOK ZKCU0000 (record)                                     *
      ******************************************************************
               03 ZKCU0000-REC.
                  05 CUST-REG-NUMBER       PIC X(20).
                  05 CUST-ROOF-TYPE        PIC S9(4) COMP.
                  05 CUST-EXCESS           PIC S9(4) COMP.
                  05 CUST-BROKER-ID        PIC 9(8).
                  05 CUST-VALUE            PIC 9(8).
                  05 CUST-BEDROOMS         PIC S9(4) COMP.
                  05 CUST-EQUITIES         PIC X(10).
                  05 CUST-MANAGED-FUND     PIC S9(4) COMP.
                  05 CUST-WITH-PROFITS     PIC 9(8).
                  05 CUST-TAX-BAND         PIC X(10).
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
