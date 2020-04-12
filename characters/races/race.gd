extends Resource
class_name Race, "res://ui/icons/flat/hand.png"

const CharacterSize = preload("res://enums/character_size.gd")

export(String) var name_singular
export(String) var name_plural

export(CharacterSize.size) var size

export(Texture) var body_male
export(Texture) var female_body
