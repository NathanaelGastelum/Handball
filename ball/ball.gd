extends RigidBody2D


# Declare member variables here. 
signal hit

# Called when the node enters the scene tree for the first time.
func _ready():
	apply_impulse(Vector2(),Vector2(-100,0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Ball_body_entered(body):
	if body is KinematicBody2D:
		emit_signal("hit")
		apply_impulse(Vector2(),Vector2(-100,0))
