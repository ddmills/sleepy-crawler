extends Node2D
class_name Character, "res://ui/icons/flat/man.png"

const Gender = preload("res://enums/gender.gd")

onready var sprites = get_node("sprites")

export(Resource) var race setget _set_race
export(Gender.gender) var gender setget _set_gender
export(Color) var skin_color setget _set_skin_color
export(Color) var eye_color setget _set_eye_color
export(Resource) var head_feature setget _set_head_feature
export(Resource) var face_feature setget _set_face_feature


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


func _set_head_feature(value):
	head_feature = value
	
	if (!sprites): return
	sprites.on_head_feature_changed(self)


func _set_face_feature(value):
	face_feature = value
	
	if (!sprites): return
	sprites.on_face_feature_changed(self)


func _set_skin_color(value):
	skin_color = value
	
	if (!sprites): return
	sprites.on_skin_color_changed(self)


func _set_eye_color(value):
	eye_color = value
	
	if (!sprites): return
	sprites.on_eye_color_changed(self)
