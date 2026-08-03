      ******************************************************************
      * ZMT01004 - MOTOR POLICY                                        *
      ******************************************************************
      *
      *  Generated volume-test source. Layer 3,
      *  type pathological, domain MOTOR.
      *  Tags: fan-out, pathological
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZMT01004.
       AUTHOR. VOLUME GENERATOR.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * Run time (debug) information for this invocation
       01  WS-HEADER.
             03 WS-EYECATCHER          PIC X(16)
                                        VALUE 'ZMT01004------WS'.
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
             03 FILLER                 PIC X(9)  VALUE ' ZMT01004'.
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
                05 WS-T-EXCESS         PIC X(12).
                05 WS-T-HOUSE-TYPE     PIC X(12).
                05 WS-T-AGENT-CODE     PIC X(12).
                05 WS-T-STATUS-CODE    PIC X(12).
                05 WS-T-AMOUNT           PIC S9(7)V99 COMP-3.

      * Called module names
       01  MOD-ZCL00810              PIC X(8) VALUE 'ZCL00810'.
       01  MOD-ZMT00791              PIC X(8) VALUE 'ZMT00791'.
       01  MOD-ZBI00715              PIC X(8) VALUE 'ZBI00715'.
       01  MOD-ZUW00839              PIC X(8) VALUE 'ZUW00839'.
       01  MOD-ZEN00788              PIC X(8) VALUE 'ZEN00788'.
       01  MOD-ZMT00861              PIC X(8) VALUE 'ZMT00861'.
       01  MOD-ZCL00698              PIC X(8) VALUE 'ZCL00698'.
       01  MOD-ZUW00714              PIC X(8) VALUE 'ZUW00714'.
       01  MOD-ZCL00776              PIC X(8) VALUE 'ZCL00776'.
       01  MOD-ZCL00759              PIC X(8) VALUE 'ZCL00759'.
       01  MOD-ZEN00687              PIC X(8) VALUE 'ZEN00687'.
       01  MOD-ZCL00635              PIC X(8) VALUE 'ZCL00635'.
       01  MOD-ZHO00681              PIC X(8) VALUE 'ZHO00681'.
       01  MOD-ZEN00739              PIC X(8) VALUE 'ZEN00739'.
       01  MOD-ZAG00809              PIC X(8) VALUE 'ZAG00809'.
       01  MOD-ZMT00678              PIC X(8) VALUE 'ZMT00678'.
       01  MOD-ZAG00747              PIC X(8) VALUE 'ZAG00747'.
       01  MOD-ZMT00735              PIC X(8) VALUE 'ZMT00735'.
       01  MOD-ZMT00653              PIC X(8) VALUE 'ZMT00653'.
       01  MOD-ZHO00792              PIC X(8) VALUE 'ZHO00792'.
       01  MOD-ZMT00811              PIC X(8) VALUE 'ZMT00811'.
       01  MOD-ZPA00726              PIC X(8) VALUE 'ZPA00726'.
       01  MOD-ZBI00777              PIC X(8) VALUE 'ZBI00777'.
       01  MOD-ZCL00730              PIC X(8) VALUE 'ZCL00730'.
       01  MOD-ZAG00780              PIC X(8) VALUE 'ZAG00780'.
       01  MOD-ZEN00695              PIC X(8) VALUE 'ZEN00695'.
       01  MOD-ZMT00705              PIC X(8) VALUE 'ZMT00705'.
       01  MOD-ZPA00720              PIC X(8) VALUE 'ZPA00720'.
       01  MOD-ZEN00820              PIC X(8) VALUE 'ZEN00820'.
       01  MOD-ZMT00704              PIC X(8) VALUE 'ZMT00704'.
       01  MOD-ZCL00794              PIC X(8) VALUE 'ZCL00794'.
       01  MOD-ZCL00842              PIC X(8) VALUE 'ZCL00842'.
       01  MOD-ZMT00770              PIC X(8) VALUE 'ZMT00770'.
       01  MOD-ZMT00716              PIC X(8) VALUE 'ZMT00716'.
       01  MOD-ZRE00826              PIC X(8) VALUE 'ZRE00826'.
       01  MOD-ZHO00632              PIC X(8) VALUE 'ZHO00632'.
       01  MOD-ZRE00784              PIC X(8) VALUE 'ZRE00784'.
       01  MOD-ZHO00745              PIC X(8) VALUE 'ZHO00745'.
       01  MOD-ZCU00756              PIC X(8) VALUE 'ZCU00756'.
       01  MOD-ZEN00857              PIC X(8) VALUE 'ZEN00857'.
       01  MOD-ZHO00843              PIC X(8) VALUE 'ZHO00843'.
       01  MOD-ZEN00758              PIC X(8) VALUE 'ZEN00758'.
       01  MOD-ZMT00701              PIC X(8) VALUE 'ZMT00701'.
       01  MOD-ZRE00749              PIC X(8) VALUE 'ZRE00749'.
       01  MOD-ZMT00804              PIC X(8) VALUE 'ZMT00804'.
       01  MOD-ZCU00647              PIC X(8) VALUE 'ZCU00647'.
       01  MOD-ZHO00796              PIC X(8) VALUE 'ZHO00796'.
       01  MOD-ZMT00742              PIC X(8) VALUE 'ZMT00742'.
       01  MOD-ZMT00654              PIC X(8) VALUE 'ZMT00654'.
       01  MOD-ZHO00852              PIC X(8) VALUE 'ZHO00852'.
       01  MOD-ZPA00834              PIC X(8) VALUE 'ZPA00834'.
       01  MOD-ZEN00660              PIC X(8) VALUE 'ZEN00660'.
       01  MOD-ZHO00752              PIC X(8) VALUE 'ZHO00752'.
       01  MOD-ZHO00806              PIC X(8) VALUE 'ZHO00806'.
       01  MOD-ZMT00801              PIC X(8) VALUE 'ZMT00801'.
       01  MOD-ZCL00793              PIC X(8) VALUE 'ZCL00793'.
       01  MOD-ZMT00851              PIC X(8) VALUE 'ZMT00851'.
       01  MOD-ZEN00802              PIC X(8) VALUE 'ZEN00802'.
       01  MOD-ZMT00707              PIC X(8) VALUE 'ZMT00707'.
       01  MOD-ZPA00717              PIC X(8) VALUE 'ZPA00717'.
       01  MOD-ZHO00721              PIC X(8) VALUE 'ZHO00721'.
       01  MOD-ZPA00732              PIC X(8) VALUE 'ZPA00732'.
       01  MOD-ZBI00685              PIC X(8) VALUE 'ZBI00685'.
       01  MOD-ZBI00641              PIC X(8) VALUE 'ZBI00641'.
       01  MOD-ZBI00779              PIC X(8) VALUE 'ZBI00779'.
       01  MOD-ZHO00846              PIC X(8) VALUE 'ZHO00846'.
       01  MOD-ZEN00841              PIC X(8) VALUE 'ZEN00841'.
       01  MOD-ZHO00671              PIC X(8) VALUE 'ZHO00671'.
       01  MOD-ZMT00781              PIC X(8) VALUE 'ZMT00781'.
       01  MOD-ZPA00679              PIC X(8) VALUE 'ZPA00679'.
       01  MOD-ZMT00821              PIC X(8) VALUE 'ZMT00821'.
       01  MOD-ZMT00797              PIC X(8) VALUE 'ZMT00797'.
       01  MOD-ZMT00645              PIC X(8) VALUE 'ZMT00645'.
       01  MOD-ZEN00724              PIC X(8) VALUE 'ZEN00724'.
       01  MOD-ZUW00786              PIC X(8) VALUE 'ZUW00786'.
       01  MOD-ZAG00646              PIC X(8) VALUE 'ZAG00646'.
       01  MOD-ZEN00690              PIC X(8) VALUE 'ZEN00690'.
       01  MOD-ZAG00798              PIC X(8) VALUE 'ZAG00798'.
       01  MOD-ZHO00683              PIC X(8) VALUE 'ZHO00683'.
       01  MOD-ZMT00799              PIC X(8) VALUE 'ZMT00799'.
       01  MOD-ZCU00848              PIC X(8) VALUE 'ZCU00848'.
       01  MOD-ZUW00849              PIC X(8) VALUE 'ZUW00849'.
       01  MOD-ZBI00814              PIC X(8) VALUE 'ZBI00814'.
       01  MOD-ZEN00686              PIC X(8) VALUE 'ZEN00686'.
       01  MOD-ZCU00772              PIC X(8) VALUE 'ZCU00772'.
       01  MOD-ZMT00672              PIC X(8) VALUE 'ZMT00672'.
       01  MOD-ZHO00649              PIC X(8) VALUE 'ZHO00649'.
       01  MOD-ZMT00728              PIC X(8) VALUE 'ZMT00728'.
       01  MOD-ZHO00719              PIC X(8) VALUE 'ZHO00719'.
       01  MOD-ZCL00648              PIC X(8) VALUE 'ZCL00648'.
       01  MOD-ZUW00800              PIC X(8) VALUE 'ZUW00800'.
       01  MOD-ZBI00771              PIC X(8) VALUE 'ZBI00771'.
       01  MOD-ZCU00634              PIC X(8) VALUE 'ZCU00634'.
       01  MOD-ZRE00677              PIC X(8) VALUE 'ZRE00677'.
       01  MOD-ZMT00825              PIC X(8) VALUE 'ZMT00825'.
       01  MOD-ZRE00659              PIC X(8) VALUE 'ZRE00659'.
       01  MOD-ZMT00743              PIC X(8) VALUE 'ZMT00743'.
       01  MOD-ZMT00818              PIC X(8) VALUE 'ZMT00818'.
       01  MOD-ZMT00819              PIC X(8) VALUE 'ZMT00819'.
       01  MOD-ZHO00644              PIC X(8) VALUE 'ZHO00644'.
       01  MOD-ZMT00864              PIC X(8) VALUE 'ZMT00864'.
       01  MOD-ZHO00657              PIC X(8) VALUE 'ZHO00657'.
       01  MOD-ZBI00858              PIC X(8) VALUE 'ZBI00858'.
       01  MOD-ZMT00663              PIC X(8) VALUE 'ZMT00663'.
       01  MOD-ZPA00712              PIC X(8) VALUE 'ZPA00712'.
       01  MOD-ZEN00652              PIC X(8) VALUE 'ZEN00652'.
       01  MOD-ZMT00766              PIC X(8) VALUE 'ZMT00766'.
       01  MOD-ZHO00795              PIC X(8) VALUE 'ZHO00795'.
       01  MOD-ZMT00753              PIC X(8) VALUE 'ZMT00753'.
       01  MOD-ZRE00637              PIC X(8) VALUE 'ZRE00637'.
       01  MOD-ZHO00693              PIC X(8) VALUE 'ZHO00693'.
       01  MOD-ZRE00765              PIC X(8) VALUE 'ZRE00765'.
       01  MOD-ZCU00669              PIC X(8) VALUE 'ZCU00669'.
       01  MOD-ZMT00750              PIC X(8) VALUE 'ZMT00750'.
       01  MOD-ZEN00860              PIC X(8) VALUE 'ZEN00860'.
       01  MOD-ZMT00674              PIC X(8) VALUE 'ZMT00674'.
       01  MOD-ZMT00668              PIC X(8) VALUE 'ZMT00668'.
       01  MOD-ZCL00778              PIC X(8) VALUE 'ZCL00778'.
       01  MOD-ZAG00638              PIC X(8) VALUE 'ZAG00638'.
       01  MOD-ZRE00829              PIC X(8) VALUE 'ZRE00829'.
       01  MOD-ZHO00722              PIC X(8) VALUE 'ZHO00722'.
       01  MOD-ZCU00835              PIC X(8) VALUE 'ZCU00835'.
       01  MOD-ZBI00636              PIC X(8) VALUE 'ZBI00636'.
       01  MOD-ZRE00823              PIC X(8) VALUE 'ZRE00823'.
       01  MOD-ZCU00713              PIC X(8) VALUE 'ZCU00713'.
       01  MOD-ZUW00738              PIC X(8) VALUE 'ZUW00738'.
       01  MOD-ZCU00744              PIC X(8) VALUE 'ZCU00744'.
       01  MOD-ZCL00694              PIC X(8) VALUE 'ZCL00694'.
       01  MOD-ZBI00703              PIC X(8) VALUE 'ZBI00703'.
       01  MOD-ZAG00733              PIC X(8) VALUE 'ZAG00733'.
       01  MOD-ZEN00751              PIC X(8) VALUE 'ZEN00751'.
       01  MOD-ZMT00853              PIC X(8) VALUE 'ZMT00853'.
       01  MOD-ZEN00718              PIC X(8) VALUE 'ZEN00718'.
       01  MOD-ZCL00831              PIC X(8) VALUE 'ZCL00831'.
       01  MOD-ZRE00855              PIC X(8) VALUE 'ZRE00855'.
       01  MOD-ZEN00682              PIC X(8) VALUE 'ZEN00682'.
       01  MOD-ZMT00691              PIC X(8) VALUE 'ZMT00691'.
       01  MOD-ZMT00741              PIC X(8) VALUE 'ZMT00741'.
       01  MOD-ZBI00773              PIC X(8) VALUE 'ZBI00773'.
       01  MOD-ZMT00856              PIC X(8) VALUE 'ZMT00856'.
       01  MOD-ZCL00824              PIC X(8) VALUE 'ZCL00824'.
       01  MOD-ZUW00689              PIC X(8) VALUE 'ZUW00689'.
       01  MOD-ZCL00658              PIC X(8) VALUE 'ZCL00658'.
       01  MOD-ZPA00664              PIC X(8) VALUE 'ZPA00664'.
       01  MOD-ZMT00838              PIC X(8) VALUE 'ZMT00838'.
       01  MOD-ZCU00840              PIC X(8) VALUE 'ZCU00840'.
       01  MOD-ZUW00805              PIC X(8) VALUE 'ZUW00805'.
       01  MOD-ZCL00746              PIC X(8) VALUE 'ZCL00746'.
       01  MOD-ZUW00783              PIC X(8) VALUE 'ZUW00783'.
       01  MOD-ZUW00859              PIC X(8) VALUE 'ZUW00859'.
       01  MOD-ZHO00702              PIC X(8) VALUE 'ZHO00702'.
       01  MOD-ZRE00710              PIC X(8) VALUE 'ZRE00710'.
       01  MOD-ZEN00688              PIC X(8) VALUE 'ZEN00688'.
       01  MOD-ZMT00836              PIC X(8) VALUE 'ZMT00836'.
       01  MOD-ZRE00828              PIC X(8) VALUE 'ZRE00828'.
       01  MOD-ZMT00699              PIC X(8) VALUE 'ZMT00699'.
       01  MOD-ZCU00754              PIC X(8) VALUE 'ZCU00754'.
       01  MOD-ZBI00684              PIC X(8) VALUE 'ZBI00684'.
       01  MOD-ZCU00775              PIC X(8) VALUE 'ZCU00775'.
       01  MOD-ZMT00673              PIC X(8) VALUE 'ZMT00673'.
       01  MOD-ZUW00696              PIC X(8) VALUE 'ZUW00696'.
       01  MOD-ZUW00640              PIC X(8) VALUE 'ZUW00640'.
       01  MOD-ZHO00708              PIC X(8) VALUE 'ZHO00708'.
       01  MOD-ZUW00662              PIC X(8) VALUE 'ZUW00662'.
       01  MOD-ZAG00762              PIC X(8) VALUE 'ZAG00762'.
       01  MOD-ZPA00769              PIC X(8) VALUE 'ZPA00769'.
       01  MOD-ZCU00845              PIC X(8) VALUE 'ZCU00845'.
       01  MOD-ZRE00643              PIC X(8) VALUE 'ZRE00643'.
       01  MOD-ZEN00789              PIC X(8) VALUE 'ZEN00789'.
       01  MOD-ZMT00631              PIC X(8) VALUE 'ZMT00631'.
       01  MOD-ZBI00661              PIC X(8) VALUE 'ZBI00661'.
       01  MOD-ZEN00822              PIC X(8) VALUE 'ZEN00822'.
       01  MOD-ZMT00700              PIC X(8) VALUE 'ZMT00700'.
       01  MOD-ZHO00711              PIC X(8) VALUE 'ZHO00711'.
       01  MOD-ZCL00862              PIC X(8) VALUE 'ZCL00862'.
       01  MOD-ZMT00666              PIC X(8) VALUE 'ZMT00666'.
       01  MOD-ZUW00815              PIC X(8) VALUE 'ZUW00815'.
       01  MOD-ZAG00813              PIC X(8) VALUE 'ZAG00813'.
       01  MOD-ZHO00830              PIC X(8) VALUE 'ZHO00830'.
       01  MOD-ZEN00680              PIC X(8) VALUE 'ZEN00680'.
       01  MOD-ZMT00847              PIC X(8) VALUE 'ZMT00847'.
       01  MOD-ZBI00767              PIC X(8) VALUE 'ZBI00767'.
       01  MOD-ZEN00827              PIC X(8) VALUE 'ZEN00827'.
       01  MOD-ZRE00863              PIC X(8) VALUE 'ZRE00863'.
       01  MOD-ZMT00785              PIC X(8) VALUE 'ZMT00785'.
       01  MOD-ZAG00790              PIC X(8) VALUE 'ZAG00790'.
       01  MOD-ZMT00748              PIC X(8) VALUE 'ZMT00748'.
       01  MOD-ZMT00808              PIC X(8) VALUE 'ZMT00808'.
       01  MOD-ZMT00737              PIC X(8) VALUE 'ZMT00737'.
       01  MOD-ZCL00832              PIC X(8) VALUE 'ZCL00832'.
       01  MOD-ZBI00729              PIC X(8) VALUE 'ZBI00729'.
       01  MOD-ZMT00734              PIC X(8) VALUE 'ZMT00734'.
       01  MOD-ZBI00755              PIC X(8) VALUE 'ZBI00755'.
       01  MOD-ZPA00787              PIC X(8) VALUE 'ZPA00787'.
       01  MOD-ZCL00812              PIC X(8) VALUE 'ZCL00812'.
       01  MOD-ZMT00650              PIC X(8) VALUE 'ZMT00650'.
       01  MOD-ZMT00736              PIC X(8) VALUE 'ZMT00736'.
       01  MOD-ZCU00665              PIC X(8) VALUE 'ZCU00665'.
       01  MOD-ZBI00837              PIC X(8) VALUE 'ZBI00837'.
       01  MOD-ZEN00633              PIC X(8) VALUE 'ZEN00633'.
       01  MOD-ZRE00709              PIC X(8) VALUE 'ZRE00709'.
       01  MOD-ZEN00817              PIC X(8) VALUE 'ZEN00817'.
       01  MOD-ZHO00692              PIC X(8) VALUE 'ZHO00692'.
       01  MOD-ZEN00727              PIC X(8) VALUE 'ZEN00727'.
       01  MOD-ZBI00667              PIC X(8) VALUE 'ZBI00667'.
       01  MOD-ZMT00706              PIC X(8) VALUE 'ZMT00706'.
       01  MOD-ZCL00731              PIC X(8) VALUE 'ZCL00731'.
       01  MOD-ZEN00651              PIC X(8) VALUE 'ZEN00651'.
       01  MOD-ZMT00676              PIC X(8) VALUE 'ZMT00676'.
       01  MOD-ZCL00782              PIC X(8) VALUE 'ZCL00782'.
       01  MOD-ZMT00807              PIC X(8) VALUE 'ZMT00807'.
       01  MOD-ZHO00763              PIC X(8) VALUE 'ZHO00763'.
       01  MOD-ZEN00760              PIC X(8) VALUE 'ZEN00760'.
       01  MOD-ZMT00655              PIC X(8) VALUE 'ZMT00655'.
       01  MOD-ZCU00850              PIC X(8) VALUE 'ZCU00850'.
       01  MOD-ZCL00803              PIC X(8) VALUE 'ZCL00803'.
       01  MOD-ZBI00854              PIC X(8) VALUE 'ZBI00854'.
       01  MOD-ZRE00656              PIC X(8) VALUE 'ZRE00656'.
       01  MOD-ZHO00833              PIC X(8) VALUE 'ZHO00833'.
       01  MOD-ZAG00774              PIC X(8) VALUE 'ZAG00774'.
       01  MOD-ZMT00642              PIC X(8) VALUE 'ZMT00642'.
       01  MOD-ZAG00816              PIC X(8) VALUE 'ZAG00816'.
       01  MOD-ZRE00697              PIC X(8) VALUE 'ZRE00697'.
       01  MOD-ZPA00844              PIC X(8) VALUE 'ZPA00844'.
       01  MOD-ZMT00723              PIC X(8) VALUE 'ZMT00723'.
       01  MOD-ZPA00639              PIC X(8) VALUE 'ZPA00639'.
       01  MOD-ZHO00675              PIC X(8) VALUE 'ZHO00675'.
       01  MOD-ZMT00768              PIC X(8) VALUE 'ZMT00768'.
       01  MOD-ZMT00764              PIC X(8) VALUE 'ZMT00764'.
       01  MOD-ZRE00725              PIC X(8) VALUE 'ZRE00725'.
       01  MOD-ZHO00670              PIC X(8) VALUE 'ZHO00670'.
       01  MOD-ZMT00757              PIC X(8) VALUE 'ZMT00757'.
       01  MOD-ZUW00761              PIC X(8) VALUE 'ZUW00761'.
       01  MOD-ZBI00740              PIC X(8) VALUE 'ZBI00740'.

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
               PERFORM CALL-ZCL00810-001.
               PERFORM CALL-ZMT00791-002.
               PERFORM CALL-ZBI00715-003.
               PERFORM CALL-ZUW00839-004.
               PERFORM CALL-ZMT00861-006.
               PERFORM CALL-ZCL00698-007.
               PERFORM CALL-ZUW00714-008.
               PERFORM CALL-ZCL00776-009.
               PERFORM CALL-ZCL00759-010.
               PERFORM CALL-ZEN00687-011.
               PERFORM CALL-ZCL00635-012.
               PERFORM CALL-ZHO00681-013.
               PERFORM CALL-ZEN00739-014.
               PERFORM CALL-ZAG00809-015.
               PERFORM CALL-ZMT00678-016.
               PERFORM CALL-ZAG00747-017.
               PERFORM CALL-ZMT00735-018.
               PERFORM CALL-ZMT00653-019.
               PERFORM CALL-ZHO00792-020.
               PERFORM CALL-ZMT00811-021.
               PERFORM CALL-ZPA00726-022.
               PERFORM CALL-ZBI00777-023.
               PERFORM CALL-ZCL00730-024.
               PERFORM CALL-ZAG00780-025.
               PERFORM CALL-ZEN00695-026.
               PERFORM CALL-ZPA00720-028.
               PERFORM CALL-ZEN00820-029.
               PERFORM CALL-ZMT00704-030.
               PERFORM CALL-ZCL00794-031.
               PERFORM CALL-ZCL00842-032.
               PERFORM CALL-ZMT00770-033.
               PERFORM CALL-ZMT00716-034.
               PERFORM CALL-ZHO00632-036.
               PERFORM CALL-ZRE00784-037.
               PERFORM CALL-ZHO00745-038.
               PERFORM CALL-ZCU00756-039.
               PERFORM CALL-ZEN00857-040.
               PERFORM CALL-ZHO00843-041.
               PERFORM CALL-ZEN00758-042.
               PERFORM CALL-ZMT00701-043.
               PERFORM CALL-ZRE00749-044.
               PERFORM CALL-ZMT00804-045.
               PERFORM CALL-ZCU00647-046.
               PERFORM CALL-ZHO00796-047.
               PERFORM CALL-ZMT00654-049.
               PERFORM CALL-ZHO00852-050.
               PERFORM CALL-ZPA00834-051.
               PERFORM CALL-ZEN00660-052.
               PERFORM CALL-ZHO00752-053.
               PERFORM CALL-ZHO00806-054.
               PERFORM CALL-ZMT00801-055.
               PERFORM CALL-ZCL00793-056.
               PERFORM CALL-ZMT00851-057.
               PERFORM CALL-ZEN00802-058.
               PERFORM CALL-ZMT00707-059.
               PERFORM CALL-ZPA00717-060.
               PERFORM CALL-ZHO00721-061.
               PERFORM CALL-ZPA00732-062.
               PERFORM CALL-ZBI00685-063.
               PERFORM CALL-ZBI00641-064.
               PERFORM CALL-ZBI00779-065.
               PERFORM CALL-ZHO00846-066.
               PERFORM CALL-ZEN00841-067.
               PERFORM CALL-ZHO00671-068.
               PERFORM CALL-ZMT00781-069.
               PERFORM CALL-ZPA00679-070.
               PERFORM CALL-ZMT00821-071.
               PERFORM CALL-ZMT00797-072.
               PERFORM CALL-ZMT00645-073.
               PERFORM CALL-ZEN00724-074.
               PERFORM CALL-ZAG00646-076.
               PERFORM CALL-ZEN00690-077.
               PERFORM CALL-ZAG00798-078.
               PERFORM CALL-ZHO00683-079.
               PERFORM CALL-ZMT00799-080.
               PERFORM CALL-ZCU00848-081.
               PERFORM CALL-ZUW00849-082.
               PERFORM CALL-ZBI00814-083.
               PERFORM CALL-ZCU00772-085.
               PERFORM CALL-ZHO00649-087.
               PERFORM CALL-ZMT00728-088.
               PERFORM CALL-ZHO00719-089.
               PERFORM CALL-ZCL00648-090.
               PERFORM CALL-ZUW00800-091.
               PERFORM CALL-ZBI00771-092.
               PERFORM CALL-ZCU00634-093.
               PERFORM CALL-ZRE00677-094.
               PERFORM CALL-ZMT00825-095.
               PERFORM CALL-ZRE00659-096.
               PERFORM CALL-ZMT00743-097.
               PERFORM CALL-ZMT00818-098.
               PERFORM CALL-ZMT00819-099.
               PERFORM CALL-ZHO00644-100.
               PERFORM CALL-ZMT00864-101.
               PERFORM CALL-ZHO00657-102.
               PERFORM CALL-ZBI00858-103.
               PERFORM CALL-ZMT00663-104.
               PERFORM CALL-ZPA00712-105.
               PERFORM CALL-ZEN00652-106.
               PERFORM CALL-ZMT00766-107.
               PERFORM CALL-ZHO00795-108.
               PERFORM CALL-ZHO00693-111.
               PERFORM CALL-ZMT00750-114.
               PERFORM CALL-ZEN00860-115.
               PERFORM CALL-ZMT00674-116.
               PERFORM CALL-ZMT00668-117.
               PERFORM CALL-ZCL00778-118.
               PERFORM CALL-ZAG00638-119.
               PERFORM CALL-ZRE00829-120.
               PERFORM CALL-ZHO00722-121.
               PERFORM CALL-ZCU00835-122.
               PERFORM CALL-ZBI00636-123.
               PERFORM CALL-ZRE00823-124.
               PERFORM CALL-ZCU00713-125.
               PERFORM CALL-ZUW00738-126.
               PERFORM CALL-ZCU00744-127.
               PERFORM CALL-ZBI00703-129.
               PERFORM CALL-ZAG00733-130.
               PERFORM CALL-ZEN00751-131.
               PERFORM CALL-ZMT00853-132.
               PERFORM CALL-ZEN00718-133.
               PERFORM CALL-ZCL00831-134.
               PERFORM CALL-ZRE00855-135.
               PERFORM CALL-ZEN00682-136.
               PERFORM CALL-ZMT00691-137.
               PERFORM CALL-ZMT00741-138.
               PERFORM CALL-ZBI00773-139.
               PERFORM CALL-ZMT00856-140.
               PERFORM CALL-ZCL00824-141.
               PERFORM CALL-ZUW00689-142.
               PERFORM CALL-ZCL00658-143.
               PERFORM CALL-ZPA00664-144.
               PERFORM CALL-ZMT00838-145.
               PERFORM CALL-ZCU00840-146.
               PERFORM CALL-ZUW00805-147.
               PERFORM CALL-ZCL00746-148.
               PERFORM CALL-ZUW00783-149.
               PERFORM CALL-ZUW00859-150.
               PERFORM CALL-ZHO00702-151.
               PERFORM CALL-ZRE00710-152.
               PERFORM CALL-ZEN00688-153.
               PERFORM CALL-ZMT00836-154.
               PERFORM CALL-ZRE00828-155.
               PERFORM CALL-ZMT00699-156.
               PERFORM CALL-ZBI00684-158.
               PERFORM CALL-ZCU00775-159.
               PERFORM CALL-ZMT00673-160.
               PERFORM CALL-ZUW00696-161.
               PERFORM CALL-ZUW00640-162.
               PERFORM CALL-ZHO00708-163.
               PERFORM CALL-ZUW00662-164.
               PERFORM CALL-ZAG00762-165.
               PERFORM CALL-ZPA00769-166.
               PERFORM CALL-ZCU00845-167.
               PERFORM CALL-ZRE00643-168.
               PERFORM CALL-ZEN00789-169.
               PERFORM CALL-ZMT00631-170.
               PERFORM CALL-ZEN00822-172.
               PERFORM CALL-ZMT00700-173.
               PERFORM CALL-ZHO00711-174.
               PERFORM CALL-ZCL00862-175.
               PERFORM CALL-ZMT00666-176.
               PERFORM CALL-ZUW00815-177.
               PERFORM CALL-ZAG00813-178.
               PERFORM CALL-ZHO00830-179.
               PERFORM CALL-ZEN00680-180.
               PERFORM CALL-ZMT00847-181.
               PERFORM CALL-ZBI00767-182.
               PERFORM CALL-ZEN00827-183.
               PERFORM CALL-ZRE00863-184.
               PERFORM CALL-ZMT00785-185.
               PERFORM CALL-ZAG00790-186.
               PERFORM CALL-ZMT00748-187.
               PERFORM CALL-ZMT00737-189.
               PERFORM CALL-ZCL00832-190.
               PERFORM CALL-ZBI00729-191.
               PERFORM CALL-ZBI00755-193.
               PERFORM CALL-ZPA00787-194.
               PERFORM CALL-ZCL00812-195.
               PERFORM CALL-ZMT00650-196.
               PERFORM CALL-ZMT00736-197.
               PERFORM CALL-ZBI00837-199.
               PERFORM CALL-ZEN00633-200.
               PERFORM CALL-ZRE00709-201.
               PERFORM CALL-ZEN00817-202.
               PERFORM CALL-ZHO00692-203.
               PERFORM CALL-ZEN00727-204.
               PERFORM CALL-ZBI00667-205.
               PERFORM CALL-ZMT00706-206.
               PERFORM CALL-ZCL00731-207.
               PERFORM CALL-ZMT00676-209.
               PERFORM CALL-ZCL00782-210.
               PERFORM CALL-ZMT00807-211.
               PERFORM CALL-ZHO00763-212.
               PERFORM CALL-ZEN00760-213.
               PERFORM CALL-ZMT00655-214.
               PERFORM CALL-ZCU00850-215.
               PERFORM CALL-ZCL00803-216.
               PERFORM CALL-ZBI00854-217.
               PERFORM CALL-ZRE00656-218.
               PERFORM CALL-ZHO00833-219.
               PERFORM CALL-ZAG00774-220.
               PERFORM CALL-ZMT00642-221.
               PERFORM CALL-ZAG00816-222.
               PERFORM CALL-ZRE00697-223.
               PERFORM CALL-ZPA00844-224.
               PERFORM CALL-ZMT00723-225.
               PERFORM CALL-ZPA00639-226.
               PERFORM CALL-ZHO00675-227.
               PERFORM CALL-ZMT00768-228.
               PERFORM CALL-ZMT00764-229.
               PERFORM CALL-ZRE00725-230.
               PERFORM CALL-ZHO00670-231.
               PERFORM CALL-ZMT00757-232.
               PERFORM CALL-ZUW00761-233.
               PERFORM CALL-ZBI00740-234.
               EXEC CICS RETURN END-EXEC.
      *----------------------------------------------------------------*
       CALL-ZCL00810-001.
               CALL 'ZCL00810' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00810 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00791-002.
               CALL 'ZMT00791' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00791 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00715-003.
               CALL 'ZBI00715' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00715 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00839-004.
               CALL 'ZUW00839' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00839 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00788-005.
               CALL 'ZEN00788' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00788 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00861-006.
               CALL 'ZMT00861' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00861 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00698-007.
               CALL 'ZCL00698' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00698 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00714-008.
               CALL 'ZUW00714' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00714 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00776-009.
               CALL 'ZCL00776' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00776 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00759-010.
               CALL 'ZCL00759' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00759 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00687-011.
               CALL 'ZEN00687' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00687 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00635-012.
               CALL 'ZCL00635' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00635 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00681-013.
               CALL 'ZHO00681' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00681 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00739-014.
               CALL 'ZEN00739' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00739 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00809-015.
               CALL 'ZAG00809' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00809 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00678-016.
               CALL 'ZMT00678' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00678 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00747-017.
               CALL 'ZAG00747' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00747 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00735-018.
               CALL 'ZMT00735' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00735 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00653-019.
               CALL 'ZMT00653' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00653 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00792-020.
               CALL 'ZHO00792' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00792 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00811-021.
               CALL 'ZMT00811' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00811 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00726-022.
               CALL 'ZPA00726' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00726 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00777-023.
               CALL 'ZBI00777' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00777 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00730-024.
               CALL 'ZCL00730' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00730 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00780-025.
               CALL 'ZAG00780' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00780 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00695-026.
               CALL 'ZEN00695' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00695 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00705-027.
               CALL 'ZMT00705' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00705 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00720-028.
               CALL 'ZPA00720' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00720 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00820-029.
               CALL 'ZEN00820' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00820 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00704-030.
               CALL 'ZMT00704' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00704 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00794-031.
               CALL 'ZCL00794' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00794 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00842-032.
               CALL 'ZCL00842' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00842 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00770-033.
               CALL 'ZMT00770' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00770 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00716-034.
               CALL 'ZMT00716' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00716 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00826-035.
               CALL 'ZRE00826' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00826 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00632-036.
               CALL 'ZHO00632' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00632 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00784-037.
               CALL 'ZRE00784' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00784 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00745-038.
               CALL 'ZHO00745' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00745 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00756-039.
               CALL 'ZCU00756' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00756 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00857-040.
               CALL 'ZEN00857' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00857 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00843-041.
               CALL 'ZHO00843' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00843 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00758-042.
               CALL 'ZEN00758' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00758 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00701-043.
               CALL 'ZMT00701' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00701 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00749-044.
               CALL 'ZRE00749' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00749 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00804-045.
               CALL 'ZMT00804' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00804 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00647-046.
               CALL 'ZCU00647' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00647 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00796-047.
               CALL 'ZHO00796' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00796 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00742-048.
               CALL 'ZMT00742' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00742 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00654-049.
               CALL 'ZMT00654' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00654 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00852-050.
               CALL 'ZHO00852' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00852 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00834-051.
               CALL 'ZPA00834' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00834 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00660-052.
               CALL 'ZEN00660' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00660 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00752-053.
               CALL 'ZHO00752' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00752 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00806-054.
               CALL 'ZHO00806' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00806 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00801-055.
               CALL 'ZMT00801' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00801 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00793-056.
               CALL 'ZCL00793' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00793 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00851-057.
               CALL 'ZMT00851' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00851 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00802-058.
               CALL 'ZEN00802' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00802 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00707-059.
               CALL 'ZMT00707' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00707 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00717-060.
               CALL 'ZPA00717' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00717 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00721-061.
               CALL 'ZHO00721' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00721 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00732-062.
               CALL 'ZPA00732' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00732 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00685-063.
               CALL 'ZBI00685' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00685 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00641-064.
               CALL 'ZBI00641' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00641 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00779-065.
               CALL 'ZBI00779' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00779 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00846-066.
               CALL 'ZHO00846' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00846 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00841-067.
               CALL 'ZEN00841' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00841 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00671-068.
               CALL 'ZHO00671' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00671 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00781-069.
               CALL 'ZMT00781' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00781 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00679-070.
               CALL 'ZPA00679' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00679 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00821-071.
               CALL 'ZMT00821' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00821 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00797-072.
               CALL 'ZMT00797' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00797 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00645-073.
               CALL 'ZMT00645' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00645 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00724-074.
               CALL 'ZEN00724' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00724 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00786-075.
               CALL 'ZUW00786' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00786 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00646-076.
               CALL 'ZAG00646' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00646 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00690-077.
               CALL 'ZEN00690' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00690 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00798-078.
               CALL 'ZAG00798' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00798 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00683-079.
               CALL 'ZHO00683' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00683 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00799-080.
               CALL 'ZMT00799' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00799 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00848-081.
               CALL 'ZCU00848' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00848 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00849-082.
               CALL 'ZUW00849' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00849 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00814-083.
               CALL 'ZBI00814' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00814 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00686-084.
               CALL 'ZEN00686' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00686 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00772-085.
               CALL 'ZCU00772' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00772 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00672-086.
               CALL 'ZMT00672' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00672 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00649-087.
               CALL 'ZHO00649' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00649 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00728-088.
               CALL 'ZMT00728' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00728 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00719-089.
               CALL 'ZHO00719' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00719 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00648-090.
               CALL 'ZCL00648' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00648 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00800-091.
               CALL 'ZUW00800' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00800 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00771-092.
               CALL 'ZBI00771' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00771 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00634-093.
               CALL 'ZCU00634' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00634 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00677-094.
               CALL 'ZRE00677' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00677 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00825-095.
               CALL 'ZMT00825' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00825 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00659-096.
               CALL 'ZRE00659' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00659 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00743-097.
               CALL 'ZMT00743' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00743 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00818-098.
               CALL 'ZMT00818' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00818 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00819-099.
               CALL 'ZMT00819' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00819 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00644-100.
               CALL 'ZHO00644' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00644 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00864-101.
               CALL 'ZMT00864' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00864 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00657-102.
               CALL 'ZHO00657' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00657 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00858-103.
               CALL 'ZBI00858' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00858 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00663-104.
               CALL 'ZMT00663' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00663 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00712-105.
               CALL 'ZPA00712' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00712 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00652-106.
               CALL 'ZEN00652' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00652 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00766-107.
               CALL 'ZMT00766' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00766 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00795-108.
               CALL 'ZHO00795' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00795 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00753-109.
               CALL 'ZMT00753' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00753 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00637-110.
               CALL 'ZRE00637' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00637 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00693-111.
               CALL 'ZHO00693' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00693 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00765-112.
               CALL 'ZRE00765' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00765 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00669-113.
               CALL 'ZCU00669' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00669 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00750-114.
               CALL 'ZMT00750' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00750 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00860-115.
               CALL 'ZEN00860' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00860 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00674-116.
               CALL 'ZMT00674' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00674 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00668-117.
               CALL 'ZMT00668' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00668 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00778-118.
               CALL 'ZCL00778' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00778 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00638-119.
               CALL 'ZAG00638' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00638 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00829-120.
               CALL 'ZRE00829' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00829 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00722-121.
               CALL 'ZHO00722' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00722 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00835-122.
               CALL 'ZCU00835' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00835 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00636-123.
               CALL 'ZBI00636' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00636 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00823-124.
               CALL 'ZRE00823' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00823 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00713-125.
               CALL 'ZCU00713' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00713 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00738-126.
               CALL 'ZUW00738' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00738 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00744-127.
               CALL 'ZCU00744' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00744 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00694-128.
               CALL 'ZCL00694' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00694 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00703-129.
               CALL 'ZBI00703' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00703 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00733-130.
               CALL 'ZAG00733' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00733 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00751-131.
               CALL 'ZEN00751' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00751 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00853-132.
               CALL 'ZMT00853' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00853 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00718-133.
               CALL 'ZEN00718' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00718 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00831-134.
               CALL 'ZCL00831' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00831 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00855-135.
               CALL 'ZRE00855' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00855 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00682-136.
               CALL 'ZEN00682' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00682 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00691-137.
               CALL 'ZMT00691' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00691 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00741-138.
               CALL 'ZMT00741' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00741 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00773-139.
               CALL 'ZBI00773' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00773 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00856-140.
               CALL 'ZMT00856' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00856 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00824-141.
               CALL 'ZCL00824' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00824 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00689-142.
               CALL 'ZUW00689' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00689 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00658-143.
               CALL 'ZCL00658' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00658 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00664-144.
               CALL 'ZPA00664' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00664 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00838-145.
               CALL 'ZMT00838' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00838 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00840-146.
               CALL 'ZCU00840' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00840 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00805-147.
               CALL 'ZUW00805' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00805 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00746-148.
               CALL 'ZCL00746' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00746 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00783-149.
               CALL 'ZUW00783' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00783 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00859-150.
               CALL 'ZUW00859' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00859 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00702-151.
               CALL 'ZHO00702' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00702 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00710-152.
               CALL 'ZRE00710' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00710 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00688-153.
               CALL 'ZEN00688' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00688 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00836-154.
               CALL 'ZMT00836' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00836 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00828-155.
               CALL 'ZRE00828' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00828 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00699-156.
               CALL 'ZMT00699' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00699 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00754-157.
               CALL 'ZCU00754' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00754 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00684-158.
               CALL 'ZBI00684' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00684 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00775-159.
               CALL 'ZCU00775' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00775 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00673-160.
               CALL 'ZMT00673' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00673 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00696-161.
               CALL 'ZUW00696' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00696 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00640-162.
               CALL 'ZUW00640' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00640 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00708-163.
               CALL 'ZHO00708' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00708 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00662-164.
               CALL 'ZUW00662' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00662 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00762-165.
               CALL 'ZAG00762' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00762 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00769-166.
               CALL 'ZPA00769' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00769 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00845-167.
               CALL 'ZCU00845' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00845 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00643-168.
               CALL 'ZRE00643' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00643 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00789-169.
               CALL 'ZEN00789' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00789 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00631-170.
               CALL 'ZMT00631' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00631 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00661-171.
               CALL 'ZBI00661' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00661 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00822-172.
               CALL 'ZEN00822' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00822 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00700-173.
               CALL 'ZMT00700' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00700 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00711-174.
               CALL 'ZHO00711' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00711 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00862-175.
               CALL 'ZCL00862' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00862 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00666-176.
               CALL 'ZMT00666' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00666 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00815-177.
               CALL 'ZUW00815' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00815 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00813-178.
               CALL 'ZAG00813' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00813 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00830-179.
               CALL 'ZHO00830' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00830 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00680-180.
               CALL 'ZEN00680' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00680 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00847-181.
               CALL 'ZMT00847' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00847 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00767-182.
               CALL 'ZBI00767' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00767 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00827-183.
               CALL 'ZEN00827' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00827 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00863-184.
               CALL 'ZRE00863' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00863 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00785-185.
               CALL 'ZMT00785' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00785 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00790-186.
               CALL 'ZAG00790' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00790 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00748-187.
               CALL 'ZMT00748' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00748 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00808-188.
               CALL 'ZMT00808' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00808 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00737-189.
               CALL 'ZMT00737' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00737 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00832-190.
               CALL 'ZCL00832' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00832 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00729-191.
               CALL 'ZBI00729' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00729 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00734-192.
               CALL 'ZMT00734' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00734 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00755-193.
               CALL 'ZBI00755' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00755 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00787-194.
               CALL 'ZPA00787' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00787 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00812-195.
               CALL 'ZCL00812' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00812 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00650-196.
               CALL 'ZMT00650' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00650 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00736-197.
               CALL 'ZMT00736' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00736 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00665-198.
               CALL 'ZCU00665' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00665 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00837-199.
               CALL 'ZBI00837' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00837 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00633-200.
               CALL 'ZEN00633' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00633 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00709-201.
               CALL 'ZRE00709' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00709 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00817-202.
               CALL 'ZEN00817' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00817 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00692-203.
               CALL 'ZHO00692' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00692 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00727-204.
               CALL 'ZEN00727' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00727 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00667-205.
               CALL 'ZBI00667' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00667 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00706-206.
               CALL 'ZMT00706' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00706 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00731-207.
               CALL 'ZCL00731' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00731 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00651-208.
               CALL 'ZEN00651' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00651 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00676-209.
               CALL 'ZMT00676' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00676 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00782-210.
               CALL 'ZCL00782' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00782 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00807-211.
               CALL 'ZMT00807' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00807 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00763-212.
               CALL 'ZHO00763' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00763 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN00760-213.
               CALL 'ZEN00760' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN00760 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00655-214.
               CALL 'ZMT00655' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00655 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU00850-215.
               CALL 'ZCU00850' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU00850 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL00803-216.
               CALL 'ZCL00803' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL00803 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00854-217.
               CALL 'ZBI00854' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00854 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00656-218.
               CALL 'ZRE00656' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00656 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00833-219.
               CALL 'ZHO00833' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00833 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00774-220.
               CALL 'ZAG00774' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00774 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00642-221.
               CALL 'ZMT00642' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00642 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG00816-222.
               CALL 'ZAG00816' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG00816 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00697-223.
               CALL 'ZRE00697' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00697 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00844-224.
               CALL 'ZPA00844' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00844 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00723-225.
               CALL 'ZMT00723' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00723 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA00639-226.
               CALL 'ZPA00639' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA00639 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00675-227.
               CALL 'ZHO00675' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00675 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00768-228.
               CALL 'ZMT00768' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00768 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00764-229.
               CALL 'ZMT00764' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00764 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE00725-230.
               CALL 'ZRE00725' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE00725 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO00670-231.
               CALL 'ZHO00670' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO00670 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT00757-232.
               CALL 'ZMT00757' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT00757 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW00761-233.
               CALL 'ZUW00761' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW00761 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI00740-234.
               CALL 'ZBI00740' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI00740 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
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
       END PROGRAM ZMT01004.
