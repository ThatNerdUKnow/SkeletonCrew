extends RigidBody2D

var isAttached: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	z_index = -position.y + 1000
	pass




func _on_stack_area_body_entered(body):
	if !isAttached:
		self.add_child(body)
		isAttached = true
		
	
	pass # Replace with function body.
