      ******************************************************************
      * COPYBOOK ZKHO0010 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKHO0010-REC.
                  05 HOUS-BEDROOMS         PIC S9(4) COMP.
                  05 HOUS-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 HOUS-EQUITIES         PIC S9(4) COMP.
                  05 HOUS-CC-RATING        PIC S9(4) COMP.
                  05 HOUS-PREMIUM          PIC X(10).
                  05 HOUS-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 HOUS-MANAGED-FUND     PIC X(10).
                  05 HOUS-NCD-YEARS        PIC X(10).
                  05 HOUS-ROOF-TYPE        PIC S9(4) COMP.
                  05 HOUS-REG-NUMBER       PIC 9(8).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
