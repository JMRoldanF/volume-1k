      ******************************************************************
      * COPYBOOK ZKUW0011 (record)                                     *
      ******************************************************************
               03 ZKUW0011-REC.
                  05 UNDE-STATUS-CODE      PIC S9(4) COMP.
                  05 UNDE-MAKE             PIC S9(4) COMP.
                  05 UNDE-REG-NUMBER       PIC 9(8).
                  05 UNDE-BROKER-ID        PIC S9(4) COMP.
                  05 UNDE-HOUSE-TYPE       PIC X(20).
                  05 UNDE-BEDROOMS         PIC S9(4) COMP.
                  05 UNDE-TAX-BAND         PIC X(10).
                  05 UNDE-MODEL            PIC X(20).
                  05 UNDE-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 UNDE-VALUE            PIC X(20).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
