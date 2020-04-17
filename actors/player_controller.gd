extends Node2D
class_name PlayerController, "res://ui/icons/flat/controller_1.png"

const MOVE_SPEED = 60

onready var body = get_node("actor/body")


func _process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	input_vector.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")

	body.set_desired_velocity(input_vector.normalized() * MOVE_SPEED)
	body.look_at(get_global_mouse_position())


func _input(event):
	if (event.is_action_pressed("primary_action")):
		body.dash(1000)
