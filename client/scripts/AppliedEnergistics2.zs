import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;

//build GTCE recipes
var laser_engraver=mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
var forming_press=mods.gregtech.recipe.RecipeMap.getByName("forming_press");
var assembler=mods.gregtech.recipe.RecipeMap.getByName("assembler");
var electrolyzer=mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
var mixer=mods.gregtech.recipe.RecipeMap.getByName("mixer");
var autoclave=mods.gregtech.recipe.RecipeMap.getByName("autoclave");
var macerator=mods.gregtech.recipe.RecipeMap.getByName("macerator");
//REMOVE OLD RECIPES

recipes.remove(<appliedenergistics2:material:13>);
recipes.remove(<appliedenergistics2:material:14>);
recipes.remove(<appliedenergistics2:material:15>);
recipes.remove(<appliedenergistics2:material:19>);

//NEW RECIPES
    laser_engraver.recipeBuilder()
    .inputs(<ore:blockIronMagnetic> * 1)
    .notConsumable(<gregtech:meta_item_1:15111>*1) 
    .outputs(<appliedenergistics2:material:13>*1)
    .duration(600)
    .EUt(512)
    .buildAndRegister();

    laser_engraver.recipeBuilder()
    .inputs(<ore:blockIronMagnetic> * 1)
    .notConsumable(<gregtech:meta_item_1:15113>*1) 
    .outputs(<appliedenergistics2:material:14>*1)
    .duration(600)
    .EUt(512)
    .buildAndRegister();

    laser_engraver.recipeBuilder()
    .inputs(<ore:blockIronMagnetic> * 1)
    .notConsumable(<gregtech:meta_item_1:15219>*1) 
    .outputs(<appliedenergistics2:material:15>*1)
    .duration(600)
    .EUt(512)
    .buildAndRegister();

    laser_engraver.recipeBuilder()
    .inputs(<ore:blockIronMagnetic> * 1)
    .notConsumable(<gregtech:meta_item_1:15218>*1) 
    .outputs(<appliedenergistics2:material:19>*1)
    .duration(4600)
    .EUt(512)
    .buildAndRegister();

//quartz glass recipes
recipes.remove(<appliedenergistics2:quartz_glass>);
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);

mods.immersiveengineering.AlloySmelter.addRecipe(<appliedenergistics2:quartz_glass>*2,<ore:dustCertusQuartz>*4,<ore:dustGlass>*5, 400);
mods.immersiveengineering.AlloySmelter.addRecipe(<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:quartz_glass>,<ore:dustGlowstone>*2, 2000);

//remove charger and crystal growth speeder recipes
recipes.remove(<appliedenergistics2:quartz_growth_accelerator>);
recipes.remove(<appliedenergistics2:charger>);


//new way 2 charge quartz
    electrolyzer.recipeBuilder()
    .inputs(<appliedenergistics2:material>*1)
    .outputs(<appliedenergistics2:material:1>*1)  
    .duration(300)
    .EUt(128)
    .buildAndRegister();


//new way to accelerat crystal growth 
    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed>.withTag({progress: 0})*1)
    .outputs(<appliedenergistics2:material:10>*1) 
    .fluidInputs([<liquid:water> * 500])     
    .duration(240)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200})*1)
    .outputs(<appliedenergistics2:material:12>*1) 
    .fluidInputs([<liquid:water> * 500])     
    .duration(240)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:600>.withTag({progress: 600})*1)
    .outputs(<appliedenergistics2:material:11>*1) 
    .fluidInputs([<liquid:water> * 500])     
    .duration(240)
    .EUt(128)
    .buildAndRegister();

//fast 40% by using dist_water
    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed>.withTag({progress: 0})*1)
    .outputs(<appliedenergistics2:material:10>*1) 
    .fluidInputs([<liquid:distilled_water> * 250])     
    .duration(144)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200})*1)
    .outputs(<appliedenergistics2:material:12>*1) 
    .fluidInputs([<liquid:distilled_water> * 250])   
    .duration(144)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:600>.withTag({progress: 600})*1)
    .outputs(<appliedenergistics2:material:11>*1) 
    .fluidInputs([<liquid:distilled_water> * 250])  
    .duration(144)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed>.withTag({progress: 0})*1)
    .outputs(<appliedenergistics2:material:10>*1) 
    .fluidInputs([<liquid:dist_water>*250])     
    .duration(144)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200})*1)
    .outputs(<appliedenergistics2:material:12>*1) 
    .fluidInputs([<liquid:dist_water>*250])    
    .duration(144)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:600>.withTag({progress: 600})*1)
    .outputs(<appliedenergistics2:material:11>*1) 
    .fluidInputs([<liquid:dist_water>*250]) 
    .duration(144)
    .EUt(128)
    .buildAndRegister();


