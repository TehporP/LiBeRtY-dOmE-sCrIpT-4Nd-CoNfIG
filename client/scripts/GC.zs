import mods.gregtech.recipe.RecipeMap;
var metal_bender=RecipeMap.getByName("metal_bender");
var implosion_compressor=RecipeMap.getByName("implosion_compressor");
var cutting_saw=RecipeMap.getByName("cutting_saw");

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
recipes.remove(<galacticraftcore:machine:12>);
recipes.remove(<galacticraftplanets:mars_machine_t2:4>);
recipes.remove(<galacticraftcore:machine_tiered:8>);
recipes.remove(<galacticraftcore:machine_tiered>);
recipes.remove(<galacticraftcore:machine>);
//新的NASA工作台的合成
recipes.addShaped(<galacticraftcore:rocket_workbench>, [[<galacticraftcore:basic_item:9>, <gregtech:machine:101>, <galacticraftcore:basic_item:9>], [<gregtech:meta_item_1:32652>, <gtadditions:ga_meta_item:32067>, <gregtech:meta_item_1:32652>], [<galacticraftcore:basic_item:9>, <ore:craftingRedstoneTorch>, <galacticraftcore:basic_item:9>]]);

//*************
//矿物以及原材料
//*************

//陨铁块冶炼成4个陨铁块 并给予每次冶炼1经验
furnace.addRecipe(<galacticraftcore:meteoric_iron_raw>, <galacticraftcore:basic_block_core:12>*4, 1.0);

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
    .outputs(<galacticraftcore:basic_item:8>* 1)
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
    .inputs(<galacticraftcore:item_basic_moon>* 2)
    .outputs(<galacticraftcore:item_basic_moon:1>* 1)
    .property("circuit", 32)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
//致密锡
   metal_bender.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:1071>* 1)
    .outputs(<galacticraftcore:basic_item:7>* 1)
    .property("circuit", 32)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
//致密钛
   metal_bender.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:1072>* 1)
    .outputs(<galacticraftplanets:item_basic_asteroids:6>* 1)
    .property("circuit", 32)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
//致密戴斯
    implosion_compressor.recipeBuilder()
    .inputs(<galacticraftcore:heavy_plating>*2)
    .inputs(<galacticraftplanets:item_basic_asteroids:6>)
    .outputs(<galacticraftplanets:item_basic_mars:5>* 1)
    .property("explosives", 8)
    .duration(20)
    .EUt(512)
    .buildAndRegister();

//重装板系列
//重装板1
    implosion_compressor.recipeBuilder()
    .inputs(<galacticraftcore:basic_item:8>*4)
    .inputs(<galacticraftcore:basic_item:9>*4)
    .outputs(<galacticraftcore:heavy_plating>* 1)
    .property("explosives", 4)
    .duration(20)
    .EUt(512)
    .buildAndRegister();
//重装板2
    implosion_compressor.recipeBuilder()
    .inputs(<galacticraftcore:heavy_plating>*2)
    .inputs(<galacticraftcore:item_basic_moon:1>*1)
    .outputs(<galacticraftplanets:item_basic_mars:3>* 1)
    .property("explosives", 4)
    .duration(20)
    .EUt(512)
    .buildAndRegister();
//重装板3
    implosion_compressor.recipeBuilder()
    .inputs(<galacticraftplanets:item_basic_mars:3>*2)
    .inputs(<galacticraftplanets:item_basic_mars:5>*1)
    .outputs(<galacticraftplanets:item_basic_asteroids:5>* 1)
    .property("explosives", 4)
    .duration(20)
    .EUt(512)
    .buildAndRegister();
	
//火箭以及外太空用品
//通气孔
recipes.remove(<galacticraftcore:air_vent>);
recipes.addShaped(<galacticraftcore:air_vent>, [[<galacticraftcore:basic_item:7>, <galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:7>], [<galacticraftcore:basic_item:9>, <ore:barsIron>, <galacticraftcore:basic_item:9>], [<galacticraftcore:basic_item:7>, <galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:7>]]);

//探测镜片
recipes.remove(<galacticraftcore:sensor_lens>);
recipes.addShaped(<galacticraftcore:sensor_lens>, [[<ore:dustRedstone>, <gtadditions:ga_transparent_casing>, <ore:dustRedstone>], [<gtadditions:ga_transparent_casing>, <galacticraftcore:item_basic_moon:1>, <gtadditions:ga_transparent_casing>], [<ore:dustRedstone>, <gtadditions:ga_transparent_casing>, <minecraft:redstone>]]);

//防护力场控制器
recipes.remove(<galacticraftplanets:basic_item_venus>);
recipes.addShaped(<galacticraftplanets:basic_item_venus>, [[<ore:cableGtSingleGold>, <gregtech:meta_item_1:32682>, <ore:cableGtSingleGold>], [<ore:circuitGAAdvanced>, <ore:pearlEnderEye>, <ore:circuitGAAdvanced>], [<gregtech:meta_item_1:32692>, <gregtech:cable_gold:5>, <gregtech:meta_item_1:32692>]]);

//流体管道
recipes.remove(<galacticraftcore:fluid_pipe> * 3);
recipes.addShaped(<galacticraftcore:fluid_pipe> * 6, [[<gtadditions:ga_transparent_casing>, <gtadditions:ga_transparent_casing>, <gtadditions:ga_transparent_casing>], [<gtadditions:ga_transparent_casing>, <gtadditions:ga_transparent_casing>, <gtadditions:ga_transparent_casing>]]);

