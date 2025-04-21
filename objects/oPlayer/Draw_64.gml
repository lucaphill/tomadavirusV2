

var amount = (cooldown_escudo/cooldown_escudoMax) * barraEscudo_w // formula
var amount_fixed = (cooldown_escudoMax/cooldown_escudoMax)* barraEscudo_w // formula fixa
var amount_after = (afterEscudo/cooldown_escudoMax)* barraEscudo_w // formula after
var x1 = view_w - barraEscudo_w - 20; // margem da direita
var y1 = view_h - barraEscudo_h - 20; // margem inferior
var x2 = x1 + amount;
var y2 = y1 + barraEscudo_h;
var x2_fixed = x1 +amount_fixed
var x2_after = x1 + amount_after

if(cooldown_escudo >0){
//desenhando o fundo
draw_set_color(cor_2);
draw_rectangle (x1,y1,x2_fixed,y2,0)

//desenhando o after
draw_set_color(cor_4);
draw_rectangle(x1,y1,x2_after,y2,0);

//Desnhando a barra
draw_set_color(cor_1);
draw_rectangle (x1,y1,x2,y2,0);

// desenhando a borda
draw_set_color(cor_3)
draw_rectangle(x1,y1,x2_fixed,y2,true);
} 

draw_set_color (c_white);