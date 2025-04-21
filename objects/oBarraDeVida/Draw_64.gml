//desenhando barra de vida
var amount = (vida / vidamax)* barraDeVida_w; // formula
var amount_fixed = (vidamax/vidamax)* barraDeVida_w // formula fixa
var amount_after = (AfterVida/vidamax)*barraDeVida_w // formula after
var x1 = (view_w/2) - (barraDeVida_w/2);
var y1 = (view_h/10)- (barraDeVida_h/2);
var x2 = x1 + amount;
var y2 = y1 + barraDeVida_h;
var x2_fixed = x1 + amount_fixed
var x2_after = x1 + amount_after


if (vida > 0){
// desenhando o fundo da barra

draw_set_color(cor_2);
draw_rectangle(x1,y1,x2_fixed,y2,0);

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