      ******************************************************************
      * COPYBOOK ZKMT0003 (record)                                     *
      ******************************************************************
               03 ZKMT0003-REC.
                  05 MOTO-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 MOTO-ROOF-TYPE        PIC 9(8).
                  05 MOTO-MAKE             PIC 9(8).
                  05 MOTO-BEDROOMS         PIC X(20).
                  05 MOTO-HOUSE-TYPE       PIC X(20).
                  05 MOTO-AGENT-CODE       PIC X(20).
                  05 MOTO-CC-RATING        PIC 9(8).
                  05 MOTO-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 MOTO-TERM             PIC S9(4) COMP.
                  05 MOTO-SUM-ASSURED      PIC S9(4) COMP.
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
