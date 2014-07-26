draw = argument[0];
vertical_movement = argument[1];
if(draw) {
    vertical = 32;
    reverse_vert = -32;
    for(i=0;i<vertical_movement;i++) {
        // up
        if(instance_position(x, y+reverse_vert, obj_dungeonWall1)){
        }else{
            draw_set_alpha(0.3);
            draw_set_color(c_green);
            draw_rectangle(x,y+reverse_vert,x+32,y+reverse_vert+32, false);
            reverse_vert -= 32;
        }
        // down
        if(instance_position(x, y+vertical, obj_dungeonWall1)){
        }else{
            draw_set_alpha(0.3);
            draw_set_color(c_green);
            draw_rectangle(x,y+vertical,x+32,y+vertical+32, false);
            vertical += 32;
        }
    }
    draw_set_alpha(1);
}
