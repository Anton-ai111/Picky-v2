extends Label

var timer = Timer.new()  
var loaded = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(timer)
	timer.wait_time = 1.5
	timer.one_shot = true
	timer.start()
	loaded = false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text="Loading..."
	if (!loaded and round(timer.time_left) == 0):
		loaded = true
		get_tree().change_scene_to_file("res://main.tscn")
	
	print("update")
