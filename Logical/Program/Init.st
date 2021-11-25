

PROGRAM _INIT
	(* SIMULATION *)
	varSimulation := 1;
	tzyk := 0.1;
	Kr := -0.019 * tzyk;
	Kp := 0.035 * tzyk;
	h := 0;
	
	(* PID parameters *)
	varPID_P := 5;
	varPID_I := 5;
	PID.PIDParameters.DerivativeTime := 0.0;
	PID.PIDParameters.FilterTime := 0.0;
	(* output limits *)
	PID.MinOut := 0;
	PID.MaxOut := 100;
	PID.Enable := FALSE;
	
	 
END_PROGRAM