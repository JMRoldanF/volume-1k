      ******************************************************************
      * COPYBOOK ZKRE0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKRE0004-REC.
                  05 REIN-AGENT-CODE       PIC 9(8).
                  05 REIN-ROOF-TYPE        PIC X(20).
                  05 REIN-BROKER-ID        PIC S9(4) COMP.
                  05 REIN-MANAGED-FUND     PIC X(10).
                  05 REIN-WITH-PROFITS     PIC X(20).
                  05 REIN-TAX-BAND         PIC 9(8).
                  05 REIN-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 REIN-MAKE             PIC S9(4) COMP.
                  05 REIN-EXCESS           PIC S9(4) COMP.
                  05 REIN-MODEL            PIC S9(4) COMP.
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
