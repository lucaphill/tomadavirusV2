resolucao_w = 1280;
resolucao_h = 720;
resolucao_escala = 3
global.view_width = resolucao_w / resolucao_escala;
global.view_height = resolucao_h / resolucao_escala;




view_target = oPlayer

window_set_size(global.view_width*resolucao_escala, global.view_height*resolucao_escala)
surface_resize (application_surface, global.view_width*resolucao_escala, global.view_height*resolucao_escala);