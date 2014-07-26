x_cell_diff = argument[0];
y_cell_diff = argument[1];
if(draw_attack) {
    //vertical attacks
    if((y_cell_diff >= -2 || y_cell_diff <= 2) && obj_cursor.x == x) {
        y = obj_cursor.y;
        draw_attack = false;
    }else if(abs(x_cell_diff) == 1 && abs(y_cell_diff) == 1) {
        x = obj_cursor.x;
        y = obj_cursor.y;
        draw_attack = false;
    }//horizontaol
    else if((x_cell_diff >= -3 || y_cell_diff <= 3) && obj_cursor.y == y) {
        x = obj_cursor.x;
        draw_attack = false;
    }
}
