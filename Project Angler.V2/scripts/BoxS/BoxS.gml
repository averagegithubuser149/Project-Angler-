//Arg5

var _x = argument[0];
var _y = argument[1];
var _w = argument[2];
var _h = argument[3];
var _sprite = argument[4];
var _subimg = argument[5];


//Data
 var cellSize = sprite_get_width(_sprite)/3;

var mainW = _w - cellSize*2;
var mainH = _h - cellSize*2;

var mainScaleW = mainW/cellSize;
var mainScaleH = mainH/cellSize;

//Corners
//Top left
draw_sprite_part(_sprite, _subimg, 0, 0, cellSize, cellSize, _x, _y);

//Top Right
draw_sprite_part(_sprite, _subimg, cellSize*2, 0, cellSize, cellSize, (_x + _w) - cellSize, _y); 

//Bttm Left
draw_sprite_part(_sprite, _subimg, 0, cellSize*2, cellSize, cellSize, _x, (_y + _h) - cellSize);

//Bottom Right
draw_sprite_part(_sprite, _subimg, cellSize*2, cellSize*2, cellSize, cellSize, (_x + _w) - cellSize, (_y + _h) - cellSize);

///Other?
draw_sprite_part_ext(_sprite, _subimg, cellSize, cellSize, cellSize, cellSize, _x + cellSize, _y + cellSize, mainScaleW, mainScaleH, -1, 1);
