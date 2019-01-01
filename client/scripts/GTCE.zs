import mods.gregtech.recipe.RecipeMap;
var extractor= mods.gregtech.recipe.RecipeMap.getByName("extractor");
var assembler= mods.gregtech.recipe.RecipeMap.getByName("assembler");
//Prove Banned Recipes
assembler.recipeBuilder().inputs(<gregtech:meta_item_1:12095> * 8).property("circuit", 8).outputs(<gregtech:machine_casing:10>).duration(50).EUt(32).buildAndRegister();
extractor.recipeBuilder().inputs(<minecraft:stone> * 1).outputs(<minecraft:dirt> * 1).duration(40).EUt(32).buildAndRegister();
// Harder Bronze casing casting
mods.tconstruct.Casting.addBasinRecipe(<gregtech:machine_casing:10>,<gregtech:frame_1:13>, <liquid:bronze>, 1152, true, 320);

recipes.addShaped(<forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000}), [[<ore:sand>, <ore:dustBrick>, <ore:sand>], [<ore:dustClay>, <ore:bucketWater>.giveBack(<minecraft:bucket>), <ore:dustCalcite>], [<ore:sand>, <ore:dustBrick>, <ore:sand>]]);
//GT BF Nerf
recipes.addShaped(<gregtech:meta_item_1:2998> * 6, [[<ore:dustBrick>, <ore:dustClay>, <ore:dustBrick>], [<ore:dustClay>, <ore:bucketWater>.giveBack(<minecraft:bucket>), <gregtech:meta_item_1:2105>], [<ore:dustBrick>, <gregtech:meta_item_1:2105>, <ore:dustBrick>]]);
recipes.addShaped(<gregtech:metal_casing:1>, [[<gtadditions:ga_meta_item:32014>, <ore:dustCalcite>, <ore:ingotFireclay>], [<gtadditions:ga_meta_item:32014>, <forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000}).giveBack(<minecraft:bucket>), <ore:ingotFireclay>], [<gtadditions:ga_meta_item:32014>, <ore:dustCalcite>, <ore:ingotFireclay>]]);

//bot GT recipes ban
recipes.remove(<gregtech:machine_casing:10>);
recipes.remove(<gregtech:meta_item_1:2998> * 2);
recipes.remove(<botania:terrapick>);
recipes.remove(<botania:altar>);
recipes.remove(<botania:lexicon>);
recipes.remove(<gregtech:metal_casing:1>);

//bug fixing
recipes.remove(<minecraft:iron_door>);
recipes.addShaped(<minecraft:iron_door>, [[<ore:plateIron>, <ore:plateIron>, null], [<ore:plateIron>, <ore:plateIron>, <gregtech:meta_tool:6>], [<ore:plateIron>, <ore:plateIron>, null]]);
