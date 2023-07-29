extends Node2D
class_name AttachPoint

@export var attachedTo: AttachPoint
@export var attachArea: Area2D

var parent = get_parent()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if attachedTo != null:
		var joint = DampedSpringJoint2D.new()
		joint.node_a = parent
		joint.node_b = attachedTo.parent
		
	pass
