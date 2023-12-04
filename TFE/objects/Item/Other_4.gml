/// @description Insert description here
// You can write your code in this editor
random_set_seed(current_time*current_second*current_minute);

var number = irandom_range(1,5);

if (instance_exists(Item))
{
	instance_destroy(Item);
}

for(var i=0;i<number;)
{
	var GeneratedCoordinates = [random_range(0,room_width-80),random_range(0,room_height-80)];
	instance_create_depth(GeneratedCoordinates[0],GeneratedCoordinates[1],0,Item);
	++i;
}