//fluix crystal
    mixer.recipeBuilder()
    .inputs(<ore:gemNetherQuartz>*1)
    .inputs(<ore:dustRedstone>*1)
    .inputs(<appliedenergistics2:material:1>*1)
    .fluidInputs([<liquid:water> * 500])
    .outputs(<appliedenergistics2:material:7>*1)  
    .duration(30)
    .EUt(32)
    .buildAndRegister();

    mixer.recipeBuilder()
    .inputs(<ore:gemNetherQuartz>*1)
    .inputs(<ore:dustRedstone>*1)
    .inputs(<appliedenergistics2:material:1>*1)
    .fluidInputs([<liquid:dist_water>*250]) 
    .outputs(<appliedenergistics2:material:7>*1)  
    .duration(15)
    .EUt(32)
    .buildAndRegister();

    mixer.recipeBuilder()
    .inputs(<ore:gemNetherQuartz>*1)
    .inputs(<ore:dustRedstone>*1)
    .inputs(<appliedenergistics2:material:1>*1)
    .fluidInputs([<liquid:distilled_water> * 250])  
    .outputs(<appliedenergistics2:material:7>*1)  
    .duration(15)
    .EUt(32)
    .buildAndRegister();

//processor and board
Inscriber.removeRecipe(<appliedenergistics2:material:16>); 
Inscriber.removeRecipe(<appliedenergistics2:material:17>); 
Inscriber.removeRecipe(<appliedenergistics2:material:18>); 


//board
    forming_press.recipeBuilder()
    .inputs(<ore:plateElectrum> * 1)
    .inputs(<ore:plateSilicon> * 1)   
    .notConsumable(<appliedenergistics2:material:15>*1) 
    .outputs(<appliedenergistics2:material:18>*1)
    .duration(400)
    .EUt(512)
    .buildAndRegister();

    forming_press.recipeBuilder()
    .inputs(<ore:plateDiamond> * 1)
    .inputs(<ore:plateSilicon> * 1)      
    .notConsumable(<appliedenergistics2:material:14>*1) 
    .outputs(<appliedenergistics2:material:17>*1)
    .duration(400)
    .EUt(512)
    .buildAndRegister();

    forming_press.recipeBuilder()
    .inputs(<ore:crystalPureCertusQuartz> * 1)
    .inputs(<ore:plateSilicon> * 1)  
    .notConsumable(<appliedenergistics2:material:13>*1) 
    .outputs(<appliedenergistics2:material:16>*1)
    .duration(400)
    .EUt(512)
    .buildAndRegister();

//processor
    assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:18>* 1)
    .inputs(<gregtech:meta_item_2:16237>* 1)    
    .outputs(<appliedenergistics2:material:22>*1)
    .fluidInputs([<liquid:soldering_alloy> * 16])
    .property("circuit", 25)
    .duration(100)
    .EUt(512)
    .buildAndRegister();

    assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:17>* 1)
    .inputs(<gregtech:meta_item_2:16237>* 1)    
    .outputs(<appliedenergistics2:material:24>*1)
    .fluidInputs([<liquid:soldering_alloy> * 16])
    .property("circuit", 25)
    .duration(100)
    .EUt(512)
    .buildAndRegister();

    assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:16>* 1)
    .inputs(<gregtech:meta_item_2:16237>* 1)    
    .outputs(<appliedenergistics2:material:23>*1)
    .fluidInputs([<liquid:soldering_alloy> * 16])
    .property("circuit", 25)
    .duration(100)
    .EUt(512)
    .buildAndRegister();

//AE INTERFACE 
recipes.remove(<appliedenergistics2:fluid_interface>);
recipes.remove(<appliedenergistics2:interface>);

recipes.addShaped(<appliedenergistics2:fluid_interface>, [[<ore:plateStainlessSteel>, <ore:dyeBlue>, <ore:plateStainlessSteel>], [<appliedenergistics2:material:44>, null, <appliedenergistics2:material:43>], [<ore:plateStainlessSteel>, <ore:dyeBlue>, <ore:plateStainlessSteel>]]);

recipes.addShaped(<appliedenergistics2:interface>, [[<ore:plateStainlessSteel>, <ore:blockGlassColorless>, <ore:plateStainlessSteel>], [<appliedenergistics2:material:44>, null, <appliedenergistics2:material:43>], [<ore:plateStainlessSteel>, <ore:blockGlassColorless>, <ore:plateStainlessSteel>]]);

//AE chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [[<ore:blockGlassColorless>, <appliedenergistics2:part:380>, <ore:blockGlassColorless>], [<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>], [<ore:plateStainlessSteel>, <ore:crystalFluix>, <ore:plateStainlessSteel>]]);

//AE dirve
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [[<gregtech:meta_item_1:12183>, <appliedenergistics2:material:24>, <gregtech:meta_item_1:12183>], [<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:24>, <ore:plateStainlessSteel>]]);

//stroge cell
//remove all old recipes
recipes.remove(<appliedenergistics2:fluid_storage_cell_64k>);
recipes.remove(<appliedenergistics2:fluid_storage_cell_16k>);
recipes.remove(<appliedenergistics2:fluid_storage_cell_4k>);
recipes.remove(<appliedenergistics2:fluid_storage_cell_1k>);
recipes.remove(<appliedenergistics2:storage_cell_64k>);
recipes.remove(<appliedenergistics2:storage_cell_16k>);
recipes.remove(<appliedenergistics2:storage_cell_4k>);
recipes.remove(<appliedenergistics2:storage_cell_1k>);

