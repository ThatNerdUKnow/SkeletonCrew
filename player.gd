extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var _animation = $AnimationPlayer
@onready var _sprite = $Sprite2D

var facing_direction = 0

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	#if not is_on_floor():
	#	velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x = Input.get_axis("ui_left", "ui_right")
	var direction_y = Input.get_axis("ui_up","ui_down")
	
	if direction_x != 0:
		facing_direction = direction_x
	
	if direction_x:
		_animation.play("Walk")
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.y,0,SPEED)

	sprite_face_direction()
	move_and_slide()


func sprite_face_direction():
	if facing_direction < 0:
		_sprite.flip_h = true
	else:
		_sprite.flip_h = false


func _on_area_2d_body_entered(body):
	_animation.play("Death")
	#pass # Replace with function body.
