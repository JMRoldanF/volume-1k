      ******************************************************************
      * COPYBOOK ZKCL0005 (record)                                     *
      ******************************************************************
               03 ZKCL0005-REC.
                  05 CLAI-NCD-YEARS        PIC X(10).
                  05 CLAI-MODEL            PIC S9(4) COMP.
                  05 CLAI-WITH-PROFITS     PIC X(10).
                  05 CLAI-COLOUR           PIC X(20).
                  05 CLAI-BROKER-ID        PIC 9(8).
                  05 CLAI-TAX-BAND         PIC X(20).
                  05 CLAI-PREMIUM          PIC X(20).
                  05 CLAI-EXCESS           PIC X(20).
                  05 CLAI-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 CLAI-AGENT-CODE       PIC 9(8).
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
