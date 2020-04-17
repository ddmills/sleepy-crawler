extends Node2D
class_name ActorAppearance, "res://ui/icons/flat/pen.png"

const Gender = preload("res://enums/gender.gd")

signal skin_color_changed(skin_color)
signal eye_color_changed(eye_color)
signal hair_color_changed(hair_color)
signal hair_feature_changed(hair_feature)
signal face_feature_changed(face_feature)
signal head_hair_changed(head_hair)
signal face_hair_changed(face_hair)

onready var sprites = get_node("sprites")
onready var actor = get_parent().get_parent()

export(Color) var skin_color setget _set_skin_color
export(Color) var eye_color setget _set_eye_color
export(Color) var hair_color setget _set_hair_color
export(Resource) var head_feature setget _set_head_feature
export(Resource) var face_feature setget _set_face_feature
export(Resource) var head_hair setget _set_head_hair
export(Resource) var face_hair setget _set_face_hair


func _ready():
	sprites.ani.play("run")


func _process(delta):
	sprites.look_direction(actor.body.look_direction)


func _on_race_changed(race):
	sprites.queue_free()
	sprites = race.sprite_container.instance()
	add_child(sprites)


func _on_gender_changed(value):
	sprites.legs_sprite.texture = actor.attributes.race.get_legs_texture(value)
	sprites.body_sprite.texture = actor.attributes.race.get_body_texture(value)


func _set_head_feature(value):
	head_feature = value
	sprites.head_feature_sprite.texture = head_feature
	emit_signal("head_feature_changed", head_feature)


func _set_face_hair(value):
	face_hair = value
	sprites.face_hair_sprite.texture = face_hair
	emit_signal("face_hair_changed", face_hair)


func _set_head_hair(value):
	head_hair = value
	sprites.head_hair_sprite.texture = head_hair
	emit_signal("head_hair_changed", head_hair)


func _set_face_feature(value):
	face_feature = value
	sprites.face_feature_sprite.texture = face_feature
	emit_signal("face_feature_changed", face_feature)


func _set_skin_color(value):
	skin_color = value
	sprites.material.set_shader_param("skin_replace", skin_color)
	emit_signal("skin_color_changed", skin_color)


func _set_eye_color(value):
	eye_color = value
	sprites.material.set_shader_param("eye_replace", eye_color)
	emit_signal("eye_color_changed", eye_color)


func _set_hair_color(value):
	hair_color = value
	sprites.material.set_shader_param("hair_replace", hair_color)
	emit_signal("hair_color_changed", hair_color)
