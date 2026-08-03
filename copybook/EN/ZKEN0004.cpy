      ******************************************************************
      * COPYBOOK ZKEN0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKEN0004-REC.
                  05 ENDO-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 ENDO-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 ENDO-COLOUR           PIC X(20).
                  05 ENDO-POSTCODE         PIC 9(8).
                  05 ENDO-MODEL            PIC S9(7)V99 COMP-3.
                  05 ENDO-SUM-ASSURED      PIC 9(8).
                  05 ENDO-PREMIUM          PIC 9(8).
                  05 ENDO-REG-NUMBER       PIC 9(8).
                  05 ENDO-WITH-PROFITS     PIC S9(4) COMP.
                  05 ENDO-MAKE             PIC X(20).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
