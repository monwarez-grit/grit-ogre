#version 150

in vec3 tangent;
in vec4 vertex
in vec4 uv1;

uniform mat4 world;
uniform mat4 worldViewProj;
uniform mat4 texViewProj;
uniform vec4 lightPosition; // object space
uniform vec4 shadowDepthRange;

out vec3 tangentLightDir;
out vec4 oUv0;
out vec4 oUv1;

void main()
{
	gl_Position = worldViewProj * vertex;
	
	vec4 worldPos = world * vertex;

	// Get object space light direction 
    vec3 lightDir = normalize(lightPosition.xyz -  (vertex.xyz * lightPosition.w));

	// calculate shadow map coords
	oUv0 = texViewProj * worldPos;
#if LINEAR_RANGE
	// adjust by fixed depth bias, rescale into range
	oUv0.z = (oUv0.z - shadowDepthRange.x) * shadowDepthRange.w;
#endif

	// pass the main uvs straight through unchanged 
	oUv1 = uv1;

	// Calculate the binormal (NB we assume both normal and tangent are 
	// already normalised) 
	vec3 binormal = cross(gl_Normal, tangent); 

	// Form a rotation matrix out of the vectors 
	mat3 rotation = mat3(tangent, binormal, gl_Normal); 
    
	// Transform the light vector according to this matrix 
	tangentLightDir = normalize(rotation * lightDir); 
}

