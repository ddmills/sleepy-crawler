extends KinematicBody2D
class_name CharacterBody, "res://ui/icons/flat/muscle.png"

var velocity = Vector2.ZERO
var desired_velocity = Vector2.ZERO
var lerp_factor = 20
var move_direction = Vector2.ZERO setget , _get_move_direction
var look_direction = Vector2.RIGHT
var impulses = []

onready var sprites = get_node("sprites")


func _physics_process(delta):
	for impulse in impulses:
		velocity += impulse
	
	velocity = lerp(velocity, desired_velocity, delta * lerp_factor)
	velocity = move_and_slide(velocity)
	impulses.clear()


func set_desired_velocity(value: Vector2):
	desired_velocity = value


func move_to(pos: Vector2, speed: float):
	set_desired_velocity(get_direction_to(pos) * speed)


func move_away(pos: Vector2, speed: float):
	set_desired_velocity(get_direction_to(pos) * -speed)


func look_at(pos: Vector2):
	look_direction = get_direction_to(pos)


func add_impulse(impulse: Vector2):
	impulses.append(impulse)


func dash(force):
	add_impulse(_get_move_direction() * force)


func knockback(source: Vector2, force: float):
	add_impulse(get_direction_to(source) * -force)


func get_direction_to(pos: Vector2):
	return (pos - position).normalized()


func _get_move_direction():
	return desired_velocity.normalized()
