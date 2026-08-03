      ******************************************************************
      * COPYBOOK ZKAG0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKAG0004-REC.
                  05 AGEN-TAX-BAND         PIC X(20).
                  05 AGEN-PREMIUM          PIC 9(8).
                  05 AGEN-MANAGED-FUND     PIC X(20).
                  05 AGEN-POSTCODE         PIC 9(8).
                  05 AGEN-CC-RATING        PIC 9(8).
                  05 AGEN-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 AGEN-MODEL            PIC X(20).
                  05 AGEN-ROOF-TYPE        PIC X(10).
                  05 AGEN-EQUITIES         PIC 9(8).
                  05 AGEN-AGENT-CODE       PIC X(20).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
