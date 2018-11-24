import mods.gregtech.recipe.RecipeMap;
var metal_bender= RecipeMap.getByName("metal_bender");

//**************
//机器以及其他
//**************

//删除压缩机 电动压缩机 电炉 电弧炉 nasa工作台的合成
recipes.remove(<galacticraftcore:machine_tiered:4>);
recipes.remove(<galacticraftcore:machine2:4>);
recipes.remove(<galacticraftcore:machine2>);
recipes.remove(<galacticraftcore:refinery>);
recipes.remove(<galacticraftcore:machine_tiered:12>);
recipes.remove(<galacticraftcore:rocket_workbench>);

//新的NASA工作台的合成
recipes.addShaped(<galacticraftcore:rocket_workbench>, [[<ore:compressedSteel>, <gregtech:machine:101>, <ore:compressedSteel>], [<gregtech:meta_item_1:32652>, <gtadditions:ga_meta_item:32067>, <gregtech:meta_item_1:32652>], [<ore:compressedSteel>, <ore:craftingRedstoneTorch>, <ore:compressedSteel>]]);

//*************
//矿物以及原材料
//*************

//陨铁块冶炼成4个陨铁块
furnace.addRecipe(<galacticraftcore:meteoric_iron_raw>, <galacticraftcore:basic_block_core:12>*4, 0.0);

//用GT机器生产GC板材
//致密板材

//致密铜
    metal_bender.recipeBuilder()
    .inputs(<ore:ingotDoubleCopper>* 1)
    .outputs(<galacticraftcore:basic_item:6>* 1)
    .property("circuit", 32)
    .duration(200)
    .EUt(512)
    .buildAndRegister();

//致密铁
    metal_bender.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:1033>* 1)
    .outputs(<galacticraftcore:basic_item:11>* 1)
    .property("circuit", 32)
    .duration(200)
    .EUt(512)
    .buildAndRegister();

//致密钢
    metal_bender.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:1184>* 1)
    .outputs(<galacticraftcore:basic_item:9>* 1)
    .property("circuit", 32)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
//致密铝
    metal_bender.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:1001>* 1)
    .outputs(<galacticraftcore:basic_item:9>* 1)
    .property("circuit", 32)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
//致密青铜
    metal_bender.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:1095>* 1)
    .outputs(<galacticraftcore:basic_item:10>* 1)
    .property("circuit", 32)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
//致密陨铁
   metal_bender.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:1095>* 1)
    .outputs(<galacticraftcore:basic_item:10>* 1)
    .property("circuit", 32)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
//致密锡
   metal_bender.recipeBuilder()
    .inputs(<galacticraftcore:item_basic_moon>* 2)
    .outputs(<galacticraftcore:item_basic_moon:1>* 1)
    .property("circuit", 32)
    .duration(200)
    .EUt(512)
    .buildAndRegister();