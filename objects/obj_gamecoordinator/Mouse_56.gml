//What is everyone doing the moment a ball is put in play?
with(obj_baller_baserunner){
	decideRunnerAction()
}

with(obj_baller_onfield){
	decideFielderAction()

}

with(obj_base){
	if(reservedBaserunner != -1 && reservedFielder == -1){
		var nearestFielder = findNearestIdleFielder(x,y)
		nearestFielder.baseToCover = base
		nearestFielder.state = ballerState.coveringBase
		reservedFielder = nearestFielder.fielder
	}
}





