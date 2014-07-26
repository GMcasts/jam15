horizontal = 32;
reverse_horizontal = -32;

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
