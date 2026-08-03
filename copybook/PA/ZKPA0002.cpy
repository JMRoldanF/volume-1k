      ******************************************************************
      * COPYBOOK ZKPA0002 (record)                                     *
      ******************************************************************
               03 ZKPA0002-REC.
                  05 PAYM-CC-RATING        PIC S9(4) COMP.
                  05 PAYM-WITH-PROFITS     PIC S9(4) COMP.
                  05 PAYM-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 PAYM-BROKER-ID        PIC X(20).
                  05 PAYM-EXCESS           PIC X(20).
                  05 PAYM-MODEL            PIC S9(4) COMP.
                  05 PAYM-SUM-ASSURED      PIC X(20).
                  05 PAYM-TAX-BAND         PIC S9(4) COMP.
                  05 PAYM-TERM             PIC X(20).
                  05 PAYM-HOUSE-TYPE       PIC S9(4) COMP.
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
