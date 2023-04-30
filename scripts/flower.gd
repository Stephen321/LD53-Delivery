extends Node2D

enum FlowerColour
{
	YELLOW,
	BLUE,
	RED,
	GREEN,
	PURPLE
}

@export var colour : FlowerColour : set = set_flower_colour
@onready var sprite: Sprite2D = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	set_flower_colour(colour)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func set_flower_colour(value):
	colour = value
	if sprite:
		sprite.material.set_shader_parameter("colour", get_flower_colour_from_enum(value))
	
func get_flower_colour_from_enum(flower_colour):
	match (flower_colour):
		FlowerColour.YELLOW:
			return Color.YELLOW
		FlowerColour.BLUE:
			return Color.CORNFLOWER_BLUE
		FlowerColour.RED:
			return Color.INDIAN_RED
		FlowerColour.GREEN:
			return Color.LIGHT_GREEN
		FlowerColour.PURPLE:
			return Color.MEDIUM_PURPLE
