extends Node2D
class_name CharacterSprites, "res://ui/icons/flat/run.png"

onready var body_sprite = get_node("body")
onready var legs_sprite = get_node("legs")
onready var head_feature_sprite = get_node("head_detail")
onready var face_feature_sprite = get_node("face_detail")
onready var ani = get_node("animation")


func init(character):
	on_gender_changed(character)
	on_skin_color_changed(character)
	ani.play("run")


func on_gender_changed(character):
	legs_sprite.texture = character.race.get_legs_texture(character.gender)
	body_sprite.texture = character.race.get_body_texture(character.gender)


func on_skin_color_changed(character):
	material.set_shader_param("skin_replace", character.skin_color)


func on_eye_color_changed(character):
	material.set_shader_param("eye_replace", character.eye_color)


func on_head_feature_changed(character):
	head_feature_sprite.texture = character.head_feature


func on_face_feature_changed(character):
	face_feature_sprite.texture = character.face_feature
