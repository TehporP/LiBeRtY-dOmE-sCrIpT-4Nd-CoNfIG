import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;
//build GTCE recipes
var laser_engraver= mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
var forming_press= mods.gregtech.recipe.RecipeMap.getByName("forming_press");

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

//charger
recipes.remove(<appliedenergistics2:charger>);
recipes.addShaped(<appliedenergistics2:charger>, [[<ore:plateIron>, <ore:crystalFluix>, null], [<ore:stickIron>, <immersiveengineering:metal_decoration0>, null], [<ore:plateIron>, <appliedenergistics2:material:7>, <immersiveengineering:connector>]]);

//crystal growth speeder
recipes.remove(<appliedenergistics2:quartz_growth_accelerator>);
recipes.addShaped( <appliedenergistics2:quartz_growth_accelerator>, [[<ore:plateIron>, <appliedenergistics2:part:16>, <ore:plateIron>], [<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:fluix_block>,<appliedenergistics2:quartz_vibrant_glass>], [<ore:plateIron>, <appliedenergistics2:quartz_vibrant_glass>, <ore:plateIron>]]);

//processor and board
Inscriber.removeRecipe(<appliedenergistics2:material:16>); 
Inscriber.removeRecipe(<appliedenergistics2:material:17>); 
Inscriber.removeRecipe(<appliedenergistics2:material:18>); 



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
