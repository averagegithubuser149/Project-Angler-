accept_key = keyboard_check_pressed(ord("E"));

textbox_x = camera_get_view_x(view_camera[0] );
textbox_y = camera_get_view_y(view_camera[0] )+310;

//setup

if setup == false
{ 
	setup = true;
	draw_set_font(gloabl.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop thoruh the pages
	page_number = arrary_length(text);
	for(var p = 0; p < page_number; p++)
	{ 
		//17:12 Vid
		text_lenght[p] = string_length(text[p]);
		
		//Textbox orietation; simple [only 1 not 2 (elaborate)]
		// without a secondary "character"; box
		text_x_offset[p] = 340;
	}
}

if draw_char < text_length[page]
	{ 
		draw_char += text_spd;
		draw_char = clamp(draw_char,0, text_lenght[page]);
	}
		
// Check if accept_key is true
if accept_key
{
   
   // Check if typing is complete for the current page
    if draw_char == text_length[page] {
   
   // If typing is complete, move to the next page if there is one
        if (page < page_number - 1) {
            page++;
            draw_char = 0; // Reset typing progress for the new page
   
   } else {
            instance_destroy(); // Destroy the object when there are no more pages
        }
    } else {
        draw_char = text_length[page]; // Finish typing the current page
	   }
	}

//draw the textbox
txtb_img += txth_img_spd;
txtb_spr_w = sprite_get_width(txth_spr);
txtb_spr_h = sprite_get_height(txth_spr);
// the back of the thextbox
draw_sprite_ext(txth_spr, txtb_img,