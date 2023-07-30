extends Node2D

@onready var _TransitionState = get_node("/root/KitchenTransitionState")
@onready var _player = $Player
# Called when the node enters the scene tree for the first time.
func _ready():
	print("Kitchen Scene Ready")
	if _TransitionState.entrance == _TransitionState.entranceVariant.Carryout:
		print("Setting position to carryout entrance")
		_player.position = _TransitionState.CarryoutEntrance
	else:
		print("Setting position to preproom entrance")
		_player.position = _TransitionState.PrepRoomEntrance
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_transition_area_body_entered(body):
	_TransitionState.entrance = _TransitionState.entranceVariant.Carryout
	get_tree().change_scene_to_file("res://Carryout/Carryout.tscn")
