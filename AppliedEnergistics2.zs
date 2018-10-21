import mods.gregtech.recipe.RecipeMap;
//build GTCE recipes
var autoclave= mods.gregtech.recipe.RecipeMap.getByName("autoclave");
var laser_engraver= mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");

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

//new flux crystal recipes
mods.immersiveengineering.Mixer.addRecipe(<liquid:lava>, <liquid:water>, [<ore:logWood>, <minecraft:dirt>], 2048);
