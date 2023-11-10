extends Node2D

@onready var Player = load("res://Player/Player.tscn")
var starting_position = Vector2(200,200)

func _ready():
	pass
	
	
func spawn(pos):
	if not has_node("Player"):
		var player = Player.instantiate()
		player.position = starting_position
		add_child(player)

func _physics_process(_delta):
	spawn(starting_position)
 
