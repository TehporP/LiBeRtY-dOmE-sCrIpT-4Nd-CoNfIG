//***************
//Engineer blocks
//***************

//LEB
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2, [[<immersiveengineering:material:8>, <ore:craftingToolSoftHammer>, <immersiveengineering:material:8>], [<ore:plateIron>, <ore:scaffoldingSteel>, <ore:plateIron>], [<immersiveengineering:material:8>, <ore:craftingToolHardHammer>, <immersiveengineering:material:8>]]);


//HEB
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5>, [[<ore:plateElectrum>, <ore:craftingToolSoftHammer>, <ore:plateSteel>], [<immersiveengineering:material:9>, <immersiveengineering:metal_decoration0:4>, <immersiveengineering:material:9>], [<ore:plateSteel>, <ore:craftingToolHardHammer>, <ore:plateElectrum>]]);


//REB
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3>, [[null, <ore:plateRedAlloy>, <ore:craftingToolSoftHammer>], [<ore:plateIron>, <immersiveengineering:wooden_decoration:1>, <ore:plateIron>], [<ore:craftingToolHardHammer>, <ore:plateRedAlloy>, null]]);



//*******************
//Mechanical componet
//*******************
//iron MC
recipes.remove(<immersiveengineering:material:8>);
recipes.addShaped(<immersiveengineering:material:8>,[[<ore:plateIron>,<ore:craftingToolSoftHammer>,<ore:plateIron>], [<ore:craftingToolSaw>,<ore:plateCopper>,<ore:craftingToolFile>],[<ore:plateIron>,<ore:craftingToolScrewdriver>,<ore:plateIron>]]);


//steel MC
recipes.remove(<immersiveengineering:material:9>);
mods.tconstruct.Casting.addTableRecipe(<immersiveengineering:material:9>,<immersiveengineering:material:8>, <liquid:steel>,144, true, 200);


//remove blue print recipes
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));


//*****************
//Mechanical blocks
//*****************

//Kinetic Dynamo
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<ore:craftingToolHardHammer>, <ore:gearIron>, <ore:craftingToolFile>], [<immersiveengineering:metal_decoration0>, <ore:stickSteel>, <immersiveengineering:metal_decoration0>], [<immersiveengineering:connector>, <ore:scaffoldingSteel>, <immersiveengineering:connector>]]);

//Generator block
recipes.remove(<immersiveengineering:metal_decoration0:6>);
recipes.addShaped(<immersiveengineering:metal_decoration0:6>, [[<ore:craftingToolFile>, <immersiveengineering:wirecoil:1>, null], [<immersiveengineering:connector:2>, <immersiveengineering:metal_device1:2>, <immersiveengineering:connector:2>], [null, <immersiveengineering:wirecoil:1>, <ore:craftingToolHardHammer>]]);

//Thermoelectric Generator
recipes.remove(<immersiveengineering:metal_device1:3>);
recipes.addShaped(<immersiveengineering:metal_device1:3>, [[<ore:blockCopper>, <immersiveengineering:connector:2>, <ore:blockCopper>], [<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_decoration0:6>, <immersiveengineering:metal_device1:6>], [<ore:blockCopper>, <immersiveengineering:connector:2>, <immersiveengineering:storage>]]);

//Radiator
recipes.remove(<immersiveengineering:metal_decoration0:7>);
recipes.addShaped(<immersiveengineering:metal_decoration0:7>, [[<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>], [<gregtech:fluid_pipe_copper:3>, <ore:scaffoldingSteel>, <gregtech:fluid_pipe_copper:3>], [<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>]]);


//********
//Capatior
//********
//LV
recipes.remove(<immersiveengineering:metal_device0>);
recipes.addShaped(<immersiveengineering:metal_device0>, [[<ore:plateIron>, <immersiveengineering:connector>, <ore:plateIron>], [<immersiveengineering:connector>, <ore:blockLead>, <immersiveengineering:connector>], [<ore:plankTreatedWood>, <ore:plateRedAlloy>, <ore:plankTreatedWood>]]);


//MV
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.addShaped(<immersiveengineering:metal_device0:1>, [[null, <immersiveengineering:connector:2>, null], [<immersiveengineering:metal_device0>, <immersiveengineering:wirecoil:1>, <immersiveengineering:metal_device0>], [<immersiveengineering:wirecoil:1>, <ore:blockRedAlloy>, <immersiveengineering:wirecoil:1>]]);


//HV
recipes.remove(<immersiveengineering:metal_device0:2>);
recipes.addShaped(<immersiveengineering:metal_device0:2>, [[<immersiveengineering:connector:4>, <ore:wireGtSingleAnnealedCopper>, <immersiveengineering:connector:4>], [<immersiveengineering:metal_device0:1>, <ore:wireGtSingleAnnealedCopper>, <immersiveengineering:metal_device0:1>], [<ore:blockRedAlloy>, <ore:wireGtSingleAnnealedCopper>, <ore:blockRedAlloy>]]);


//***********
//Arc furnace
//***********

//remove old steel ingot smelt recipes
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);


//new steel smelt recipes
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:8>,<ore:ingotIron>,null,600,256, [<ore:dustCoke>*2], "Steel Working");

mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:8>,<ore:dustIron>,null,500,200, [<ore:dustCoke>], "Steel Working");


//magnetization
//crusted ore 2 magented iron dust
mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:meta_item_1:2297>,<ore:crushedMagnetite>*2,null,600,1024, [<ore:dustCoke>*2,<ore:dustGraniteBlack>*4], "Magnetization");


//mods.immersiveengineering.ArcFurnace.addRecipe(IItemStack output, IIngredient input, IItemStack slag, int time, int energyPerTick, @Optional IIngredient[] additives, @Optional String specialRecipeType);

//REMOVE recycling recipes
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal_decoration0:4>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal_decoration0:5>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal_decoration0:6>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal_decoration0:7>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal_device1:2>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal_device1:3>);
