extends RigidBody2D


# Declare member variables here. 
signal hit

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Ball_body_entered(body):
	if body is KinematicBody2D:
		emit_signal("hit")
		if Input.is_action_pressed("hit"):
			apply_impulse(Vector2(),Vector2(-1000,0))
