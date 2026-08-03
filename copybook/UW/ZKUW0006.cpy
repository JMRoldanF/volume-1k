      ******************************************************************
      * COPYBOOK ZKUW0006 (record)                                     *
      ******************************************************************
               03 ZKUW0006-REC.
                  05 UNDE-BROKER-ID        PIC 9(8).
                  05 UNDE-EXCESS           PIC S9(4) COMP.
                  05 UNDE-MANAGED-FUND     PIC X(10).
                  05 UNDE-ROOF-TYPE        PIC X(10).
                  05 UNDE-NCD-YEARS        PIC S9(4) COMP.
                  05 UNDE-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 UNDE-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 UNDE-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 UNDE-POSTCODE         PIC X(10).
                  05 UNDE-COLOUR           PIC 9(8).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
