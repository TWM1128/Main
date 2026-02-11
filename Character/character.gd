extends CharacterBody2D
var speed:float=200
func _physics_process(delta: float) -> void:
	if(Input.is_action_pressed("move left")):
		velocity.x=-speed
	elif(Input.is_action_pressed("move right")):
		velocity.x=speed
	else:
		velocity.x=0
	print(position.x)
	move_and_slide()
	position.x=clampf(position.x,40,1110)
	if(velocity.x==0):
		$AnimatedSprite2D.play("Idle")
	else:
		$AnimatedSprite2D.play("Walking")
	if(velocity.x==-speed):
		$AnimatedSprite2D.flip_h=true
	elif(velocity.x==speed):
		$AnimatedSprite2D.flip_h=false
	pass
	
	
