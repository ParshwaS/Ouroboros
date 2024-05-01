//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform vec2 origin;
uniform float radius;

void main()
{
	float dist = length(v_vPosition - origin);
	vec4 baseCol = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    if (dist < radius){
		gl_FragColor = vec4(baseCol.rgb, dist / radius);
	} else {
		gl_FragColor = baseCol;
	}
}
