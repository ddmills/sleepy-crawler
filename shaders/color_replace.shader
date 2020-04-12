shader_type canvas_item;

uniform vec4 skin_target : hint_color;
uniform vec4 skin_replace : hint_color;
uniform float skin_tolerance;

uniform vec4 hair_target : hint_color;
uniform vec4 hair_replace : hint_color;
uniform float hair_tolerance;

uniform vec4 eye_target : hint_color;
uniform vec4 eye_replace : hint_color;
uniform float eye_tolerance;

uniform vec4 leg_target : hint_color;
uniform vec4 leg_replace : hint_color;
uniform float leg_tolerance;


void fragment() {
    vec4 original_color = texture(TEXTURE, UV);
    vec3 col = original_color.rgb;
	float brightness = length(col);

	if (distance(col, skin_target.rgb) < skin_tolerance) {
		col = skin_replace.rgb;
	} else if (distance(col, hair_target.rgb) < hair_tolerance) {
		col = hair_replace.rgb;
	} else if (distance(col, eye_target.rgb) < eye_tolerance) {
		col = eye_replace.rgb;
	} else if (distance(col, leg_target.rgb) < leg_tolerance) {
		col = leg_replace.rgb;
	}

	COLOR = vec4(col.rgb * brightness, original_color.a);
}
