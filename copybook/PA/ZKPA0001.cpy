      ******************************************************************
      * COPYBOOK ZKPA0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKPA0001-REC.
                  05 PAYM-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 PAYM-PREMIUM          PIC X(10).
                  05 PAYM-VALUE            PIC S9(4) COMP.
                  05 PAYM-HOUSE-TYPE       PIC X(20).
                  05 PAYM-BROKER-ID        PIC X(20).
                  05 PAYM-SUM-ASSURED      PIC X(10).
                  05 PAYM-BEDROOMS         PIC S9(4) COMP.
                  05 PAYM-EQUITIES         PIC X(20).
                  05 PAYM-MODEL            PIC X(20).
                  05 PAYM-POSTCODE         PIC S9(4) COMP.
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
