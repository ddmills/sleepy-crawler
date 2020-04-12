extends Node2D
class_name Character, "res://ui/icons/flat/man.png"

const Gender = preload("res://enums/gender.gd")

onready var sprites = get_node("sprites")

export(Resource) var race setget _set_race
export(Gender.gender) var gender setget _set_gender
export(Color) var skin_color setget _set_skin_color


func _ready():
	_set_gender(gender)
	_set_race(race)
	_set_skin_color(race.skin_colors[0])


func _set_gender(value):
	gender = value
	
	if (!sprites): return
	
	sprites.on_gender_changed(self)


func _set_race(value):
	race = value
	
	if (!sprites): return
	
	sprites.queue_free()
	sprites = race.sprite_container.instance()
	add_child(sprites)
	sprites.init(self)


func _set_skin_color(value):
	skin_color = value
	
	if (!sprites): return
	sprites.on_skin_color_changed(self)
