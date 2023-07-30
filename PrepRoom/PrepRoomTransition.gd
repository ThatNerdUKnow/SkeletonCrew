extends Node

enum entranceVariant {Kitchen, Freezer}

var entrance = entranceVariant.Kitchen

@export var FreezerEntrance: Vector2 = Vector2(21,-101)
@export var KitchenEntrance: Vector2 = Vector2(21,500)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
