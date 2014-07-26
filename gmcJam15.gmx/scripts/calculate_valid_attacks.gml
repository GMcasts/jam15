  // left side
v = -32
for(i=0;i<=1;i++) {
    if(!instance_position(x+v,y, obj_dungeonWall1)){
        ds_map_add(valid_attacks, (x+v)*17+y*23, true);
        v -= 32;
    }
}
// right side
v = 32
for(i=0;i<=1;i++) {
    if(!instance_position(x+v,y, obj_dungeonWall1)){
        ds_map_add(valid_attacks, (x+v)*17+y*23, true);
        v += 32;
    }
}

// top side
v = -32;
for(i=0;i<=0;i++) {
    if(!instance_position(x,y+v, obj_dungeonWall1)){
        ds_map_add(valid_attacks, x*17+(y+v)*23, true);
        v -= 32;
    }
}
//bottom side
v = 32;
for(i=0;i<=0;i++) {
    if(!instance_position(x,y+v, obj_dungeonWall1)){
        ds_map_add(valid_attacks, x*17+(y+v)*23, true);
        v += 32;
    }
}
// corners
h = 32;
v = -32;
if(!instance_position(x+h, y+v, obj_dungeonWall1)){
     ds_map_add(valid_attacks, (x+h)*17+(y+v)*23, true);
}
