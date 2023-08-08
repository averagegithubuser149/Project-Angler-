/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(Tbox)) {
	//create
	var _th = instance_create_layer(0,0, "instances", Tbox);
	
	// Add messages to textbo's list 
	var _list = _tb.messages;
	
	for (var i=0; i<array_length_1d(msg); i++) 
	{
		var _arr = msg[i];
		
		ds_list_add(_list, _arr);
	}
}
	