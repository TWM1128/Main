extends CharacterBody2D
var speed:float=300
func _physics_process(delta: float) -> void:
	if(Input.is_action_pressed("move left")):
		velocity.x=-speed
	elif(Input.is_action_pressed("move right")):
		velocity.x=speed
	else:
		velocity.x=0
	print(position.x)
	move_and_slide()
	position.x=clampf(position.x,0,1152)
	pass
