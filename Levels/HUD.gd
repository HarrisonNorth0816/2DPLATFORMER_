extends Control

func update_score():
	$Score.text = "Score: " + str(Global.score + Global.time)

func update_time():
	$Time.text = "Time: " + str(Global.time)


func _on_timer_timeout():
	Global.update_time(1)
	Global.update_score(1)
