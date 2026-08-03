      ******************************************************************
      * COPYBOOK ZKAG0011 (record)                                     *
      ******************************************************************
               03 ZKAG0011-REC.
                  05 AGEN-CC-RATING        PIC X(20).
                  05 AGEN-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 AGEN-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 AGEN-WITH-PROFITS     PIC X(20).
                  05 AGEN-REG-NUMBER       PIC X(10).
                  05 AGEN-HOUSE-TYPE       PIC X(10).
                  05 AGEN-ROOF-TYPE        PIC X(20).
                  05 AGEN-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 AGEN-BROKER-ID        PIC X(10).
                  05 AGEN-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
