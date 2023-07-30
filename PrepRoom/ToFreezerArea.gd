extends Area2D

@onready var _TransitionState = get_node("/root/PrepRoomTransition")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print("ToFreezerArea",body)
	if body.name == "Player":
		_TransitionState.entrance = _TransitionState.entranceVariant.Freezer
		get_tree().change_scene_to_file("res://Freezer/Freezer.tscn")
	pass # Replace with function body.
