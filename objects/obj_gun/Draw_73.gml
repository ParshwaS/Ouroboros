/// @description Insert description here
// You can write your code in this editor
textboxX =x +sprite_width/2 + 20;
textboxY = y -sprite_height/2 - 20
if(hovering) {
	draw_set_font(font_gun)
	hh = string_height("h")
	draw_sprite(spr_textbox, 0,textboxX, textboxY)
	i = 0;
	if(isShopItem) {
		draw_text(textboxX + 2, textboxY + 2 + (hh *i) ,"Price: "+string(price));
		i++;
	}
	draw_text(textboxX + 2, textboxY + 2 + (hh *i) ,"Damage: "+string(damage));
	i++;
	draw_text(textboxX + 2, textboxY + 2 + (hh *i) ,"Fire Rate: "+string(firespeed));
	i++;
	draw_text(textboxX + 2, textboxY + 2 + (hh *i),"Spread: "+string(spread));
	i++;
	draw_text(textboxX + 2, textboxY + 2 + (hh *i),"Mod:")
	i++;
	
	if(shootsThree) {
		draw_text(textboxX + 4, textboxY + 2 + (hh*i),"Three")
		i++;
	}
	if(bulletSpeed == 10) {
		draw_text(textboxX + 4, textboxY + 2 + (hh*i),"Fast Bullets")
		i++;
	} 
	if(shootIncendiary) {
		draw_text(textboxX + 4, textboxY + 2 + (hh*i),"Incendiary")
		i++;
	}
	if(crit_chance = 20) {
		draw_text(textboxX + 4, textboxY + 2 + (hh*i),"Crit Chance")
		i++;
	}
	
	
	
	
}