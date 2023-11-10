extends TextureRect

func update_score():
	$FinalScore.text = "Score: " + str(Global.score + Global.time)
