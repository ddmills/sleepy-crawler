extends Node
class_name Rnd


static func pickIndex(arr):
	return randi() % arr.size()


static func pick(arr):
	return arr[pickIndex(arr)]
