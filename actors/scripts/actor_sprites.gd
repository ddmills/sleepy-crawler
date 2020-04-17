extends Node2D
class_name ActorSprites, "res://ui/icons/flat/run.png"

onready var body_sprite = get_node("body")
onready var legs_sprite = get_node("legs")
onready var head_feature_sprite = get_node("head_detail")
onready var face_feature_sprite = get_node("face_detail")
onready var head_hair_sprite = get_node("head_hair")
onready var face_hair_sprite = get_node("face_hair")
onready var hand_left_sprite = get_node("hand_left")
onready var hand_right_sprite = get_node("hand_right")
onready var ani = get_node("animation")


func _ready():
	ani.play("run")


func look_direction(direction: Vector2):
	var flip = direction.x < 0;

	body_sprite.flip_h = flip
	legs_sprite.flip_h = flip
	head_feature_sprite.flip_h = flip
	face_feature_sprite.flip_h = flip
	head_hair_sprite.flip_h = flip
	face_hair_sprite.flip_h = flip
	hand_left_sprite.z_index = 1 if flip else -1
	hand_right_sprite.z_index = -1 if flip else 1

