extends Button

@onready var _BurgerState = get_node("/root/BurgerState")
@onready var _KitchenTransition = get_node("/root/KitchenTransitionState")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	_BurgerState.BurgerStep = 0
	_KitchenTransition.entrance = _KitchenTransition.entranceVariant.Carryout
	get_tree().change_scene_to_file("res://Kitchen/kitchen.tscn")
	pass # Replace with function body.
