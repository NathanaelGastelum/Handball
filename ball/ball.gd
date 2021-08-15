extends RigidBody2D

# Declare member variables here. 
export var speed = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("hit"):
		print("hit pressed 2")
		rotation = get_global_mouse_position().angle_to_point(position)
		apply_impulse(Vector2(), Vector2(speed, 0).rotated(rotation)) # TODO: fix this


func _on_Hurtbox_area_entered(_area):
	pass
