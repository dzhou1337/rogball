function simAB(){
	//Decide if we Strikeout, Walk, HBP, Hit, or Fielding out
	//An average hitter vs an average pitcher should generate league-average results over a large sample
	//Basing off 2000 mlb stats:
	//PA’s that involve an IBB are excluded
	//1508/6302 hits per PA ~239/1000
	//608/6302 walks per PA ~96/1000
	//1045/6302 strikeouts per PA ~166/1000
	//52/6302 HBP per PA ~8/1000
	//3089/6302 field outs per PA ~489/1000
	
	//these methods generate numbers act individually as numerators that
	//represent the chance that outcome occurs
	//the denominator is the sum of the numbers
	contactScore = currentBatter.contactRating - currentPitcher.pitchMovementRating
	
	
	walkChance = calcWalk()
	strikeoutChance = calcStrikeout()
	HBPChance = calcHBP()
	ballinplayChance = calcBallinplay()
	
	show_debug_message("walk: "+string(walkChance))
	show_debug_message("K: "+string(strikeoutChance))
	show_debug_message("HBP: "+string(HBPChance))
	show_debug_message("BIP: "+string(ballinplayChance))
	
	var resultDenominator = walkChance + strikeoutChance + HBPChance + ballinplayChance
	var resultRoll = irandom(resultDenominator-1)
	
	show_debug_message("roll: " + string(resultRoll))
	
	if (resultRoll < walkChance){
		show_debug_message("WALK")
		doWalk()
		testPA += 1
		testOnBase += 1
		
		
		
	} else if (resultRoll < walkChance + strikeoutChance){
		show_debug_message("STRIKEOUT")
		doStrikeout()
		testPA += 1
		testAB += 1
		
		
		
	} else if (resultRoll < walkChance + strikeoutChance + HBPChance){
		show_debug_message("HBP")
		doHBP()
		testPA += 1
		testOnBase += 1
		
		
		
	} else {
		show_debug_message("BIP")
		doBIP()
		
	}
	
}