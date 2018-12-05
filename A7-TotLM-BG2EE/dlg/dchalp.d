BEGIN ~DCHALP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @27521
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("seSpwnH")
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1
  SAY @27522
  IF ~~ THEN DO ~GiveItemCreate("Tale4",LastTalkedToBy,1,0,0)
AddXP2DA("ID_Level_10_Hard")
StartCutSceneMode()
StartCutScene("csGBrdEx")
~ EXIT
END
