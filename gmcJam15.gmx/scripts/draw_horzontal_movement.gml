draw = argument[0];
hor_movement = argument[1];
if(draw) {
    horizontal = 32;
    reverse_horizontal = -32;
    for(i=0;i<hor_movement;i++) {
        // left
        if(instance_position(x+reverse_horizontal, y, obj_dungeonWall1)){
        }else{
            draw_set_alpha(0.3);
            draw_set_color(c_green);
            draw_rectangle(x+reverse_horizontal,y,x+reverse_horizontal+32,y+32, false);
            reverse_horizontal -= 32;
        }
        // right
        if(instance_position(x+horizontal, y, obj_dungeonWall1)){
        }else{
            draw_set_alpha(0.3);
            draw_set_color(c_green);
            draw_rectangle(x+horizontal,y,x+horizontal+32,y+32, false);
            horizontal += 32;
        }
    }
    draw_set_alpha(1);
}
