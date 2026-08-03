      ******************************************************************
      * COPYBOOK ZKHO0011 (record)                                     *
      ******************************************************************
               03 ZKHO0011-REC.
                  05 HOUS-BEDROOMS         PIC X(10).
                  05 HOUS-MANAGED-FUND     PIC S9(4) COMP.
                  05 HOUS-WITH-PROFITS     PIC X(20).
                  05 HOUS-SUM-ASSURED      PIC X(10).
                  05 HOUS-NCD-YEARS        PIC S9(4) COMP.
                  05 HOUS-EXCESS           PIC X(20).
                  05 HOUS-MAKE             PIC 9(8).
                  05 HOUS-REG-NUMBER       PIC 9(8).
                  05 HOUS-TAX-BAND         PIC X(20).
                  05 HOUS-BROKER-ID        PIC X(20).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
