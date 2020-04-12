extends Resource
class_name CharacterSpriteSlot

enum slot {
	BASE,
	LEGS,
	HEAD_DETAIL,
}

const BASE = slot.BASE
const LEGS = slot.LEGS
const HEAD_DETAIL = slot.HEAD_DETAIL

static func to_string_lower(key):
	return slot.keys()[key].to_lower()
