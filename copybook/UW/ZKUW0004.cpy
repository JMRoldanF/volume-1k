      ******************************************************************
      * COPYBOOK ZKUW0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKUW0004-REC.
                  05 UNDE-BROKER-ID        PIC S9(4) COMP.
                  05 UNDE-PREMIUM          PIC 9(8).
                  05 UNDE-MAKE             PIC S9(7)V99 COMP-3.
                  05 UNDE-NCD-YEARS        PIC 9(8).
                  05 UNDE-HOUSE-TYPE       PIC S9(4) COMP.
                  05 UNDE-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 UNDE-AGENT-CODE       PIC 9(8).
                  05 UNDE-REG-NUMBER       PIC X(20).
                  05 UNDE-MANAGED-FUND     PIC X(10).
                  05 UNDE-TAX-BAND         PIC X(10).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
