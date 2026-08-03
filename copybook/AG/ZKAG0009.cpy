      ******************************************************************
      * COPYBOOK ZKAG0009 (record)                                     *
      ******************************************************************
               03 ZKAG0009-REC.
                  05 AGEN-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 AGEN-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 AGEN-ROOF-TYPE        PIC 9(8).
                  05 AGEN-WITH-PROFITS     PIC S9(4) COMP.
                  05 AGEN-TERM             PIC 9(8).
                  05 AGEN-TAX-BAND         PIC 9(8).
                  05 AGEN-STATUS-CODE      PIC S9(4) COMP.
                  05 AGEN-POSTCODE         PIC X(10).
                  05 AGEN-MAKE             PIC X(10).
                  05 AGEN-COLOUR           PIC 9(8).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
