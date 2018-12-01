#loader gregtech
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialStack;

var Fe = MaterialRegistry.get("iron");
var Ni = MaterialRegistry.get("nickel");
var Mn = MaterialRegistry.get("manganese");
var O = MaterialRegistry.get("oxygen");

// 陨铁 (MnNiFe2O5)
var aero = MaterialRegistry.createDustMaterial(
    511,
    "aerosiderite",
    0x8B5F65,
    "metallic",
    3,
    [Mn * 1, Ni * 1, Fe * 2, O * 5]
);
aero.addFlags(["GENERATE_ORE", "GENERATE_PLATE", "DECOMPOSITION_BY_ELECTROLYZING"]);
game.setLocalization("en_US", "material.aerosiderite", "陨铁");

var Ga = MaterialRegistry.get("gallium");
var Mo = MaterialRegistry.get("molybdenum");
var S = MaterialRegistry.get("sulfur");

// 镓钼硫酸盐 (GaMo(SO4)2)
var gamo_sulfate = MaterialRegistry.createDustMaterial(
    512,
    "gamo_sulfate",
    0xfafa9e,
    "dull",
    3,
    [Ga * 1, Mo * 1, S * 2, O * 8]
);
gamo_sulfate.addFlags(["GENERATE_ORE", "DECOMPOSITION_BY_CENTRIFUGING"]);
game.setLocalization("en_US", "material.gamo_sulfate", "镓钼硫酸盐");
