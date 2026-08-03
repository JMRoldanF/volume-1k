      ******************************************************************
      * COPYBOOK ZKAG0000 (record)                                     *
      ******************************************************************
               03 ZKAG0000-REC.
                  05 AGEN-CC-RATING        PIC 9(8).
                  05 AGEN-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 AGEN-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 AGEN-WITH-PROFITS     PIC X(20).
                  05 AGEN-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 AGEN-POSTCODE         PIC S9(7)V99 COMP-3.
                  05 AGEN-AGENT-CODE       PIC X(20).
                  05 AGEN-VALUE            PIC X(10).
                  05 AGEN-PREMIUM          PIC 9(8).
                  05 AGEN-BEDROOMS         PIC X(20).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
