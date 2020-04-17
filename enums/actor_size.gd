extends Node
class_name ActorSize

enum size {
	SMALL,
	MEDIUM,
	LARGE,
}

const SMALL = size.SMALL
const MEDIUM = size.MEDIUM
const LARGE = size.LARGE

static func to_string_lower(key):
	return size.keys()[key].to_lower()
