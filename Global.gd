extends Node

var coins = 0
var score = 0
var time = 0
var death_zone = 1300



func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()

func add_coin():
	coins += 1
	var Coins = get_node("/root/Game/UI/HUD/Coins")
	if Coins != null:
		Coins.text = "Eddies: " + str(coins)


func update_score(s):
	score += s
	var HUD = get_node_or_null("/root/Game/UI/HUD")
	if HUD != null:
		HUD.update_score()
		
func update_time(t):
	time += t
	var HUD = get_node_or_null("/root/Game/UI/HUD")
	if HUD != null:
		HUD.update_time()
