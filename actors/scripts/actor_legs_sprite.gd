extends Resource

const Gender = preload("res://enums/gender.gd")

export(Texture) var male_texture
export(Texture) var female_texture


func get_texture_for_gender(gender):
	match gender:
		Gender.MALE:
			return male_texture
		Gender.FEMALE:
			return female_texture
