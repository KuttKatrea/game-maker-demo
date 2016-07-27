if (health <= 0) {
    lives -= 1;
    
    effect_create_above(ef_explosion, obj_player.x, obj_player.y, 2, c_red);
    
    if (lives > 0) {
       health = 100;
    } else {
        instance_destroy();
        
        room_goto(room_gameover);
    }
}
