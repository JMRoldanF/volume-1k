      ******************************************************************
      * COPYBOOK ZKUW0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKUW0007-REC.
                  05 UNDE-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 UNDE-PREMIUM          PIC 9(8).
                  05 UNDE-MODEL            PIC 9(8).
                  05 UNDE-REG-NUMBER       PIC 9(8).
                  05 UNDE-MANAGED-FUND     PIC X(10).
                  05 UNDE-BEDROOMS         PIC X(10).
                  05 UNDE-CC-RATING        PIC 9(8).
                  05 UNDE-MAKE             PIC S9(7)V99 COMP-3.
                  05 UNDE-HOUSE-TYPE       PIC X(10).
                  05 UNDE-SUM-ASSURED      PIC 9(8).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
