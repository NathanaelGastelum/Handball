extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Player_hit():
	shape_owner_set_disabled(shape_find_owner(0), false)
	
	yield(get_tree().create_timer(.5), "timeout")
	shape_owner_set_disabled(shape_find_owner(0), true)
