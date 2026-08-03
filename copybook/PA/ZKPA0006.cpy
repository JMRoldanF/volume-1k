      ******************************************************************
      * COPYBOOK ZKPA0006 (record)                                     *
      ******************************************************************
               03 ZKPA0006-REC.
                  05 PAYM-ROOF-TYPE        PIC X(10).
                  05 PAYM-AGENT-CODE       PIC X(10).
                  05 PAYM-BEDROOMS         PIC 9(8).
                  05 PAYM-MANAGED-FUND     PIC S9(4) COMP.
                  05 PAYM-VALUE            PIC S9(7)V99 COMP-3.
                  05 PAYM-TAX-BAND         PIC X(10).
                  05 PAYM-REG-NUMBER       PIC S9(4) COMP.
                  05 PAYM-BROKER-ID        PIC S9(4) COMP.
                  05 PAYM-HOUSE-TYPE       PIC X(20).
                  05 PAYM-MAKE             PIC 9(8).
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
