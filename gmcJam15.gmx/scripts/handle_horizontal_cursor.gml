x_cell_diff = argument[0];
if((x_cell_diff >= -HORIZONTAL_MOVE || x_cell_diff <= HORIZONTAL_MOVE) && obj_cursor.y == y) {
    if(ds_map_find_value(valid_moves, obj_cursor.x*7+obj_cursor.y*13) != 0) {
        x = obj_cursor.x;
        draw_movement = false;
    }
}
