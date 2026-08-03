      ******************************************************************
      * COPYBOOK ZKUW0009 (record)                                     *
      ******************************************************************
               03 ZKUW0009-REC.
                  05 UNDE-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 UNDE-EXCESS           PIC 9(8).
                  05 UNDE-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 UNDE-CC-RATING        PIC X(20).
                  05 UNDE-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 UNDE-ROOF-TYPE        PIC 9(8).
                  05 UNDE-PREMIUM          PIC X(10).
                  05 UNDE-WITH-PROFITS     PIC 9(8).
                  05 UNDE-REG-NUMBER       PIC X(20).
                  05 UNDE-MAKE             PIC S9(7)V99 COMP-3.
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
