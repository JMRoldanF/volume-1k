      ******************************************************************
      * COPYBOOK ZKEN0010 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKEN0010-REC.
                  05 ENDO-POSTCODE         PIC 9(8).
                  05 ENDO-PREMIUM          PIC S9(4) COMP.
                  05 ENDO-BEDROOMS         PIC S9(4) COMP.
                  05 ENDO-COLOUR           PIC S9(4) COMP.
                  05 ENDO-MANAGED-FUND     PIC 9(8).
                  05 ENDO-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 ENDO-WITH-PROFITS     PIC X(10).
                  05 ENDO-NCD-YEARS        PIC 9(8).
                  05 ENDO-SUM-ASSURED      PIC X(10).
                  05 ENDO-TERM             PIC X(10).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
