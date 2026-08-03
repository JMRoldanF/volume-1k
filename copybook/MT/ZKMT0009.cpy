      ******************************************************************
      * COPYBOOK ZKMT0009 (record)                                     *
      ******************************************************************
               03 ZKMT0009-REC.
                  05 MOTO-STATUS-CODE      PIC 9(8).
                  05 MOTO-BROKER-ID        PIC X(20).
                  05 MOTO-MANAGED-FUND     PIC S9(4) COMP.
                  05 MOTO-TAX-BAND         PIC X(20).
                  05 MOTO-MAKE             PIC 9(8).
                  05 MOTO-WITH-PROFITS     PIC X(20).
                  05 MOTO-COLOUR           PIC X(20).
                  05 MOTO-EQUITIES         PIC 9(8).
                  05 MOTO-AGENT-CODE       PIC X(20).
                  05 MOTO-ROOF-TYPE        PIC S9(4) COMP.
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
