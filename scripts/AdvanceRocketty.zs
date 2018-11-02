import mods.gregtech.recipe.RecipeMap;
//build recipes builder
var implosion_compressor=RecipeMap.getByName(implosion_compressor);

//Dilithium recipes via implosion_compressor
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustLithium>*3)
    .outputs(<libvulpes:productdust>* 1)
	.property("explosives", 2)
    .duration(60)
    .EUt(45)
    .buildAndRegister();