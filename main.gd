extends Node2D

const Races = preload("res://characters/races/races.gd")
const Gender = preload("res://enums/gender.gd")
const Rnd = preload("res://misc/rnd.gd")

onready var character = get_node("character")
onready var label = get_node("control/label")


func _ready():
	_randomize_character()


func _on_random_btn_pressed():
	_randomize_character()


func _randomize_character():
	randomize()
	character.race = Rnd.pick(Races.all)
	character.gender = Rnd.pick([Gender.MALE, Gender.FEMALE])
	character.skin_color = Rnd.pick(character.race.skin_colors)
	character.eye_color = Rnd.pick(character.race.eye_colors)
	character.face_feature = Rnd.pick(character.race.face_features)
	character.head_feature = Rnd.pick(character.race.head_features)
	
	var gender = Gender.to_string_lower(character.gender)
	var race = character.race.name_singular
	
	label.text = "%s %s" % [gender, race]
