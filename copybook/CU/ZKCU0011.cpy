      ******************************************************************
      * COPYBOOK ZKCU0011 (record)                                     *
      ******************************************************************
               03 ZKCU0011-REC.
                  05 CUST-NCD-YEARS        PIC X(10).
                  05 CUST-EQUITIES         PIC X(10).
                  05 CUST-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 CUST-PREMIUM          PIC S9(4) COMP.
                  05 CUST-MODEL            PIC X(10).
                  05 CUST-BROKER-ID        PIC S9(4) COMP.
                  05 CUST-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 CUST-TAX-BAND         PIC X(10).
                  05 CUST-EXCESS           PIC 9(8).
                  05 CUST-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
