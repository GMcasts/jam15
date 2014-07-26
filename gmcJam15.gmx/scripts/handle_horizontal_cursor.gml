x_cell_diff = argument[0];
if((x_cell_diff >= -HORIZONTAL_MOVE || x_cell_diff <= HORIZONTAL_MOVE) && obj_cursor.y == y) {
    if(ds_map_find_value(valid_moves, obj_cursor.x*7+obj_cursor.y*13) != 0) {
        move_toX = obj_cursor.x;
        move_toY = obj_cursor.y;
        alarm[0] = room_speed;
        move_towards(move_toX,move_toY);
        draw_movement = false;
    }
}
