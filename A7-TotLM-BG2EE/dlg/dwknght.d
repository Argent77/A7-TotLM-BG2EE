BEGIN ~DWKNGHT~

IF ~  Global("ID#Spirits_Freed","GLOBAL",0)
~ THEN BEGIN 0
  SAY @27541
  IF ~~ THEN DO ~SetGlobal("ID#Spirits_Freed","GLOBAL",1)
StartCutSceneMode()
StartCutScene("csGBrdEx")
~ EXIT
END

IF ~  Global("ID#Spirits_Freed","GLOBAL",1)
~ THEN BEGIN 1
  SAY @27542
  IF ~~ THEN DO ~SetGlobal("ID#Spirits_Freed","GLOBAL",2)
StartCutSceneMode()
StartCutScene("csGBrdEx")
~ EXIT
END

IF ~  Global("ID#Spirits_Freed","GLOBAL",2)
~ THEN BEGIN 2
  SAY @27543
  IF ~~ THEN DO ~SetGlobal("ID#Spirits_Freed","GLOBAL",3)
StartCutSceneMode()
StartCutScene("csGBrdEx")
~ EXIT
END

IF ~  Global("ID#Spirits_Freed","GLOBAL",3)
~ THEN BEGIN 3
  SAY @27544
  IF ~~ THEN DO ~SetGlobal("ID#Spirits_Freed","GLOBAL",4)
SetGlobal("ID#Master_Quest","GLOBAL",3)
AddXP2DA("ID_Level_12_Hard")
StartCutSceneMode()
StartCutScene("csGBrdEx")
~ EXIT
END
