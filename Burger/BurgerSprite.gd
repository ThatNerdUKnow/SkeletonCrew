extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_player_burger_item_added(step):
	match step:
		0:
			self.play("Step0")
		1:
			self.play("Step1")
		2:
			self.play("Step2")
		3:
			self.play("Step3")
		4:
			self.play("Step4")
	pass # Replace with function body.
