horizontal = 32;
reverse_horizontal = -32;
reverse_vert = -32;
vertical = 32;

// hor_movement comes from our draw script randy pants on
for(i=0;i<hor_movement;i++) {
        // left
        if(instance_position(x+reverse_horizontal, y, obj_dungeonWall1)){
        }else{
            ds_map_add(valid_moves, (x+reverse_horizontal)*7+y*13, true);
            reverse_horizontal -= 32;
        }
        // right
        if(instance_position(x+horizontal, y, obj_dungeonWall1)){
        }else{
            ds_map_add(valid_moves, (x+horizontal)*7+y*13, true);
            horizontal += 32;
        }
}
for(i=0;i<vertical_movement;i++) {
        // up
        if(instance_position(x, y+reverse_vert, obj_dungeonWall1)){
        }else{
            ds_map_add(valid_moves, x*7+(y+reverse_vert)*13, true);
            reverse_vert -= 32;
        }
        // down
        if(instance_position(x, y+vertical, obj_dungeonWall1)){
        }else{
            ds_map_add(valid_moves, x*7+(y+vertical)*13, true);
            vertical += 32;
        }
}
