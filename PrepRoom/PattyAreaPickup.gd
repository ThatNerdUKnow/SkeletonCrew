extends Area2D

@onready var _BurgerState = get_node("/root/BurgerState")
signal PattyPickedUp
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if _BurgerState.BurgerStep == 1:
		PattyPickedUp.emit()
	pass # Replace with function body.
