extends Node2D

@onready var _TransitionState = get_node("/root/PrepRoomTransition")
@onready var _player = $Player
# Called when the node enters the scene tree for the first time.
func _ready():
	print("Prep Room Ready")
	if _TransitionState.entrance == _TransitionState.entranceVariant.Kitchen:
		print("Setting position to Kitchen Entrance")
		_player.position = _TransitionState.KitchenEntrance
	else:
		print("Setting position to Freezer Entrance")
		_player.position = _TransitionState.FreezerEntrance
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
