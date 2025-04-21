//predefinições do boss
estado = -1
alarm[0] = 60

 //display
view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_width(view_camera[0]);
display_set_gui_size(view_w, view_h)

//Barra de vida
vidamax = 7000
vida = vidamax;
AfterVida = vidamax
bossFase1 = vidamax * 0.33;
bossFase2 = vidamax * 0.66;
barraDeVida_w = 200
barraDeVida_h = 7
velocidade = 0.5;
velocidadeForte = 1.3;

// Desenhando barra de vida

cor_1 = make_color_rgb(255,0,64); // cor principal
cor_2 = make_color_rgb(0,0,30); // cor secundária (fundo)
cor_3 = make_color_rgb(19,19,19); // cor borda
cor_4 = c_white // cor after

//Movimento do boss