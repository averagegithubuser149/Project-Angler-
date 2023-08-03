/// Draw Event of object Light

// Set the position and radius of the light
var lightX = x; // Change this to the desired X position of the light
var lightY = y; // Change this to the desired Y position of the light
var lightRadius = 100; // Change this to the desired radius of the light

// Set the brightness increase (adjust as needed, 0.0 to 1.0)
var brightnessIncrease = 0.3; // Change this to control the brightness increase

// Set the shader variables
shader_set(shader_light_effect);
shader_set_uniform_f(shader_get_uniform(shader_light_effect, "u_lightPosition"), lightX, lightY, 0);
shader_set_uniform_f(shader_get_uniform(shader_light_effect, "u_lightRadius"), lightRadius);
shader_set_uniform_f(shader_get_uniform(shader_light_effect, "u_brightnessIncrease"), brightnessIncrease);

// Draw the object (replace "spr_light" with the sprite you are using for the "Light" object)
draw_sprite_ext(spr_light, 0, x, y, 1, 1, 0, c_white, 1);

// Reset the shader
shader_reset();
