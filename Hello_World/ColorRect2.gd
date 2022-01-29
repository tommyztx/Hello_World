extends ColorRect

var a = 0
var transparency= 0
onready var timer = get_node("Timer")

func _ready():
	timer.set_wait_time(11)
	timer.start()

func _process(delta):
	
	if (timer.get_time_left() > 1):
		print(timer.get_time_left())
		a += 1
		a %= 30
		if(a == 0):
			transparency += 1
			transparency %= 2
			
		modulate.a = transparency
	else:
		timer.stop()