//频率模块
recipes.remove(<galacticraftcore:basic_item:19>);
recipes.addShaped(<galacticraftcore:basic_item:19>, [[null, <ore:compressedAluminum>, null], [<galacticraftcore:basic_item:11>, <gregtech:meta_item_1:32692>, <galacticraftcore:basic_item:11>], [<ore:cableGtSingleGold>, <gtadditions:ga_meta_item:32070>, <gregtech:cable_gold:5>]]);

//氧气面具
recipes.remove(<galacticraftcore:oxygen_mask>);
recipes.addShaped(<galacticraftcore:oxygen_mask>, [[<gtadditions:ga_transparent_casing>, <gtadditions:ga_transparent_casing>, <gtadditions:ga_transparent_casing>], [<gtadditions:ga_transparent_casing>, null, <gtadditions:ga_transparent_casing>], [<gtadditions:ga_transparent_casing>, <ore:pipeTinyStainlessSteel>, <gtadditions:ga_transparent_casing>]]);

//帆布
recipes.remove(<galacticraftcore:canvas>);
recipes.addShaped(<galacticraftcore:canvas>, [[null, <immersiveengineering:material:5>, <ore:stickWood>], [<immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>], [<ore:stickWood>, <immersiveengineering:material:5>, null]]);

//隔热布
recipes.remove(<galacticraftplanets:item_basic_asteroids:7>);
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:7>, [[<ore:plateSilicon>, <ore:foilGraphene>, <ore:plateSilicon>], [<ore:foilGraphene>, null, <ore:foilGraphene>], [<ore:plateSilicon>, <ore:foilGraphene>, <ore:plateSilicon>]]);

//换气扇
recipes.remove(<galacticraftcore:air_fan>);
recipes.addShapeless(<galacticraftcore:air_fan>, [ <gregtech:meta_tool:6>, <gregtech:meta_item_2:18184>]);

//罐
   metal_bender.recipeBuilder()
    .inputs(<ore:plateCopper>* 4)
    .outputs(<galacticraftcore:canister:1>* 1)
    .property("circuit", 16)
    .duration(20)
    .EUt(32)
    .buildAndRegister();

    metal_bender.recipeBuilder()
    .inputs(<ore:plateTin>* 4)
    .outputs(<galacticraftcore:canister>* 1)
    .property("circuit", 16)
    .duration(20)
    .EUt(32)
    .buildAndRegister();   
//火箭构材
//火箭引擎
//普通
recipes.remove(<galacticraftcore:engine>);
recipes.addShaped(<galacticraftcore:engine>, [[null, <gregtech:meta_item_2:16237>, null], [<galacticraftcore:heavy_plating>, <gregtech:boiler_firebox_casing:1>, <galacticraftcore:heavy_plating>], [<gregtech:fluid_pipe_steel:3>, <galacticraftcore:air_vent>, <gregtech:fluid_pipe_steel:3>]]);

//高级火箭引擎
recipes.remove(<galacticraftplanets:item_basic_asteroids:1>);
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:1>, [[null, <gregtech:meta_item_2:16237>, null], [<galacticraftplanets:item_basic_asteroids:5>, <gregtech:boiler_firebox_casing:2>, <galacticraftplanets:item_basic_asteroids:5>], [<galacticraftcore:engine:1>, <galacticraftcore:engine>, <galacticraftcore:engine:1>]]);

//火箭尾翼
//普通
recipes.remove(<galacticraftcore:rocket_fins>);
    cutting_saw.recipeBuilder()
    .inputs(<galacticraftcore:basic_item:8>*1)
    .outputs(<galacticraftcore:rocket_fins>* 1)
    .duration(200)
    .EUt(128)
    .buildAndRegister();

//重装
recipes.remove(<galacticraftplanets:item_basic_asteroids:2>);
    cutting_saw.recipeBuilder()
    .inputs(<galacticraftcore:basic_item:9>*1)
    .outputs(<galacticraftplanets:item_basic_asteroids:2>* 1)
    .duration(400)
    .EUt(256)
    .buildAndRegister();

//鼻锥
//普通
recipes.remove(<galacticraftcore:nose_cone>);
    cutting_saw.recipeBuilder()
    .inputs(<ore:blockSteel>*1)
    .outputs(<galacticraftcore:nose_cone>* 1)
    .duration(400)
    .EUt(256)
    .buildAndRegister();

//重装
recipes.remove(<galacticraftplanets:heavy_nose_cone>);
    cutting_saw.recipeBuilder()
    .inputs(<ore:blockTitanium>)
    .outputs(<galacticraftplanets:heavy_nose_cone>* 1)
    .duration(600)
    .EUt(512)
    .buildAndRegister();

//机器
//晶圆统一使用GT电路板 这傻逼合成太他妈恶心了 DNMD
//氧气供给机
recipes.remove(<galacticraftcore:sealer>);
recipes.addShaped( <galacticraftcore:sealer>, [[<ore:compressedAluminum>, <ore:compressedSteel>, <ore:compressedAluminum>], [<galacticraftcore:air_vent>, <galacticraftcore:air_fan>, <galacticraftcore:air_vent>], [<ore:compressedAluminum>, <gregtech:fluid_pipe_stainless_steel:2>, <ore:compressedAluminum>]]);

//气闸控制器
recipes.remove(<galacticraftcore:air_lock_frame:1>);
recipes.addShaped(<galacticraftcore:air_lock_frame:1>, [[<gregtech:meta_item_2:16237>, <gregtech:meta_item_2:16237>, <gregtech:meta_item_2:16237>], [<gregtech:meta_item_1:32642>, <gregtech:machine_casing:3>, <gregtech:meta_item_1:32642>], [<gregtech:meta_item_1:32701>, <gregtech:meta_item_1:32602>, <gregtech:meta_item_1:32701>]]);