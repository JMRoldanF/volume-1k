      ******************************************************************
      * COPYBOOK ZKAG0003 (record)                                     *
      ******************************************************************
               03 ZKAG0003-REC.
                  05 AGEN-COLOUR           PIC 9(8).
                  05 AGEN-POSTCODE         PIC X(10).
                  05 AGEN-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 AGEN-BEDROOMS         PIC S9(4) COMP.
                  05 AGEN-CC-RATING        PIC X(20).
                  05 AGEN-NCD-YEARS        PIC X(20).
                  05 AGEN-BROKER-ID        PIC X(10).
                  05 AGEN-MAKE             PIC X(10).
                  05 AGEN-TERM             PIC S9(7)V99 COMP-3.
                  05 AGEN-PREMIUM          PIC 9(8).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
