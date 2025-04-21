view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);
 display_set_gui_size(view_w, view_h)
 
 vel_h = 0;
 vel_v = 0;
 dir = 0;
 velocidade = 1.7;
 //dash_dir = 0;
 //dash_force = 6;
 //dash_time = 0;
 //dash_distance = 6;

 estado = player_estado_free;
 cooldow_tiro = 0
 cooldown_escudo = 0
 cooldown_escudoMax = 600
 afterEscudo = cooldown_escudoMax
 barraEscudo_w = 50
 barraEscudo_h = 5
 invencivel = 0

 window_set_cursor(cr_none)
//function movimento()
//{
//var _left, _right, _up, _down;

//_left = keyboard_check(vk_left);
//_right = keyboard_check(vk_right);
//_up = keyboard_check(vk_up);
//_down = keyboard_check(vk_down);
//
//vel_h = _right - _left;
//vel_v = _down - _up  
//
//}

cor_1 = make_color_rgb(106,190,48); // cor principal
cor_2 = make_color_rgb(19,19,19); // cor secundária (fundo)
cor_3 = make_color_rgb(19,19,19); // cor borda
cor_4 = c_white // cor after