extends Area2D

@onready var _TransitionState = get_node("/root/KitchenTransitionState")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print(body)
	if body.name == "Player":
		_TransitionState.entrance = _TransitionState.entranceVariant.PrepRoom
		get_tree().change_scene_to_file("res://PrepRoom/PrepRoom.tscn")
	pass # Replace with function body.
