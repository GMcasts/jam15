x_cell_diff = argument[0];
cell_diff = argument[1];
if(draw_movement) {
    move_toX = obj_cursor.x;
    move_toY = obj_cursor.y;

    if((abs(x_cell_diff) <= HORIZONTAL_MOVE ) && obj_cursor.y == y) {
        if(ds_map_find_value(valid_moves, obj_cursor.x*7+obj_cursor.y*13) != 0) {
            set_move_cursor();
            move_towards(move_toX,move_toY);
            draw_movement = false;
           
        }
    }


    if((abs(y_cell_diff) <= VERTICAL_MOVE) && obj_cursor.x == x) {
                if(ds_map_find_value(valid_moves, obj_cursor.x*7+obj_cursor.y*13) != 0) {
                    set_move_cursor();
                    move_towards(move_toX,move_toY);
                    draw_movement = false;
                }
    }
}
