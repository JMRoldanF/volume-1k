      ******************************************************************
      * COPYBOOK ZKRE0003 (record)                                     *
      ******************************************************************
               03 ZKRE0003-REC.
                  05 REIN-POSTCODE         PIC X(20).
                  05 REIN-MAKE             PIC 9(8).
                  05 REIN-CC-RATING        PIC X(10).
                  05 REIN-NCD-YEARS        PIC X(20).
                  05 REIN-HOUSE-TYPE       PIC 9(8).
                  05 REIN-MODEL            PIC X(10).
                  05 REIN-VALUE            PIC X(20).
                  05 REIN-AGENT-CODE       PIC X(10).
                  05 REIN-STATUS-CODE      PIC 9(8).
                  05 REIN-BEDROOMS         PIC X(20).
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
