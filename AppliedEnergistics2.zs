import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;
//build GTCE recipes
var laser_engraver= mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
var forming_press= mods.gregtech.recipe.RecipeMap.getByName("forming_press");
var assembler= mods.gregtech.recipe.RecipeMap.getByName("assembler");
var electrolyzer= mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
var mixer= mods.gregtech.recipe.RecipeMap.getByName("mixer");
var autoclave= mods.gregtech.recipe.RecipeMap.getByName("autoclave");

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
    .outputs(<appliedenergistics2:material:12>>*1) 
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
    .duration(240)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200})*1)
    .outputs(<appliedenergistics2:material:12>>*1) 
    .fluidInputs([<liquid:distilled_water> * 250])   
    .duration(240)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:600>.withTag({progress: 600})*1)
    .outputs(<appliedenergistics2:material:11>*1) 
    .fluidInputs([<liquid:distilled_water> * 250])  
    .duration(240)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed>.withTag({progress: 0})*1)
    .outputs(<appliedenergistics2:material:10>*1) 
    .fluidInputs([<liquid:dist_water>*250])     
    .duration(240)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200})*1)
    .outputs(<appliedenergistics2:material:12>>*1) 
    .fluidInputs([<liquid:dist_water>*250])    
    .duration(240)
    .EUt(128)
    .buildAndRegister();

    autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed:600>.withTag({progress: 600})*1)
    .outputs(<appliedenergistics2:material:11>*1) 
    .fluidInputs([<liquid:dist_water>*250]) 
    .duration(240)
    .EUt(128)
    .buildAndRegister();


//fluix crystal
mixer.recipeBuilder()
    .inputs(<ore:gemNetherQuartz>*1)
    .inputs(<ore:dustRedstone>*1)
    .inputs(<appliedenergistics2:material:1>*1)
    .fluidInputs([<liquid:water> * 144])
    .outputs(<appliedenergistics2:material:7>*1)  
    .duration(30)
    .EUt(32)
    .buildAndRegister();

//processor and board
Inscriber.removeRecipe(<appliedenergistics2:material:16>); 
Inscriber.removeRecipe(<appliedenergistics2:material:17>); 
Inscriber.removeRecipe(<appliedenergistics2:material:18>); 


//board
    forming_press.recipeBuilder()
    .inputs(<ore:plateElectrum> * 1)
    .notConsumable(<appliedenergistics2:material:15>*1) 
    .outputs(<appliedenergistics2:material:18>*1)
    .duration(400)
    .EUt(512)
    .buildAndRegister();

    forming_press.recipeBuilder()
    .inputs(<ore:plateDiamond> * 1)
    .notConsumable(<appliedenergistics2:material:14>*1) 
    .outputs(<appliedenergistics2:material:17>*1)
    .duration(400)
    .EUt(512)
    .buildAndRegister();

    forming_press.recipeBuilder()
    .inputs(<ore:crystalPureCertusQuartz> * 1)
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
recipes.addShaped(<appliedenergistics2:drive>, [[<gregtech:meta_item_1:12183>, <appliedenergistics2:material:24>, <gregtech:meta_item_1:12183>], [<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:24>, <ore:plateStainlessSteel>]]);
