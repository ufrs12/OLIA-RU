PROGRAM PWMmaster
  VAR
    PWM AT %QW100 : INT;
    PWM_FB AT %IW100 : INT;
    FB_const AT %IW101 : INT;
  END_VAR

  PWM := 55;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : PWMmaster;
  END_RESOURCE
END_CONFIGURATION
