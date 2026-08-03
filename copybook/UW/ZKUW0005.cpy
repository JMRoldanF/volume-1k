      ******************************************************************
      * COPYBOOK ZKUW0005 (record)                                     *
      ******************************************************************
               03 ZKUW0005-REC.
                  05 UNDE-POSTCODE         PIC S9(7)V99 COMP-3.
                  05 UNDE-ROOF-TYPE        PIC X(20).
                  05 UNDE-MODEL            PIC 9(8).
                  05 UNDE-COLOUR           PIC 9(8).
                  05 UNDE-PREMIUM          PIC 9(8).
                  05 UNDE-VALUE            PIC S9(7)V99 COMP-3.
                  05 UNDE-HOUSE-TYPE       PIC S9(7)V99 COMP-3.
                  05 UNDE-NCD-YEARS        PIC 9(8).
                  05 UNDE-AGENT-CODE       PIC X(20).
                  05 UNDE-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
