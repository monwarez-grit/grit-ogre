#version 150

uniform mat4 worldViewProj;
in vec4 vertex;
out vec2 oUv0;
out vec2 oUv1;
out vec2 oUv2;
out vec4 pos;

void main()
{
	// Use standardise transform, so work accord with render system specific (RS depth, requires texture flipping, etc)
    gl_Position = worldViewProj * vertex;

    // The input positions adjusted by texel offsets, so clean up inaccuracies
	vec2 inPos = sign(vertex.xy);

    // Convert to image-space
    oUv0 = (vec2(inPos.x, -inPos.y) + 1.0) * 0.5;
    oUv1 = oUv0;
    oUv2 = oUv0;
    pos = gl_Position;
}
