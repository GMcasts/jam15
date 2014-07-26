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



ds_map_add(valid_attacks, (x+32)*17+(y-32)*23, true);
ds_map_add(valid_attacks, x*17+(y-32)*23, true);
ds_map_add(valid_attacks, x*17+(y+32)*23, true);

