extends Timer
class_name RandomTimer

@export_category("Random Wait Time Parameters")
@export var MIN_WAIT_TIME: int
@export var MAX_WAIT_TIME: int
# Called when the node enters the scene tree for the first time.
func _ready():
	reset()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func reset():
	self.wait_time = randi_range(MIN_WAIT_TIME,MAX_WAIT_TIME)
	self.start()
