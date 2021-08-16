extends RigidBody2D

# Declare member variables here. 
export var speed = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_Hurtbox_area_entered(_area):
	rotation = get_global_mouse_position().angle_to_point(position)
	# TODO: fix impluse so ball can be returned in one hit
	apply_impulse(Vector2(), Vector2(speed, 0).rotated(rotation))