//stroge cell shell
recipes.remove(<appliedenergistics2:material:39>);
recipes.addShaped(<appliedenergistics2:material:39>, [[<ore:plateStainlessSteel>, <ore:plateRedAlloy>, <ore:plateStainlessSteel>], [<appliedenergistics2:quartz_vibrant_glass>, <ore:craftingToolWrench>, <appliedenergistics2:quartz_vibrant_glass>], [<ore:plateRedAlloy>, <ore:plateStainlessSteel>, <ore:plateRedAlloy>]]);


//stroge cell liquid and solid(Liquuuuuuuuuuuuuuuuuuuuuuuuuuid!Snaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaake!)
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_64k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:57>]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_16k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:56>]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_4k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:55>]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_1k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:54>]);


recipes.addShapeless(<appliedenergistics2:storage_cell_64k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:38>]);
recipes.addShapeless(<appliedenergistics2:storage_cell_16k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:37>]);
recipes.addShapeless(<appliedenergistics2:storage_cell_4k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:36>]);
recipes.addShapeless(<appliedenergistics2:storage_cell_1k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:35>]);

//cell workbench
recipes.remove(<appliedenergistics2:cell_workbench>);
recipes.addShaped(<appliedenergistics2:cell_workbench>, [[<ore:blockWool>, <appliedenergistics2:material:23>,<ore:blockWool>], [<ore:plateStainlessSteel>, <ore:chestWood>, <ore:plateStainlessSteel>], [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);

//ME-IO PORT
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped(<appliedenergistics2:io_port>, [[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>], [<appliedenergistics2:drive>, <appliedenergistics2:part:16>, <appliedenergistics2:drive>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:22>, <ore:plateStainlessSteel>]]);

//craft unit
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [[<ore:plateStainlessSteel>, <appliedenergistics2:material:23>, <ore:plateStainlessSteel>], [<appliedenergistics2:part:16>, <appliedenergistics2:material:22>, <appliedenergistics2:part:16>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:23>, <ore:plateStainlessSteel>]]);

//bio card
recipes.remove(<appliedenergistics2:biometric_card>.withTag({}));
recipes.addShaped(<appliedenergistics2:biometric_card>.withTag({}), [[<appliedenergistics2:material:24>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>], [<ore:wireFineGold>,<gregtech:meta_item_2:16237>,<ore:wireFineGold>]]);

//mem card
recipes.remove(<appliedenergistics2:memory_card>.withTag({}));
recipes.addShaped(<appliedenergistics2:memory_card>.withTag({}), [[<appliedenergistics2:material:23>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>], [<ore:wireFineGold>,<gregtech:meta_item_2:16237>,<ore:wireFineGold>]]);

//adv card
recipes.remove(<appliedenergistics2:material:28>);
recipes.addShaped(<appliedenergistics2:material:28> * 2, [[<ore:gemDiamond>, <ore:plateStainlessSteel>, null], [<gregtech:meta_item_2:16237>, <appliedenergistics2:material:23>, <ore:plateStainlessSteel>], [<ore:gemDiamond>, <ore:plateStainlessSteel>, null]]);

//condenser
recipes.remove(<appliedenergistics2:condenser>);
recipes.addShaped(<appliedenergistics2:condenser>, [[null, <appliedenergistics2:chest>, null], [<ore:crystalPureFluix>, <gregtech:machine:212>, <ore:crystalPureFluix>], [<gregtech:meta_item_1:32630>, <gregtech:meta_item_1:32630>, <gregtech:meta_item_1:32630>]]);

//fluix dust
    macerator.recipeBuilder()
    .inputs(<ore:crystalFluix>* 1) 
    .outputs(<appliedenergistics2:material:8>*1)
    .duration(20)
    .EUt(32)
    .buildAndRegister();
	
//wireless reciver
recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, [[null, <appliedenergistics2:material:9>, null], [<ore:stickStainlessSteel>, <appliedenergistics2:part:140>, <ore:stickStainlessSteel>], [null, <ore:stickStainlessSteel>, null]]);

//quartz fiber
recipes.remove(<appliedenergistics2:part:140>);
recipes.remove(<appliedenergistics2:part:140>);
mods.immersiveengineering.AlloySmelter.addRecipe(<appliedenergistics2:part:140>,<ore:dustCertusQuartz>, <ore:dustGlass>, 200);

//molecular assembler
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [[<ore:plateStainlessSteel>, <appliedenergistics2:quartz_glass>, <ore:plateStainlessSteel>], [<appliedenergistics2:material:44>, <ore:workbench>, <appliedenergistics2:material:43>], [<ore:plateStainlessSteel>, <appliedenergistics2:quartz_glass>, <ore:plateStainlessSteel>]]);


//oredict
var GTquartz=<ore:gemCertusQuartz>;
var AEquartz=<ore:crystalCertusQuartz>;
AEquartz.addAll(GTquartz);
