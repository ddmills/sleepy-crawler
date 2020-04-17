extends Resource
class_name Race, "res://ui/icons/flat/hand.png"

const ActorSize = preload("res://enums/actor_size.gd")
const Gender = preload("res://enums/gender.gd")

export(String) var name_singular
export(String) var name_plural

export(ActorSize.size) var size
export(PackedScene) var sprite_container

export(Texture) var body_male
export(Texture) var body_female
export(Texture) var legs_male
export(Texture) var legs_female

export(Array, Texture) var head_features
export(Array, Texture) var face_features

export(Array, Texture) var male_hair
export(Array, Texture) var female_hair
export(Array, Texture) var male_face_hair
export(Array, Texture) var female_face_hair

export(Array, Color) var skin_colors
export(Array, Color) var hair_colors
export(Array, Color) var eye_colors

export(int) var str_mod = 0
export(int) var dex_mod = 0
export(int) var wis_mod = 0
export(int) var int_mod = 0
export(int) var cha_mod = 0
export(int) var con_mod = 0


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


func get_hair_textures(gender):
	match gender:
		Gender.gender.MALE:
			return male_hair
		Gender.gender.FEMALE:
			return female_hair


func get_face_hair_textures(gender):
	match gender:
		Gender.gender.MALE:
			return male_face_hair
		Gender.gender.FEMALE:
			return female_face_hair
