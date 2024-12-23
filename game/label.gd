extends Label

var timer : Timer = null 

func _ready() -> void:
	timer = Timer.new()  
	add_child(timer)
	timer.wait_time = 30.0
	timer.one_shot = true
	timer.start()

func _process(delta: float) -> void:
	text = "Time: " + str(round(timer.time_left)) 
