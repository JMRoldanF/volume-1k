      ******************************************************************
      * COPYBOOK ZKRE0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKRE0001-REC.
                  05 REIN-COLOUR           PIC S9(7)V99 COMP-3.
                  05 REIN-AGENT-CODE       PIC 9(8).
                  05 REIN-EXCESS           PIC 9(8).
                  05 REIN-STATUS-CODE      PIC X(20).
                  05 REIN-POSTCODE         PIC S9(7)V99 COMP-3.
                  05 REIN-NCD-YEARS        PIC 9(8).
                  05 REIN-MODEL            PIC 9(8).
                  05 REIN-SUM-ASSURED      PIC X(10).
                  05 REIN-ROOF-TYPE        PIC S9(4) COMP.
                  05 REIN-VALUE            PIC 9(8).
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
