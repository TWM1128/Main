extends CharacterBody2D
var speed:float=300
func _physics_process(delta: float) -> void:
	if(Input.is_action_pressed("move left")):
		position.x=position.x-speed*delta
	elif(Input.is_action_pressed("move right")):
		position.x=position.x+speed*delta
	position.x=clampf(position.x,0,1152)
	pass
