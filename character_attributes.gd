extends Node2D
class_name CharacterAttributes, "res://ui/icons/flat/graph_3.png"

const Gender = preload("res://enums/gender.gd")

signal race_changed(race)
signal gender_changed(gender)

export(Resource) var race setget _set_race
export(Gender.gender) var gender setget _set_gender

export(int) var str_base = 10
export(int) var dex_base = 10
export(int) var wis_base = 10
export(int) var int_base = 10
export(int) var cha_base = 10
export(int) var con_base = 10

var STR setget , _get_str
var DEX setget , _get_dex
var WIS setget , _get_wis
var INT setget , _get_int
var CHA setget , _get_cha
var CON setget , _get_con


func _set_race(value):
	race = value
	emit_signal("race_changed", race)


func _set_gender(value):
	gender = value
	emit_signal("gender_changed", gender)


func _get_str():
	return str_base + race.str_mod


func _get_dex():
	return dex_base + race.dex_mod


func _get_wis():
	return wis_base + race.wis_mod


func _get_int():
	return int_base + race.int_mod


func _get_cha():
	return cha_base + race.cha_mod


func _get_con():
	return con_base + race.con_mod
