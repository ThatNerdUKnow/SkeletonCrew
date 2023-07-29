extends RigidBody2D

var is_dragging = false
var original_position = Vector2.ZERO

func _input(event):
	if event is InputEventMouseButton:
		# Check if the left mouse button is pressed
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				# Start dragging
				is_dragging = true
				original_position = global_position
			else:
				# Stop dragging
				is_dragging = false

func _physics_process(delta):
	if is_dragging:
		# Get the mouse position in the global coordinate system
		var mouse_pos = get_global_mouse_position()
		
		# Set the position of the RigidBody2D to the mouse position
		global_position = mouse_pos
