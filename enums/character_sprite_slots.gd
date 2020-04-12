extends Resource
class_name CharacterSpriteSlots

enum slots {
	BASE,
	LEGS,
	HEAD_DETAIL,
}

const BASE = slots.BASE
const LEGS = slots.LEGS
const HEAD_DETAIL = slots.HEAD_DETAIL

static func to_string_lower(key):
	return slots.keys()[key].to_lower()
