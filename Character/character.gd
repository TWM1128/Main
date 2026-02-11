extends CharacterBody2D
@export var SPEED:float=200
@export var GRAVITY:float=5500
@export var JUMP_POWER:float=5150
func _physics_process(delta: float) -> void:
	if(Input.is_action_pressed("move left")):
		velocity.x=-SPEED
	elif(Input.is_action_pressed("move right")):
		velocity.x=SPEED
	else:
		velocity.x=0
	if(!is_on_floor()):
		velocity.y += GRAVITY * delta
	else:
		velocity.y = 0
	if(Input.is_action_just_pressed("jump") and is_on_floor()):
		velocity.y = -JUMP_POWER
	move_and_slide()
	position.x=clampf(position.x,40,1110)
	if(velocity.x==0):
		$AnimatedSprite2D.play("Idle")
	else:
		$AnimatedSprite2D.play("Walking")
	if(velocity.x==-SPEED):
		$AnimatedSprite2D.flip_h=true
	elif(velocity.x==SPEED):
		$AnimatedSprite2D.flip_h=false
	pass
	
	
