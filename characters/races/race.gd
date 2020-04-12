extends Resource
class_name Race, "res://ui/icons/flat/hand.png"

const CharacterSize = preload("res://enums/character_size.gd")
const Gender = preload("res://enums/gender.gd")

export(String) var name_singular
export(String) var name_plural

export(CharacterSize.size) var size
export(PackedScene) var sprite_container

export(Texture) var body_male
export(Texture) var body_female
export(Texture) var legs_male
export(Texture) var legs_female

export(Array, Color) var skin_colors
export(Array, Color) var hair_colors


func get_body_texture(gender):
	match gender:
		Gender.gender.MALE:
			return body_male
		Gender.gender.FEMALE:
			return body_female


func get_legs_texture(gender):
	match gender:
		Gender.gender.MALE:
			return legs_male
		Gender.gender.FEMALE:
			return legs_female
