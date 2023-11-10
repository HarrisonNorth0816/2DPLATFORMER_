extends Node

@onready var SM = get_parent()
@onready var enemy = get_node("../..")
var player = null

func _ready():
	await enemy.ready

func start():
	enemy.velocity = Vector2.ZERO
	$Timer.start()

func physics_process(_delta):
	enemy.set_animation("Attacking")

#
#func _on_Timer_timeout():
#	if SM.state_name == "Attack":
#		var target = enemy.attack_target()
#		player = get_node_or_null("/root/Game/Player_Container/Player")
#		if target == player:
#			player.die()
