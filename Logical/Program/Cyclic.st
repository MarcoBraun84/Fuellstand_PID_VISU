
PROGRAM _CYCLIC
	
	(* http://localhost:81/index.html?visuId=FirstVisu *)
	
	IF(varSimulation) THEN
		dh := (Kr * (1 + 2 * BOOL_TO_INT(DoVentilAblass_Y002)) * h) + (Kp * REAL_TO_INT(PID.Out) / 100);
		h := h + dh;
		varFuellstandOben := h * 100;
		varPumpe := 0;
	ELSE
		varFuellstandOben := INT_TO_REAL(AiFuellstandTank_L001) / 232.0;
		IF(DiTankB002Leer_L002L) THEN
			varPumpe := 0;
		ELSE
			varPumpe := REAL_TO_INT(PID.Out);
		END_IF
	END_IF
	
	IF((varSollFuellstand >= 20) AND (varSollFuellstand <= 100))THEN
		varPidEnb := TRUE;
		
		IF((varFuellstandOben - varSollFuellstand) >= 10.0)THEN
			DoVentilAblass_Y002 := TRUE;
		ELSE
			DoVentilAblass_Y002 := FALSE;
		END_IF
	ELSE
		varPidEnb := FALSE;
		DoVentilAblass_Y002 := TRUE;
	END_IF

	AoPumpe_P001 := varPumpe * 320;
	varFuellstandUnten := 100 - varFuellstandOben;
	
	(* call function block *)
	PID.SetValue := varSollFuellstand;
	PID.ActValue := varFuellstandOben;
	PID.Enable := varPidEnb;
	PID.PIDParameters.Gain := varPID_P;
	PID.PIDParameters.IntegrationTime := varPID_I;
	PID();
	
END_PROGRAM
