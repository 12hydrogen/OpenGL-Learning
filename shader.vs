#version 330 core
layout (location = 0) in vec3 inputPos;
layout (location = 1) in vec2 textureCoord;

out vec2 tCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
	gl_Position = projection * view * model * vec4(inputPos, 1.0f);
	tCoord = textureCoord;
}