extends RigidBody2D

@onready var _timer: RandomTimer = $RandomTimer
@export_category("Random Forces")
@export var MAX_FORCE: int = 2000
@export var MIN_FORCE: int = 150

# Called when the node enters the scene tree for the first time.
func _ready():
	_on_random_timer_timeout()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	pass

func _on_random_timer_timeout():
	#print("_on_random_timer_timeout")
	_timer.reset()
	# generate a random force
	var force_magnitude = randi() % (MAX_FORCE - MIN_FORCE) + MIN_FORCE
	var angle = randf() * 2.0 * PI
	var force_vector = Vector2(cos(angle), sin(angle)) * force_magnitude
	
	#print(force_vector)
	apply_central_impulse(force_vector)
