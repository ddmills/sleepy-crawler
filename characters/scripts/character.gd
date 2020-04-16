extends Node2D
class_name Character, "res://ui/icons/flat/man.png"

const Gender = preload("res://enums/gender.gd")

onready var attributes = get_node("attributes")
onready var body = get_node("body")
onready var appearance = get_node("body/appearance")
