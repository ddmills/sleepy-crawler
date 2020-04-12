extends Node
class_name Gender

enum gender {
	MALE,
	FEMALE,
}

const MALE = gender.MALE
const FEMALE = gender.FEMALE

static func to_string_lower(key):
	return gender.keys()[key].to_lower()
