function drawLineup(x,y,lineoffset,lineupToDraw,isHome){
	
	for (var i = 0; i < 9; i++){
		var baller =  getBallerByID(lineupToDraw[i])
		
		displayString = baller.firstName + " " + baller.lastName
		
		if ((isHome && i == currentHomeBatterIndex) || 
		   (!isHome && i == currentAwayBatterIndex)){
			
		displayString = displayString + " <"
		
		}

		draw_text(x,y+lineoffset*i, displayString)

	}
}