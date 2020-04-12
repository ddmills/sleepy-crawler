extends Node2D
class_name Character, "res://ui/icons/flat/man.png"

const Gender = preload("res://enums/gender.gd")

onready var sprites = get_node("sprites")

export(Gender.gender) var gender setget _set_gender
export(Resource) var race setget _set_race
export(Color) var skin_color setget _set_skin_color


func _set_gender(value):
	gender = value


func _set_race(value):
	race = value


func _set_skin_color(value):
	skin_color = value
