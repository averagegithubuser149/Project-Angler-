// Vertex Shader
attribute vec2 in_Position;
attribute vec2 in_TextureCoord;
varying vec2 v_vTexcoord;
void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 0.0, 1.0);
    v_vTexcoord = in_TextureCoord;
}

// Fragment Shader
varying vec2 v_vTexcoord;
uniform vec3 u_lightPosition; // Position of the light (center of the circle)
uniform float u_lightRadius; // Radius of the light
uniform float u_brightnessIncrease; // Amount to increase brightness (0.0 to 1.0)
void main()
{
    // Calculate the distance between the current pixel and the light center
    float distanceToLight = distance(v_vTexcoord, u_lightPosition.xy);
    
    // Calculate the brightness increase based on the distance to the light
    float brightnessIncrease = clamp(1.0 - (distanceToLight / u_lightRadius), 0.0, 1.0) * u_brightnessIncrease;
    
    // Get the original color of the pixel
    vec4 originalColor = texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Add the brightness increase to the pixel color
    vec4 finalColor = originalColor + vec4(brightnessIncrease, brightnessIncrease, brightnessIncrease, 0.0);
    
    // Output the final color
    gl_FragColor = finalColor;
}
