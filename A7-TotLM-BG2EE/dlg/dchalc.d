BEGIN ~DCHALC~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @27519
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @27520
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("csGBrdEx")
~ EXIT
END
