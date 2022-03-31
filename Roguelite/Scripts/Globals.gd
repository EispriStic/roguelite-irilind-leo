extends Node


var rng = RandomNumberGenerator.new()
var noise = OpenSimplexNoise.new()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	noise.seed = rng.randi()
	noise.octaves = 4
	noise.period = 20.0
	noise.persistence = 0.8

func get_noise_2d(x,y):
	return noise.get_noise_2d(x,y)/2+0.5
	
func get_noise_3d(x,y,z):
	return noise.get_noise_3d(x,y,z)/2+0.5
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
