extends Polygon2D
class_name ScurryArea

var aa_bounding_box: RectangleShape2D
# Called when the node enters the scene tree for the first time.
func _ready():
	calc_aa_bounding_box(self.polygon)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func calc_aa_bounding_box(polygon:PackedVector2Array): 
	# find min and max x and y
	var min_x
	var min_y
	var max_x
	var max_y
	
	for point in polygon:
		if min_x == null:
			min_x = point.x
			max_x = point.x
			min_y = point.y
			max_y = point.y
			pass
		min_x = min(min_x,point.x)
		max_x = max(max_x,point.x)
		min_y = min(min_y,point.y)
		max_y = min(max_y,point.y)
	
	# set dimensions of aa_bounding_box
	var delta_x = max_x - min_x
	var delta_y = max_y - min_y
	
	aa_bounding_box
