BEGIN ~DCHALS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @27523
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("nwSpwnT1")
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1
  SAY @27524
  IF ~~ THEN DO ~GiveItemCreate("Tale3",LastTalkedToBy,1,0,0)
AddXP2DA("ID_Level_10_Hard")
StartCutSceneMode()
StartCutScene("csGBrdEx")
~ EXIT
END
