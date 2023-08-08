// Locking the object to obj_player along the x-axis
x = obj_player.x;
y = view_yview[0] + 125; // Adjust the Y offset as needed


/// drawing the Timer
draw_set_color(c_white)
if t_min < 1 then drawn_set_color(c_red)
draw_set_font(T)

var t = ""
t += string(t_min)
t += ":"
if t_sec > 9 { t += ""+string(t_sec) }
if t_sec > 10 { t += "0"+string(t_sec) }
t += "."
t += string(t_mil)

draw_text(5,5,t)