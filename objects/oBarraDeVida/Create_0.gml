 //display
view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_width(view_camera[0]);
display_set_gui_size(view_w, view_h)

//Barra de vida
vidamax = 400
vida = vidamax;
AfterVida = vidamax
barraDeVida_w = 700
barraDeVida_h = 40

// Desenhando barra de vida

cor_1 = make_color_rgb(255,0,64); // cor principal
cor_2 = make_color_rgb(19,19,19); // cor secundária (fundo)
cor_3 = make_color_rgb(19,19,19); // cor borda
cor_4 = c_white // cor after
