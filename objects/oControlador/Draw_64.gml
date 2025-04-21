
var texto_x = view_w * 0.02;
var texto_y = view_h * 0.95;
draw_set_color(c_grey);
draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_set_font(fPixel)
draw_text(texto_x, texto_y, "Mortes: " + string(global.Mortes))

draw_set_font(-1)
