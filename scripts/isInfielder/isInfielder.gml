function isInfielder(fielder){
	switch(fielder){
		case "PITCHER":
		case "CATCHER":
		case "1B":
		case "2B":
		case "3B":
		case "SS":
			return true
		default:
			return false
	}
}