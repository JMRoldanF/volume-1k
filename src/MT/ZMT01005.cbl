      ******************************************************************
      * ZMT01005 - MOTOR POLICY                                        *
      ******************************************************************
      *
      *  Generated volume-test source. Layer 3,
      *  type pathological, domain MOTOR.
      *  Tags: dispatch-table, pathological
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZMT01005.
       AUTHOR. VOLUME GENERATOR.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * Run time (debug) information for this invocation
       01  WS-HEADER.
             03 WS-EYECATCHER          PIC X(16)
                                        VALUE 'ZMT01005------WS'.
             03 WS-TRANSID             PIC X(4).
             03 WS-TERMID              PIC X(4).
             03 WS-TASKNUM             PIC 9(7).
             03 WS-CALEN               PIC S9(4) COMP.
             03 WS-ADDR-COMMAREA       USAGE IS POINTER.
      *----------------------------------------------------------------*
       01  WS-RESP                   PIC S9(8) COMP VALUE +0.
       01  WS-RESP2                  PIC S9(8) COMP VALUE +0.
       01  ABS-TIME                  PIC S9(15) COMP-3 VALUE +0.
       01  TIME1                     PIC X(8)  VALUE SPACES.
       01  DATE1                     PIC X(10) VALUE SPACES.

      * Error message structure
       01  ERROR-MSG.
             03 EM-DATE                PIC X(8)  VALUE SPACES.
             03 FILLER                 PIC X     VALUE SPACES.
             03 EM-TIME                PIC X(6)  VALUE SPACES.
             03 FILLER                 PIC X(9)  VALUE ' ZMT01005'.
             03 EM-VARIABLE            PIC X(21) VALUE SPACES.

       01  WS-STATUS-CODE            PIC X(2)  VALUE SPACES.
               88 WS-STATUS-OK             VALUE '00'.
               88 WS-STATUS-NOTFND         VALUE '01'.
               88 WS-STATUS-DUPKEY         VALUE '02'.
               88 WS-STATUS-FAILED         VALUE '90' THRU '99'.
       01  WS-PREMIUM-TOTAL          PIC S9(9)V99 COMP-3 VALUE +0.
       01  WS-PREMIUM-BAND           PIC 9(2)  COMP-5 VALUE 0.
       01  WS-SUB                    PIC S9(4) COMP VALUE +1.
       01  WS-IX                     PIC S9(4) COMP VALUE +1.
       01  WS-ENTRY-COUNT            PIC S9(4) COMP VALUE +0.

       01  WS-KEY-AREA.
             03 WS-KEY-CUSTOMER        PIC 9(10).
             03 WS-KEY-POLICY          PIC 9(10).
       01  WS-KEY-FLAT REDEFINES WS-KEY-AREA.
             03 WS-KEY-CHAR            PIC X(20).
       01  WS-TABLE-AREA.
             03 WS-TABLE-COUNT         PIC S9(4) COMP VALUE +0.
             03 WS-TABLE-ENTRY OCCURS 1 TO 250 TIMES
                        DEPENDING ON WS-TABLE-COUNT.
                05 WS-T-TAX-BAND       PIC X(12).
                05 WS-T-TERM           PIC X(12).
                05 WS-T-AGENT-CODE     PIC X(12).
                05 WS-T-NCD-YEARS      PIC X(12).
                05 WS-T-AMOUNT           PIC S9(7)V99 COMP-3.

      * Dynamically resolved module names
       01  WS-DISPATCH-NAME          PIC X(8) VALUE SPACES.
       01  WS-DISPATCH-TABLE.
             03 FILLER                 PIC X(8) VALUE 'ZHO00843'.
             03 FILLER                 PIC X(8) VALUE 'ZMT00768'.
             03 FILLER                 PIC X(8) VALUE 'ZBI00755'.
             03 FILLER                 PIC X(8) VALUE 'ZMT00700'.
             03 FILLER                 PIC X(8) VALUE 'ZBI00685'.
             03 FILLER                 PIC X(8) VALUE 'ZCL00746'.
             03 FILLER                 PIC X(8) VALUE 'ZEN00789'.
             03 FILLER                 PIC X(8) VALUE 'ZBI00837'.
             03 FILLER                 PIC X(8) VALUE 'ZBI00771'.
             03 FILLER                 PIC X(8) VALUE 'ZHO00711'.
             03 FILLER                 PIC X(8) VALUE 'ZHO00830'.
             03 FILLER                 PIC X(8) VALUE 'ZHO00708'.
       01  WS-DISPATCH REDEFINES WS-DISPATCH-TABLE.
             03 WS-DISPATCH-ENT        PIC X(8) OCCURS 12.

      ******************************************************************
      * L I N K A G E     S E C T I O N                                *
      ******************************************************************
       LINKAGE SECTION.
       01  DFHCOMMAREA.
               COPY ZKCOMMON.
      ******************************************************************
      * P R O C E D U R E S                                            *
      ******************************************************************
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
       MAINLINE SECTION.
               INITIALIZE WS-HEADER.
               MOVE EIBTRNID TO WS-TRANSID.
               MOVE EIBTRMID TO WS-TERMID.
               MOVE EIBTASKN TO WS-TASKNUM.
               IF EIBCALEN IS EQUAL TO ZERO
                  MOVE ' NO COMMAREA RECEIVED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
                  EXEC CICS ABEND ABCODE('LGDL')
                            NODUMP END-EXEC
               END-IF.
               MOVE EIBCALEN TO WS-CALEN.
               SET WS-ADDR-COMMAREA TO ADDRESS OF DFHCOMMAREA.
               PERFORM CALL-ZHO00843-001.
               PERFORM CALL-ZMT00768-002.
               PERFORM CALL-ZBI00755-003.
               PERFORM CALL-ZMT00700-004.
               PERFORM CALL-ZBI00685-005.
               PERFORM CALL-ZCL00746-006.
               PERFORM CALL-ZEN00789-007.
               PERFORM CALL-ZBI00837-008.
               PERFORM CALL-ZBI00771-009.
               PERFORM CALL-ZHO00711-010.
               PERFORM CALL-ZHO00830-011.
               PERFORM CALL-ZHO00708-012.
               PERFORM RESOLVE-STATUS-CODE-0001.
               PERFORM EXPAND-BEDROOMS-0002.
               PERFORM RECONCILE-WITH-PROFITS-0003.
               PERFORM DERIVE-EXCESS-0004.
               PERFORM RESOLVE-NCD-YEARS-0005.
               PERFORM APPLY-CC-RATING-0006.
               PERFORM AUDIT-MAKE-0007.
               PERFORM RECONCILE-MAKE-0008.
               PERFORM CHECK-BEDROOMS-0010.
               PERFORM RESOLVE-MANAGED-FUND-0011.
               PERFORM APPLY-BROKER-ID-0012.
               EXEC CICS RETURN END-EXEC.
      *----------------------------------------------------------------*
       CALL-ZHO00843-001.
               MOVE 1 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00843 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00768-002.
               MOVE 2 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00768 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00755-003.
               MOVE 3 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00755 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00700-004.
               MOVE 4 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00700 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00685-005.
               MOVE 5 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00685 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00746-006.
               MOVE 6 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00746 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00789-007.
               MOVE 7 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00789 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00837-008.
               MOVE 8 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00837 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00771-009.
               MOVE 9 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00771 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00711-010.
               MOVE 10 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00711 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00830-011.
               MOVE 11 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00830 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00708-012.
               MOVE 12 TO WS-SUB
               MOVE WS-DISPATCH-ENT(WS-SUB) TO WS-DISPATCH-NAME
               CALL WS-DISPATCH-NAME USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00708 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       RESOLVE-STATUS-CODE-0001.
               MOVE 'STATUS-COD' TO WS-T-AMOUNT(1)
               SEARCH ALL WS-TABLE-ENTRY
                  AT END MOVE '01' TO WS-STATUS-CODE
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
                       CONTINUE
               END-SEARCH.
      *----------------------------------------------------------------*
       EXPAND-BEDROOMS-0002.
               IF WS-KEY-CUSTOMER = ZERO
                  MOVE ' NO BEDROOMS' TO EM-VARIABLE
                  MOVE '01' TO WS-STATUS-CODE
               ELSE
                  MOVE '00' TO WS-STATUS-CODE
               END-IF.
      *----------------------------------------------------------------*
       RECONCILE-WITH-PROFITS-0003.
               PERFORM VARYING WS-IX FROM 1 BY 1
                           UNTIL WS-IX > WS-TABLE-COUNT
                  ADD WS-T-AMOUNT(WS-IX) TO WS-PREMIUM-TOTAL
                  IF WS-T-AMOUNT(WS-IX) = ZERO
                     ADD 1 TO WS-ENTRY-COUNT
                  END-IF
               END-PERFORM.
      *----------------------------------------------------------------*
       DERIVE-EXCESS-0004.
               IF WS-KEY-CUSTOMER = ZERO
                  MOVE ' NO EXCESS' TO EM-VARIABLE
                  MOVE '01' TO WS-STATUS-CODE
               ELSE
                  MOVE '00' TO WS-STATUS-CODE
               END-IF.
      *----------------------------------------------------------------*
       RESOLVE-NCD-YEARS-0005.
               MOVE SPACES TO WS-KEY-CHAR.
               STRING WS-KEY-CUSTOMER DELIMITED BY SIZE
                         '/'              DELIMITED BY SIZE
                         WS-KEY-POLICY    DELIMITED BY SIZE
                         INTO WS-KEY-CHAR
               END-STRING.
      *----------------------------------------------------------------*
       APPLY-CC-RATING-0006.
               PERFORM VARYING WS-IX FROM 1 BY 1
                           UNTIL WS-IX > WS-TABLE-COUNT
                  ADD WS-T-AMOUNT(WS-IX) TO WS-PREMIUM-TOTAL
                  IF WS-T-AMOUNT(WS-IX) = ZERO
                     ADD 1 TO WS-ENTRY-COUNT
                  END-IF
               END-PERFORM.
      *----------------------------------------------------------------*
       AUDIT-MAKE-0007.
               EVALUATE TRUE
                  WHEN WS-PREMIUM-TOTAL < 999
                       MOVE 1 TO WS-PREMIUM-BAND
                  WHEN WS-PREMIUM-TOTAL < 4999
                       MOVE 2 TO WS-PREMIUM-BAND
                  WHEN WS-PREMIUM-TOTAL < 24999
                       MOVE 3 TO WS-PREMIUM-BAND
                  WHEN OTHER
                       MOVE 9 TO WS-PREMIUM-BAND
               END-EVALUATE.
      *----------------------------------------------------------------*
       RECONCILE-MAKE-0008.
               COMPUTE WS-PREMIUM-TOTAL ROUNDED =
                           WS-PREMIUM-TOTAL * 1.075
                         + WS-T-AMOUNT(WS-SUB) / 9
                         - WS-PREMIUM-BAND.
               IF WS-PREMIUM-TOTAL < ZERO
                  MOVE ZERO TO WS-PREMIUM-TOTAL
               END-IF.
      *----------------------------------------------------------------*
       RESOLVE-REG-NUMBER-0009.
               PERFORM VARYING WS-IX FROM 1 BY 1
                           UNTIL WS-IX > WS-TABLE-COUNT
                  ADD WS-T-AMOUNT(WS-IX) TO WS-PREMIUM-TOTAL
                  IF WS-T-AMOUNT(WS-IX) = ZERO
                     ADD 1 TO WS-ENTRY-COUNT
                  END-IF
               END-PERFORM.
      *----------------------------------------------------------------*
       CHECK-BEDROOMS-0010.
               MOVE SPACES TO WS-KEY-CHAR.
               STRING WS-KEY-CUSTOMER DELIMITED BY SIZE
                         '/'              DELIMITED BY SIZE
                         WS-KEY-POLICY    DELIMITED BY SIZE
                         INTO WS-KEY-CHAR
               END-STRING.
      *----------------------------------------------------------------*
       RESOLVE-MANAGED-FUND-0011.
               INSPECT WS-KEY-CHAR REPLACING ALL SPACES BY '0'.
               IF WS-STATUS-FAILED
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       APPLY-BROKER-ID-0012.
               COMPUTE WS-PREMIUM-TOTAL ROUNDED =
                           WS-PREMIUM-TOTAL * 1.075
                         + WS-T-AMOUNT(WS-SUB) / 4
                         - WS-PREMIUM-BAND.
               IF WS-PREMIUM-TOTAL < ZERO
                  MOVE ZERO TO WS-PREMIUM-TOTAL
               END-IF.
      *----------------------------------------------------------------*
       WRITE-ERROR-MESSAGE.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME) END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
                         MMDDYYYY(EM-DATE)
                         TIME(EM-TIME)
               END-EXEC.
               EXEC CICS LINK PROGRAM('ZMT00995')
                         COMMAREA(ERROR-MSG)
                         LENGTH(45)
               END-EXEC.
      *----------------------------------------------------------------*
       END PROGRAM ZMT01005.
