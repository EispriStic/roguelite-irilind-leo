extends Control
var noise
var timeDict
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():	
	timeDict = OS.get_time();
	noise = OpenSimplexNoise.new()
	
	noise.seed = Globals.rng.randi()
	noise.octaves = 4
	noise.period = 20.0
	noise.persistence = 0.8
	
	print("Values:")
	print(noise.get_noise_2d(-1.0, -1.0)/2+0.5)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
