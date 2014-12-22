uniform sampler2D heightTexture;

void main()
{	
	gl_TexCoord[0].xy = gl_MultiTexCoord0.xy;
	gl_Position = gl_ModelViewProjectionMatrix(gl_Vertex + vec4(gl_Normal, 0.0) * texture2D(heightTexture, gl_MultiTexCoord0.xy).r);
}