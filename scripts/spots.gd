extends Node2D

@onready var spots := get_tree().get_nodes_in_group("SpotGroup")

var Spot = preload("res://scripts/spot.gd").instantiate()

# Called when the node enters the scene tree for the first time.
func _ready():
	print(Spot)
	print(typeof(Spot))
#	var emptySpots : Array[Spot]
#	spots.filter(func(spot): return true, emptySpots)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func grow_random_flower():
#	randi_range(0, )
	pass
