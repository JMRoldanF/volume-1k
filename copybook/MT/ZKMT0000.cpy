      ******************************************************************
      * COPYBOOK ZKMT0000 (record)                                     *
      ******************************************************************
               03 ZKMT0000-REC.
                  05 MOTO-COLOUR           PIC S9(7)V99 COMP-3.
                  05 MOTO-EXCESS           PIC 9(8).
                  05 MOTO-NCD-YEARS        PIC X(10).
                  05 MOTO-CC-RATING        PIC 9(8).
                  05 MOTO-BROKER-ID        PIC 9(8).
                  05 MOTO-HOUSE-TYPE       PIC X(20).
                  05 MOTO-MANAGED-FUND     PIC 9(8).
                  05 MOTO-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 MOTO-REG-NUMBER       PIC X(20).
                  05 MOTO-VALUE            PIC X(20).
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
