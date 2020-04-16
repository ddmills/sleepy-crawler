extends Node2D

const Races = preload("res://characters/races/races.gd")
const Gender = preload("res://enums/gender.gd")
const Rnd = preload("res://misc/rnd.gd")

onready var character = get_node("player/character")
onready var label = get_node("control/label")


func _ready():
	_randomize_character()
	pass


func _on_random_btn_pressed():
	_randomize_character()


func _randomize_character():
	randomize()
	var race = Rnd.pick(Races.all)
	var gender = Rnd.pick([Gender.MALE, Gender.FEMALE])
	
	character.attributes.race = race
	character.attributes.gender = gender
	character.appearance.skin_color = Rnd.pick(race.skin_colors)
	character.appearance.eye_color = Rnd.pick(race.eye_colors)
	character.appearance.hair_color = Rnd.pick(race.hair_colors)
	character.appearance.face_feature = Rnd.pick(race.face_features)
	character.appearance.head_feature = Rnd.pick(race.head_features)
	character.appearance.head_hair = Rnd.pick(race.get_hair_textures(gender))
	character.appearance.face_hair = Rnd.pick(race.get_face_hair_textures(gender))
	
	var genderStr = Gender.to_string_lower(gender)
	var raceStr = race.name_singular
	
	label.text = "%s %s" % [genderStr, raceStr]
