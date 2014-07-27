if(instance_exists(obj_eyeEnemy)){
    with(obj_eyeEnemy){
        if(STATE=="attack") {
            // eye on the right side
            if(x < obj_player.x){
                if(y < obj_player.y){
                    y += 32;
                }
                x += 32;
            // left side
            }else if(x > obj_player.x){
                if(y < obj_player.y){
                    y += 32;
                }
                x -= 32;
            }
            // above y
            else if(y < obj_player.y) {
                y += 32;
            //bellow y
            }else if(y > obj_player.y){
                y -= 32;
            }else{
                // teehee
            }
        }
    }
    
}
