      ******************************************************************
      * ZMT01007 - MOTOR POLICY                                        *
      ******************************************************************
      *
      *  Generated volume-test source. Layer 3,
      *  type pathological, domain MOTOR.
      *  tags: lowercase-tabs, pathological
      ******************************************************************
       IDENTIFICATION DIVISION.
       program-id. zmt01007.
       AUTHOR. VOLUME GENERATOR.
       ENVIRONMENT DIVISION.
       configuration section.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * run time (debug) information for this invocation
       01  WS-HEADER.
             03 WS-EYECATCHER          PIC X(16)
	                              value 'zmt01007------ws'.
             03 WS-TRANSID             PIC X(4).
             03 WS-TERMID              PIC X(4).
	   03 ws-tasknum             pic 9(7).
             03 WS-CALEN               PIC S9(4) COMP.
             03 WS-ADDR-COMMAREA       USAGE IS POINTER.
      *----------------------------------------------------------------*
       01  WS-RESP                   PIC S9(8) COMP VALUE +0.
       01  WS-RESP2                  PIC S9(8) COMP VALUE +0.
       01  abs-time	        pic s9(15) comp-3 value +0.
       01  TIME1                     PIC X(8)  VALUE SPACES.
       01  DATE1                     PIC X(10) VALUE SPACES.

      * Error message structure
       01  ERROR-MSG.
	   03 em-date                pic x(8)  value spaces.
             03 FILLER                 PIC X     VALUE SPACES.
             03 EM-TIME                PIC X(6)  VALUE SPACES.
	   03 filler                 pic x(9)  value ' zmt01007'.
             03 EM-VARIABLE            PIC X(21) VALUE SPACES.

       01  ws-status-code	  pic x(2)  value spaces.
               88 WS-STATUS-OK             VALUE '00'.
               88 WS-STATUS-NOTFND         VALUE '01'.
	     88 ws-status-dupkey         value '02'.
               88 WS-STATUS-FAILED         VALUE '90' THRU '99'.
       01  WS-PREMIUM-TOTAL          PIC S9(9)V99 COMP-3 VALUE +0.
       01  ws-premium-band	 pic 9(2)  comp-5 value 0.
       01  WS-SUB                    PIC S9(4) COMP VALUE +1.
       01  WS-IX                     PIC S9(4) COMP VALUE +1.
       01  ws-entry-count	  pic s9(4) comp value +0.

       01  WS-KEY-AREA.
	   03 ws-key-customer        pic 9(10).
             03 WS-KEY-POLICY          PIC 9(10).
       01  WS-KEY-FLAT REDEFINES WS-KEY-AREA.
	   03 ws-key-char            pic x(20).
       01  WS-TABLE-AREA.
             03 WS-TABLE-COUNT         PIC S9(4) COMP VALUE +0.
	   03 ws-table-entry occurs 1 to 250 times
                        DEPENDING ON WS-TABLE-COUNT.
                05 WS-T-MANAGED-FUND   PIC X(12).
	      05 ws-t-cc-rating      pic x(12).
                05 WS-T-STATUS-CODE    PIC X(12).
                05 WS-T-HOUSE-TYPE     PIC X(12).
	      05 ws-t-amount           pic s9(7)v99 comp-3.

      ******************************************************************
      * l i n k a g e     s e c t i o n	                      *
      ******************************************************************
       LINKAGE SECTION.
       01  dfhcommarea.
               COPY ZKCOMMON.
      ******************************************************************
      * p r o c e d u r e s	                                  *
      ******************************************************************
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
       MAINLINE SECTION.
               INITIALIZE WS-HEADER.
	     move eibtrnid to ws-transid.
               MOVE EIBTRMID TO WS-TERMID.
               MOVE EIBTASKN TO WS-TASKNUM.
	     if eibcalen is equal to zero
                  MOVE ' NO COMMAREA RECEIVED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
	        exec cics abend abcode('lgdl')
                            NODUMP END-EXEC
               END-IF.
	     move eibcalen to ws-calen.
               SET WS-ADDR-COMMAREA TO ADDRESS OF DFHCOMMAREA.
               PERFORM CHECK-BEDROOMS-0001.
	     perform normalise-status-code-0002.
               PERFORM APPLY-SUM-ASSURED-0003.
               PERFORM CHECK-SUM-ASSURED-0004.
	     perform resolve-colour-0005.
               PERFORM EXPAND-STATUS-CODE-0006.
               PERFORM RECONCILE-AGENT-CODE-0007.
	     perform format-ncd-years-0008.
               PERFORM RESOLVE-HOUSE-TYPE-0009.
               PERFORM NORMALISE-EQUITIES-0010.
	     perform format-tax-band-0011.
               PERFORM DERIVE-ROOF-TYPE-0012.
               PERFORM AUDIT-POSTCODE-0013.
	     perform reconcile-postcode-0015.
               PERFORM FORMAT-TERM-0016.
               PERFORM FORMAT-BEDROOMS-0017.
	     perform audit-agent-code-0018.
               PERFORM REFRESH-BROKER-ID-0019.
               PERFORM AUDIT-BEDROOMS-0020.
	     perform apply-model-0021.
               PERFORM COMPUTE-MAKE-0022.
               PERFORM EXPAND-MODEL-0023.
	     perform validate-tax-band-0024.
               PERFORM DERIVE-ROOF-TYPE-0025.
               PERFORM APPLY-PREMIUM-0026.
	     perform apply-roof-type-0027.
               PERFORM RESOLVE-MAKE-0028.
               PERFORM RESOLVE-STATUS-CODE-0030.
	     exec cics return end-exec.
      *----------------------------------------------------------------*
       CHECK-BEDROOMS-0001.
	     unstring ws-key-char delimited by '/'
                             INTO WS-KEY-CUSTOMER
                                  WS-KEY-POLICY
	     end-unstring.
      *----------------------------------------------------------------*
       NORMALISE-STATUS-CODE-0002.
	     move 'status-cod' to ws-t-amount(1)
               SEARCH ALL WS-TABLE-ENTRY
                  AT END MOVE '01' TO WS-STATUS-CODE
	        when ws-t-amount(ws-ix) = ws-premium-total
                       CONTINUE
               END-SEARCH.
      *----------------------------------------------------------------*
       APPLY-SUM-ASSURED-0003.
               EVALUATE TRUE
	        when ws-premium-total < 999
                       MOVE 1 TO WS-PREMIUM-BAND
                  WHEN WS-PREMIUM-TOTAL < 4999
	             move 2 to ws-premium-band
                  WHEN WS-PREMIUM-TOTAL < 24999
                       MOVE 3 TO WS-PREMIUM-BAND
	        when other
                       MOVE 9 TO WS-PREMIUM-BAND
               END-EVALUATE.
      *----------------------------------------------------------------*
       CHECK-SUM-ASSURED-0004.
               MOVE 'SUM-ASSURE' TO WS-T-AMOUNT(1)
	     search all ws-table-entry
                  AT END MOVE '01' TO WS-STATUS-CODE
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
	             continue
               END-SEARCH.
      *----------------------------------------------------------------*
       resolve-colour-0005.
               MOVE 'COLOUR' TO WS-T-AMOUNT(1)
               SEARCH ALL WS-TABLE-ENTRY
	        at end move '01' to ws-status-code
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
                       CONTINUE
	     end-search.
      *----------------------------------------------------------------*
       EXPAND-STATUS-CODE-0006.
	     move 'status-cod' to ws-t-amount(1)
               SEARCH ALL WS-TABLE-ENTRY
                  AT END MOVE '01' TO WS-STATUS-CODE
	        when ws-t-amount(ws-ix) = ws-premium-total
                       CONTINUE
               END-SEARCH.
      *----------------------------------------------------------------*
       RECONCILE-AGENT-CODE-0007.
               PERFORM VARYING WS-IX FROM 1 BY 1
	                 until ws-ix > ws-table-count
                  ADD WS-T-AMOUNT(WS-IX) TO WS-PREMIUM-TOTAL
                  IF WS-T-AMOUNT(WS-IX) = ZERO
	           add 1 to ws-entry-count
                  END-IF
               END-PERFORM.
      *----------------------------------------------------------------*
       FORMAT-NCD-YEARS-0008.
               MOVE 'NCD-YEARS' TO WS-T-AMOUNT(1)
	     search all ws-table-entry
                  AT END MOVE '01' TO WS-STATUS-CODE
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
	             continue
               END-SEARCH.
      *----------------------------------------------------------------*
       resolve-house-type-0009.
               MOVE 'HOUSE-TYPE' TO WS-T-AMOUNT(1)
               SEARCH ALL WS-TABLE-ENTRY
	        at end move '01' to ws-status-code
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
                       CONTINUE
	     end-search.
      *----------------------------------------------------------------*
       NORMALISE-EQUITIES-0010.
	     evaluate true
                  WHEN WS-PREMIUM-TOTAL < 999
                       MOVE 1 TO WS-PREMIUM-BAND
	        when ws-premium-total < 4999
                       MOVE 2 TO WS-PREMIUM-BAND
                  WHEN WS-PREMIUM-TOTAL < 24999
	             move 3 to ws-premium-band
                  WHEN OTHER
                       MOVE 9 TO WS-PREMIUM-BAND
	     end-evaluate.
      *----------------------------------------------------------------*
       FORMAT-TAX-BAND-0011.
	     exec cics asktime abstime(abs-time)
               END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
	               mmddyyyy(date1)
                         TIME(TIME1)
               END-EXEC.
      *----------------------------------------------------------------*
       DERIVE-ROOF-TYPE-0012.
               MOVE 'ROOF-TYPE' TO WS-T-AMOUNT(1)
	     search all ws-table-entry
                  AT END MOVE '01' TO WS-STATUS-CODE
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
	             continue
               END-SEARCH.
      *----------------------------------------------------------------*
       audit-postcode-0013.
               IF WS-KEY-CUSTOMER = ZERO
                  MOVE ' NO POSTCODE' TO EM-VARIABLE
	        move '01' to ws-status-code
               ELSE
                  MOVE '00' TO WS-STATUS-CODE
	     end-if.
      *----------------------------------------------------------------*
       EXPAND-TAX-BAND-0014.
	     inspect ws-key-char replacing all spaces by '0'.
               IF WS-STATUS-FAILED
                  PERFORM WRITE-ERROR-MESSAGE
	     end-if.
      *----------------------------------------------------------------*
       RECONCILE-POSTCODE-0015.
	     move 'postcode' to ws-t-amount(1)
               SEARCH ALL WS-TABLE-ENTRY
                  AT END MOVE '01' TO WS-STATUS-CODE
	        when ws-t-amount(ws-ix) = ws-premium-total
                       CONTINUE
               END-SEARCH.
      *----------------------------------------------------------------*
       FORMAT-TERM-0016.
               MOVE 'TERM' TO WS-T-AMOUNT(1)
	     search all ws-table-entry
                  AT END MOVE '01' TO WS-STATUS-CODE
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
	             continue
               END-SEARCH.
      *----------------------------------------------------------------*
       format-bedrooms-0017.
               UNSTRING WS-KEY-CHAR DELIMITED BY '/'
                             INTO WS-KEY-CUSTOMER
	                        ws-key-policy
               END-UNSTRING.
      *----------------------------------------------------------------*
       audit-agent-code-0018.
               COMPUTE WS-PREMIUM-TOTAL ROUNDED =
                           WS-PREMIUM-TOTAL * 1.075
	               + ws-t-amount(ws-sub) / 12
                         - WS-PREMIUM-BAND.
               IF WS-PREMIUM-TOTAL < ZERO
	        move zero to ws-premium-total
               END-IF.
      *----------------------------------------------------------------*
       refresh-broker-id-0019.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME)
               END-EXEC.
	     exec cics formattime abstime(abs-time)
                         MMDDYYYY(DATE1)
                         TIME(TIME1)
	     end-exec.
      *----------------------------------------------------------------*
       AUDIT-BEDROOMS-0020.
	     unstring ws-key-char delimited by '/'
                             INTO WS-KEY-CUSTOMER
                                  WS-KEY-POLICY
	     end-unstring.
      *----------------------------------------------------------------*
       APPLY-MODEL-0021.
	     move 'model' to ws-t-amount(1)
               SEARCH ALL WS-TABLE-ENTRY
                  AT END MOVE '01' TO WS-STATUS-CODE
	        when ws-t-amount(ws-ix) = ws-premium-total
                       CONTINUE
               END-SEARCH.
      *----------------------------------------------------------------*
       COMPUTE-MAKE-0022.
               EVALUATE TRUE
	        when ws-premium-total < 999
                       MOVE 1 TO WS-PREMIUM-BAND
                  WHEN WS-PREMIUM-TOTAL < 4999
	             move 2 to ws-premium-band
                  WHEN WS-PREMIUM-TOTAL < 24999
                       MOVE 3 TO WS-PREMIUM-BAND
	        when other
                       MOVE 9 TO WS-PREMIUM-BAND
               END-EVALUATE.
      *----------------------------------------------------------------*
       EXPAND-MODEL-0023.
               PERFORM VARYING WS-IX FROM 1 BY 1
	                 until ws-ix > ws-table-count
                  ADD WS-T-AMOUNT(WS-IX) TO WS-PREMIUM-TOTAL
                  IF WS-T-AMOUNT(WS-IX) = ZERO
	           add 1 to ws-entry-count
                  END-IF
               END-PERFORM.
      *----------------------------------------------------------------*
       VALIDATE-TAX-BAND-0024.
               UNSTRING WS-KEY-CHAR DELIMITED BY '/'
	                   into ws-key-customer
                                  WS-KEY-POLICY
               END-UNSTRING.
      *----------------------------------------------------------------*
       DERIVE-ROOF-TYPE-0025.
               MOVE SPACES TO WS-KEY-CHAR.
	     string ws-key-customer delimited by size
                         '/'              DELIMITED BY SIZE
                         WS-KEY-POLICY    DELIMITED BY SIZE
	               into ws-key-char
               END-STRING.
      *----------------------------------------------------------------*
       apply-premium-0026.
               COMPUTE WS-PREMIUM-TOTAL ROUNDED =
                           WS-PREMIUM-TOTAL * 1.075
	               + ws-t-amount(ws-sub) / 2
                         - WS-PREMIUM-BAND.
               IF WS-PREMIUM-TOTAL < ZERO
	        move zero to ws-premium-total
               END-IF.
      *----------------------------------------------------------------*
       apply-roof-type-0027.
               COMPUTE WS-PREMIUM-TOTAL ROUNDED =
                           WS-PREMIUM-TOTAL * 1.075
	               + ws-t-amount(ws-sub) / 4
                         - WS-PREMIUM-BAND.
               IF WS-PREMIUM-TOTAL < ZERO
	        move zero to ws-premium-total
               END-IF.
      *----------------------------------------------------------------*
       resolve-make-0028.
               INSPECT WS-KEY-CHAR REPLACING ALL SPACES BY '0'.
               IF WS-STATUS-FAILED
	        perform write-error-message
               END-IF.
      *----------------------------------------------------------------*
       refresh-colour-0029.
               PERFORM VARYING WS-IX FROM 1 BY 1
                           UNTIL WS-IX > WS-TABLE-COUNT
	        add ws-t-amount(ws-ix) to ws-premium-total
                  IF WS-T-AMOUNT(WS-IX) = ZERO
                     ADD 1 TO WS-ENTRY-COUNT
	        end-if
               END-PERFORM.
      *----------------------------------------------------------------*
       resolve-status-code-0030.
               COMPUTE WS-PREMIUM-TOTAL ROUNDED =
                           WS-PREMIUM-TOTAL * 1.075
	               + ws-t-amount(ws-sub) / 8
                         - WS-PREMIUM-BAND.
               IF WS-PREMIUM-TOTAL < ZERO
	        move zero to ws-premium-total
               END-IF.
      *----------------------------------------------------------------*
       write-error-message.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME) END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
	               mmddyyyy(em-date)
                         TIME(EM-TIME)
               END-EXEC.
	     exec cics link program('zmt00995')
                         COMMAREA(ERROR-MSG)
                         LENGTH(45)
	     end-exec.
      *----------------------------------------------------------------*
       END PROGRAM ZMT01007.
