      ******************************************************************
      * COPYBOOK ZKMT0008 (record)                                     *
      ******************************************************************
               03 ZKMT0008-REC.
                  05 MOTO-PREMIUM          PIC 9(8).
                  05 MOTO-NCD-YEARS        PIC S9(4) COMP.
                  05 MOTO-SUM-ASSURED      PIC S9(4) COMP.
                  05 MOTO-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 MOTO-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 MOTO-TAX-BAND         PIC X(20).
                  05 MOTO-EXCESS           PIC S9(4) COMP.
                  05 MOTO-COLOUR           PIC S9(4) COMP.
                  05 MOTO-MODEL            PIC X(10).
                  05 MOTO-BEDROOMS         PIC S9(4) COMP.
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
