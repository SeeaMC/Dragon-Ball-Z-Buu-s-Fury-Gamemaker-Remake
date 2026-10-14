//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 cor = texture2D( gm_BaseTexture, v_vTexcoord );
	float brilho = dot(cor.rgb, vec3(0.21, 0.72, 0.07));
	float pb = step(0.4, brilho);
	gl_FragColor = vec4(pb, pb, pb, cor.a);
}
