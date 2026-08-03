      ******************************************************************
      * COPYBOOK ZKMT0006 (record)                                     *
      ******************************************************************
               03 ZKMT0006-REC.
                  05 MOTO-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 MOTO-VALUE            PIC 9(8).
                  05 MOTO-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 MOTO-COLOUR           PIC 9(8).
                  05 MOTO-PREMIUM          PIC X(10).
                  05 MOTO-POSTCODE         PIC 9(8).
                  05 MOTO-MAKE             PIC S9(4) COMP.
                  05 MOTO-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 MOTO-BROKER-ID        PIC 9(8).
                  05 MOTO-EXCESS           PIC X(20).
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
