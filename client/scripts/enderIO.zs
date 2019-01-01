import mods.gregtech.recipe.RecipeMap;
//传统艺能
var chemical_bath=mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");

//制作粘合剂粉 任意颜色史莱姆球+硫酸
chemical_bath.recipeBuilder()
    .inputs(<ore:slimeball>* 1)
    .fluidInputs([<liquid:sulfuric_acid>*32])
    .outputs(<enderio:item_material:22>*2)
    .duration(300)
    .EUt(16)
    .buildAndRegister();

//冶炼粘合剂 但是从2个变成一个 冶炼一个获得1.1经验
furnace.remove(<enderio:item_material:4>*2);
furnace.addRecipe(<enderio:item_material:4>, <enderio:item_material:22>, 1.1);

//脉冲铁的制作 钢粒+末影粉在合金窑内冶炼
mods.immersiveengineering.AlloySmelter.addRecipe(<enderio:item_alloy_nugget:5>*2,<ore:nuggetSteel>*4,<gregtech:meta_item_1:2218>*2, 2000);

//物体管道
recipes.remove(<enderio:item_item_conduit>);
recipes.addShaped(<enderio:item_item_conduit> * 4, [[<ore:itemConduitBinder>, <gregtech:meta_tool:7>, <ore:itemConduitBinder>], [<ore:pipeSmallSteel>, <ore:nuggetPulsatingIron>, <ore:pipeSmallSteel>], [<ore:itemConduitBinder>, <gregtech:meta_tool:5>, <ore:itemConduitBinder>]]);

//流体管道
recipes.remove(<enderio:item_liquid_conduit>);
recipes.addShaped(<enderio:item_liquid_conduit>, [[<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>], [<ore:itemConduitBinder>, <enderio:item_item_conduit>, <ore:itemConduitBinder>], [<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>]]);

//加压流体管道
recipes.remove(<enderio:item_liquid_conduit:1>);
recipes.addShaped(<enderio:item_liquid_conduit:1> * 8, [[<enderio:item_liquid_conduit>, <enderio:item_liquid_conduit>, <enderio:item_liquid_conduit>], [<enderio:item_liquid_conduit>,<gregtech:meta_item_1:32610>, <enderio:item_liquid_conduit>], [<enderio:item_liquid_conduit>, <enderio:item_liquid_conduit>, <enderio:item_liquid_conduit>]]);
