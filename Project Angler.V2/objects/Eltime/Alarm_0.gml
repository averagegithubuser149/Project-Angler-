//Time ticks
t_mil -= 1 

if t_mil = -1 { //The Seconds
	t_mil = 9
	t_sec -= 1
}

if t_sec = -1 { //The mins get reduced
	t_sec = 59
	t_min -= 1
}

if!(t_sec = 0 && t_min = 0 && t_mil = 0) {
alarm[0] = 6	
} else {
game_end()	
}