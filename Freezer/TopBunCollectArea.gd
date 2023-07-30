extends Area2D

# Load global burger score
@onready var _BurgerState = get_node("/root/BurgerState")
signal TopBunPickup
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	# Check if body entered is the player. This area happens to also collide with a static body
	if body.name == "Player":
		TopBunPickup.emit()
