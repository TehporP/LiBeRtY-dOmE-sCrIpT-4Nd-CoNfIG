import mods.gregtech.recipe.RecipeMap;
//build recipes builder
var implosion_compressor=RecipeMap.getByName("implosion_compressor");

//用聚爆压缩机制作双锂
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustLithium>*3)
    .outputs(<libvulpes:productdust>* 1)
	.property("explosives", 4)
    .duration(60)
    .EUt(45)
    .buildAndRegister();

//芯片版
recipes.remove(<advancedrocketry:ic:3>);
recipes.remove(<advancedrocketry:ic:4>);
recipes.remove(<advancedrocketry:ic:5>);

//控制
recipes.addShaped(<advancedrocketry:ic:3>, [[<ore:plateRedAlloy>, <ore:gemDiamond>, <ore:plateRedAlloy>], [<ore:dustCopper>,<gtadditions:ga_meta_item:32003>, <ore:wireFineCopper>], [<ore:wireFineCopper>,<ore:circuitGAAdvanced>, <ore:wireFineCopper>]]);

//物品IO
recipes.addShaped(<advancedrocketry:ic:4>, [[<ore:plateRedAlloy>, <ore:gemDiamond>, <ore:plateRedAlloy>], [<ore:wireFineGold>,<gtadditions:ga_meta_item:32003>,<ore:wireFineGold>], [<ore:wireFineGold>,<ore:circuitGAAdvanced>,<ore:wireFineGold>]]);


//流体IO
recipes.addShaped(<advancedrocketry:ic:5>, [[<ore:plateRedAlloy>, <ore:gemDiamond>, <ore:plateRedAlloy>], [<gregtech:meta_item_2:16001>,<gtadditions:ga_meta_item:32003>, <gregtech:meta_item_2:16001>], [<gregtech:meta_item_2:16001>,<ore:circuitGAAdvanced>, <gregtech:meta_item_2:16001>]]);

//降低机器方块制作数量
recipes.remove(<libvulpes:structuremachine>);
recipes.remove(<libvulpes:advstructuremachine>);

recipes.addShaped(<libvulpes:structuremachine> * 4, [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], [<ore:plateIron>,<ore:craftingToolWrench>, <ore:plateIron>], [<ore:stickIron>, <ore:plateIron>, <ore:stickIron>]]);

recipes.addShaped(<libvulpes:advstructuremachine> * 4, [[<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>], [<ore:plateTitanium>, <ore:craftingToolWrench>, <ore:plateTitanium>], [<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>]]);
