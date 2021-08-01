BEGIN ~ID#DMFIG~

IF ~Global("Gone","LOCALS",0) Name("MumFig2",Myself)~ Cleric
  SAY @91110 /* Ahh! Thank you for releasing me from that curse. But I already feel the weight of the centuries, pulling me away from this place. Now I can finally rest in peace. */
  IF ~~ DO ~SetGlobal("Gone","LOCALS",1) AddXPWorth(Myself) ApplySpellRES("IDSP056",Myself)~ EXIT
END

IF ~Global("Gone","LOCALS",0) !Name("MumFig2",Myself)~ Acolyte
  SAY @91111 /* Wha—?! Where am I? What has happened?  Ugh, too weak... can't move. */
  IF ~~ DO ~SetGlobal("Gone","LOCALS",1) AddXPWorth(Myself) ApplySpellRES("IDSP056",Myself)~ EXIT
END
