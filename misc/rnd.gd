extends Node
class_name Rnd


static func pickIndex(arr):
	if (arr.size() <= 0):
		return null
		
	return randi() % arr.size()


static func pick(arr):
	if (arr.size() <= 0):
		return null
	
	return arr[pickIndex(arr)]
