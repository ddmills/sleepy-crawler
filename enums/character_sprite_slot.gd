extends Resource
class_name CharacterSpriteSlot

enum slot {
	BASE,
	LEGS,
	HEAD_FEATURE,
	FACE_FEATURE,
}

const BASE = slot.BASE
const LEGS = slot.LEGS
const HEAD_FEATURE = slot.HEAD_FEATURE
const FACE_FEATURE = slot.FACE_FEATURE

static func to_string_lower(key):
	return slot.keys()[key].to_lower()
