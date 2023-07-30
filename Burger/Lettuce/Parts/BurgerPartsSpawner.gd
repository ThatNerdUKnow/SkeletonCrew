extends Node2D

var width = ProjectSettings.get("display/window/size/viewport_width")
enum variant {Bottom = 0,Patty = 1,Lettuce = 2,Top = 3}
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_random_timer_timeout():
	pass # Replace with function body.

func GenerateBurgerPart():
	var x = PickRandomXCoord()
	var part = PickRandomVariant()
	
	part.position.x = x
	part.position.y = self.position.y
	self.add_child(part)

func PickRandomXCoord():
	var x_coord = randi_range(0,width)

func PickRandomVariant():
	var randomVariant = randi_range(0,3)
	
	match randomVariant:
		variant.Bottom:
			return BottomBun.new()
			pass
		variant.Patty:
			return Patty.new()
			pass
		variant.Lettuce:
			return Lettuce.new()
			pass
		variant.Top:
			return TopBun.new()
			pass

