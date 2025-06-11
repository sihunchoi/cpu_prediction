verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_OneSearch
debImport "-sv" "-f" "run.f"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "0" "0" "1280" "1376"
verdiWindowResize -win $_Verdi_1 "0" "0" "1280" "1376"
schCreateWindow -delim "." -win $_nSchema1 -scope "flopenr"
wvCreateWindow
verdiSetActWin -win $_nWave3
wvRestoreSignal -win $_nWave3 \
           "/home1/std251_12/cpu2025-quartus-/week1x_final_project/hardware/61.RV32I_sync_isa_tests/sim/func_sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvUnknownSaveResult -win $_nWave3 -clear
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvZoomIn -win $_nWave3
wvSetCursor -win $_nWave3 869.714087 -snap {("G1" 1)}
wvSelectSignal -win $_nWave3 {( "G2" 3 )} 
wvSetPosition -win $_nWave3 {("G2" 3)}
wvSetPosition -win $_nWave3 {("G2" 2)}
wvSetPosition -win $_nWave3 {("G2" 1)}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 32)}
wvSetPosition -win $_nWave3 {("G1" 31)}
wvSetPosition -win $_nWave3 {("G1" 28)}
wvSetPosition -win $_nWave3 {("G1" 26)}
wvSetPosition -win $_nWave3 {("G1/back_predition" 0)}
wvSetPosition -win $_nWave3 {("G1" 22)}
wvSetPosition -win $_nWave3 {("G1/targetD" 0)}
wvSetPosition -win $_nWave3 {("G1" 18)}
wvSetPosition -win $_nWave3 {("G1" 17)}
wvSetPosition -win $_nWave3 {("G1" 16)}
wvSetPosition -win $_nWave3 {("G1" 14)}
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSelectSignal -win $_nWave3 {( "G2" 1 )} 
wvSetPosition -win $_nWave3 {("G2" 1)}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 32)}
wvSetPosition -win $_nWave3 {("G1" 31)}
wvSetPosition -win $_nWave3 {("G1" 27)}
wvSetPosition -win $_nWave3 {("G1/back_predition" 0)}
wvSetPosition -win $_nWave3 {("G1" 24)}
wvSetPosition -win $_nWave3 {("G1" 19)}
wvSetPosition -win $_nWave3 {("G1" 18)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetCursor -win $_nWave3 831.696148 -snap {("G1" 1)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 2
wvScrollDown -win $_nWave3 10
wvSelectSignal -win $_nWave3 {( "G2" 15 )} 
wvSetPosition -win $_nWave3 {("G2" 15)}
wvSetPosition -win $_nWave3 {("G2" 14)}
wvSetPosition -win $_nWave3 {("G2" 12)}
wvSetPosition -win $_nWave3 {("G2" 6)}
wvSetPosition -win $_nWave3 {("G1" 34)}
wvSetPosition -win $_nWave3 {("G1" 24)}
wvSetPosition -win $_nWave3 {("G1" 16)}
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSelectSignal -win $_nWave3 {( "G1" 29 )} 
wvSetPosition -win $_nWave3 {("G1" 29)}
wvSetPosition -win $_nWave3 {("G1" 28)}
wvSetPosition -win $_nWave3 {("G1" 26)}
wvSetPosition -win $_nWave3 {("G1" 21)}
wvSetPosition -win $_nWave3 {("G1" 15)}
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvScrollDown -win $_nWave3 4
wvSelectSignal -win $_nWave3 {( "G2" 1 )} 
wvSetPosition -win $_nWave3 {("G2" 1)}
wvSetPosition -win $_nWave3 {("G1" 35)}
wvSetPosition -win $_nWave3 {("G1" 34)}
wvSetPosition -win $_nWave3 {("G1" 24)}
wvSetPosition -win $_nWave3 {("G1" 21)}
wvSetPosition -win $_nWave3 {("G1" 14)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 2
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSelectSignal -win $_nWave3 {( "G1" 3 4 )} 
verdiWindowResize -win $_Verdi_1 -731 "131" "852" "904"
verdiWindowResize -win $_Verdi_1 -10 "19" "960" "1016"
verdiWindowResize -win $_Verdi_1 -10 "131" "852" "904"
verdiWindowResize -win $_Verdi_1 -10 "19" "960" "1016"
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
verdiWindowResize -win $_Verdi_1 -10 "126" "852" "904"
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
verdiWindowResize -win $_Verdi_1 -10 "19" "960" "1016"
wvSaveSignal -win $_nWave3 \
           "/home1/std251_12/cpu2025-quartus-/week1x_final_project/hardware/61.RV32I_sync_isa_tests/sim/func_sim/signal.rc"
wvSetCursor -win $_nWave3 960.192327 -snap {("G1" 18)}
debExit
