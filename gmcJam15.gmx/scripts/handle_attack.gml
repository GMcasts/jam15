x_cell_diff = argument[0];
y_cell_diff = argument[1];
if(draw_attack) {
    if(instance_position(obj_cursor.x, obj_cursor.y, obj_enemy)) {
        dmg = floor(random_range(5,10));
        log_message("You attack for "+string(dmg)+" DMG.");
        o = instance_nearest(obj_cursor.x, obj_cursor.y, obj_enemy);
        o.HEALTH -= dmg;
        o.attack_counter += 1;
        if(o.attack_counter == 3){
            log_message("You have been hit for 3 DMG.");
            o.attack_counter = 1;
        }
    }

    //vertical attacks
    if((y_cell_diff >= -2 || y_cell_diff <= 2) && obj_cursor.x == x) {
        if(ds_map_find_value(valid_attacks, obj_cursor.x*17+obj_cursor.y*23) != 0) {
//            y = obj_cursor.y;
            draw_attack = false;
        }
    }else if(abs(x_cell_diff) == 1 && abs(y_cell_diff) == 1) {
        if(ds_map_find_value(valid_attacks, obj_cursor.x*17+obj_cursor.y*23) != 0) {
//            x = obj_cursor.x;
//            y = obj_cursor.y;
            draw_attack = false;
        }
    }//horizontaol
    else if((x_cell_diff >= -3 || y_cell_diff <= 3) && obj_cursor.y == y) {
        if(ds_map_find_value(valid_attacks, obj_cursor.x*17+obj_cursor.y*23) != 0) {
//            x = obj_cursor.x;
            draw_attack = false;
        }
    }
}
