extends Node2D
class_name CharacterAttributes, "res://ui/icons/flat/graph.png"

const Gender = preload("res://enums/gender.gd")

signal race_changed(race)
signal gender_changed(gender)

export(Resource) var race setget _set_race
export(Gender.gender) var gender setget _set_gender


func _set_race(value):
	race = value
	emit_signal("race_changed", race)


func _set_gender(value):
	gender = value
	emit_signal("gender_changed", gender)
