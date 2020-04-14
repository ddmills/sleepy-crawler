extends Node2D
class_name CharacterSprites, "res://ui/icons/flat/run.png"

onready var body_sprite = get_node("body")
onready var legs_sprite = get_node("legs")
onready var head_feature_sprite = get_node("head_detail")
onready var face_feature_sprite = get_node("face_detail")
onready var head_hair_sprite = get_node("head_hair")
onready var face_hair_sprite = get_node("face_hair")
onready var ani = get_node("animation")


func _ready():
	ani.play("run")


func init(character):
	legs_sprite.texture = character.attributes.race.get_legs_texture(character.attributes.gender)
	body_sprite.texture = character.attributes.race.get_body_texture(character.attributes.gender)

