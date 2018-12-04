//Nerf stuff
var assembler= mods.gregtech.recipe.RecipeMap.getByName("assembler");
assembler.recipeBuilder().inputs(<minecraft:book> * 1, <ore:treeSapling> * 1).outputs(<botania:lexicon> * 1).duration(2700).EUt(64).buildAndRegister();
assembler.recipeBuilder().inputs(<minecraft:stone> * 5, <botania:petal:*> *1).fluidInputs([<liquid:glue> * 1000]).outputs(<botania:altar> * 1).duration(1920).EUt(72).buildAndRegister();
mods.botania.RuneAltar.addRecipe(<botania:terrapick>, [<ore:ingotTerrasteel> , <ore:circuitElite> ,<botania:avatar>,<ore:ingotTerrasteel>,<ore:ingotTerrasteel>,<ore:ingotTerrasteel>,<botania:avatar>], 200000);

