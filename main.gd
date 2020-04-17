extends Node2D

const Races = preload("res://actors/races/races.gd")
const Gender = preload("res://enums/gender.gd")
const Rnd = preload("res://misc/rnd.gd")

onready var actor = get_node("player/actor")
onready var label = get_node("control/label")


func _ready():
	_randomize_actor()
	pass


func _on_random_btn_pressed():
	_randomize_actor()


func _randomize_actor():
	randomize()
	var race = Rnd.pick(Races.all)
	var gender = Rnd.pick([Gender.MALE, Gender.FEMALE])

	actor.attributes.race = race
	actor.attributes.gender = gender
	actor.appearance.skin_color = Rnd.pick(race.skin_colors)
	actor.appearance.eye_color = Rnd.pick(race.eye_colors)
	actor.appearance.hair_color = Rnd.pick(race.hair_colors)
	actor.appearance.face_feature = Rnd.pick(race.face_features)
	actor.appearance.head_feature = Rnd.pick(race.head_features)
	actor.appearance.head_hair = Rnd.pick(race.get_hair_textures(gender))
	actor.appearance.face_hair = Rnd.pick(race.get_face_hair_textures(gender))

	var genderStr = Gender.to_string_lower(gender)
	var raceStr = race.name_singular

	label.text = "%s %s" % [genderStr, raceStr]
