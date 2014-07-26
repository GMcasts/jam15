cell_diff = argument[0];
if(draw_movement) {
    if((cell_diff >= -VERTICAL_MOVE || cell_diff <= VERTICAL_MOVE) && obj_cursor.x == x) {
                if(ds_map_find_value(valid_moves, obj_cursor.x*7+obj_cursor.y*13) != 0) {
                    y = obj_cursor.y;
                    draw_movement = false;
                }
    }
}
