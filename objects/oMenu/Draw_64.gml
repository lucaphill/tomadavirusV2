draw_set_font(fPixelMenu);
draw_set_color(cor_1);

var dist = 55
var gui_largura = display_get_gui_width()
var gui_altura = display_get_gui_height()
x1 = gui_largura /2
y1 = gui_altura /2


for(var i = 0; i < opMax; i++ ){
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if(index == i){
		draw_set_color (Cor_2)
	}else{
		draw_set_color(cor_1)
	}
	
	draw_text(x1,y1 + (dist*i), op[i]);


}






draw_set_font(-1)