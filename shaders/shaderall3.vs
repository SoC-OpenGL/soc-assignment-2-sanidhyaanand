#version 410 core
layout ( location = 0 ) in vec3 pos;
layout ( location = 1 ) in vec2 aTexCoord;
out vec2 TexCoord;
uniform mat4 transform; 
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
void main()
{
	gl_Position = projection * view * model * transform * vec4(pos.x, pos.y, pos.z, 1.0);
	TexCoord = aTexCoord;
}