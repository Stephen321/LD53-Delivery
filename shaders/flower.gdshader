shader_type canvas_item;
uniform vec3 colour : source_color = vec3(0, 0, 0);

void fragment() {
	COLOR = texture(TEXTURE, UV);
	if (COLOR.rgb == vec3(1, 1, 1)) {
		COLOR.rgb = colour;
	}
}
