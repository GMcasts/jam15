type = argument[0];

if(type=="Centaur") {
    if(draw_attack) {
        draw_set_alpha(0.3);
        draw_set_color(c_red);
        // left side
        v = -32
        for(i=0;i<=1;i++) {
            if(!instance_position(x+v,y, obj_dungeonWall1)){
                draw_rectangle(x+v,y,x+v+32,y+32,false);
                v -= 32;
            }
        }
        // right side
        v = 32
        for(i=0;i<=1;i++) {
            if(!instance_position(x+v,y, obj_dungeonWall1)){
                draw_rectangle(x+v,y,x+v+32,y+32,false);
                v += 32;
            }
        }
        // right top
        if(!instance_position(x+32,y-32, obj_dungeonWall1)){
            draw_rectangle(x+32,y-32,x+64,y,false);
        }
        // top side
        if(!instance_position(x,y-32, obj_dungeonWall1)){
            draw_rectangle(x,y-32,x+32,y,false);
        }
        // bottom side
        if(!instance_position(x,y+32, obj_dungeonWall1)){
            draw_rectangle(x,y+32,x+32,y+64,false);
        }
        draw_set_alpha(1);
    }
}
