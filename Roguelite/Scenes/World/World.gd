extends Node2D

var time = 0.0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	changeTileMap(0.0)

func _process(delta):
	time += delta*5.0
	changeTileMap(time)

func changeTileMap(offset):
	for x in range(-10,10):
		for y in range(-10,10):
			var tile = int(Globals.get_noise_3d(x,y,time)*256.0)
			var tilesheet = 0 
#			if(tile>120):
#				tilesheet = -1
			$TileMap.set_cell(x,y,tilesheet,false,false,false,Vector2(tile,0))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
