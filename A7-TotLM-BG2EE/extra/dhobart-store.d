// Subcomponent: Allow to trade with Hobart before starting the adventure

EXTEND_TOP ~DHOBART~ 8
  IF ~Global("ID#Know_Hobart_Store","GLOBAL",0)~ THEN REPLY @91120 DO ~SetGlobal("ID#Know_Hobart_Store","GLOBAL",1)~ GOTO Hobart.AskedStore.1
END

EXTEND_BOTTOM ~DHOBART~ 12 #1
  IF ~Global("ID#Know_Hobart_Store","GLOBAL",1)~ THEN REPLY @27159 DO ~StartStore("Hobart",LastTalkedToBy)~ EXIT
END

APPEND ~DHOBART~
  IF ~~ THEN BEGIN Hobart.AskedStore.1
    SAY @91121 /* Yes, of course. But I couldn't get at the treasure inside the castle yet. That's what I need heroes for. */
    IF ~~ THEN REPLY @91122 /* Did you find anything of worth in the castle at all? */ GOTO Hobart.AskedStore.2
  END

  IF ~~ THEN BEGIN Hobart.AskedStore.2
    SAY @91123 /* Well, I've collected a few bits and pieces of treasure from the castle ruins. */
    IF ~~ THEN REPLY @27159 GOTO 25
  END
END
