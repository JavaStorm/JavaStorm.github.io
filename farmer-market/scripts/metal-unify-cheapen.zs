//Changes recipes of many metal-based items to use nuggets instead of ingots

import mods.primaltech.StoneAnvil;

//TODO: Update IE metal press to reflect cheaper 

//Update ore dictionary

//Variables
var iron = <ore:ingotIron>;
var copper = <ore:ingotCopper>;
var tin = <ore:ingotTin>;
var bronze = <ore:ingotBronze>;
var gold = <ore:ingotGold>;
var inug = <minecraft:iron_nugget>; //iron nugget
var iplate = <ore:plateIron>;
var igear = <ore:gearIron>;
var stick = <ore:stickWood>;
var wood = <ore:plankWood>;
var slabWood = <ore:slabWood>;
var cobble = <ore:cobblestone>;
var gnug = <ore:nuggetGold>;

//
//Recipe changes
//

//Disable crafting plates in crafting table
for item in <ore:plateIron>.items{
	recipes.remove(item);
}
for item in <ore:plateCopper>.items{
	recipes.remove(item);
}
for item in <ore:plateTin>.items{
	recipes.remove(item);
}
for item in <ore:plateSilver>.items{
	recipes.remove(item);
}
for item in <ore:plateLead>.items{
	recipes.remove(item);
}
for item in <ore:plateGold>.items{
	recipes.remove(item);
}
for item in <ore:plateNickel>.items{
	recipes.remove(item);
}
for item in <ore:plateAluminum>.items{
	recipes.remove(item);
}
for item in <ore:plateBronze>.items{
	recipes.remove(item);
}
for item in <ore:plateElectrum>.items{
	recipes.remove(item);
}
for item in <ore:plateUranium>.items{
	recipes.remove(item);
}
for item in <ore:plateConstantan>.items{
	recipes.remove(item);
}
for item in <ore:plateSteel>.items{
	recipes.remove(item);
}

//Plates
StoneAnvil.addRecipe(<immersiveengineering:metal:39> , iron);
StoneAnvil.addRecipe(<immersiveengineering:metal:40> , gold);
StoneAnvil.addRecipe(<immersiveengineering:metal:30> , copper);
StoneAnvil.addRecipe(<immersiveengineering:metal:33> , <ore:ingotSilver>);
StoneAnvil.addRecipe(<immersiveengineering:metal:32> , <ore:ingotLead>);
StoneAnvil.addRecipe(<immersiveengineering:metal:34> , <ore:ingotNickel>);
StoneAnvil.addRecipe(<immersiveengineering:metal:31> , <ore:ingotAluminum>);
StoneAnvil.addRecipe(<immersiveengineering:metal:36> , <ore:ingotConstantan>);
StoneAnvil.addRecipe(<immersiveengineering:metal:37> , <ore:ingotElectrum>);
StoneAnvil.addRecipe(<immersiveengineering:metal:35> , <ore:ingotUranium>);
StoneAnvil.addRecipe(<immersiveengineering:metal:38> , <ore:ingotSteel>);

//Gears
recipes.remove(<buildcraftcore:gear_iron>);
recipes.remove(<buildcraftcore:gear_gold>);
recipes.remove(<forestry:gear_bronze>);
//mods.immersiveengineering.MetalPress.removeRecipe(<forestry:gear_bronze>);
recipes.remove(<forestry:gear_copper>);
//mods.immersiveengineering.MetalPress.removeRecipe(<forestry:gear_copper>);
recipes.remove(<forestry:gear_tin>);
//mods.immersiveengineering.MetalPress.removeRecipe(<forestry:gear_tin>);
recipes.remove(<machinemod:irongear>);
//mods.immersiveengineering.MetalPress.removeRecipe(<machinemod:irongear>);
recipes.remove(<machinemod:stonegear>);
recipes.remove(<machinemod:woodengear>);
recipes.remove(<exnihilocreatio:item_material:7>);

recipes.addShaped(<buildcraftcore:gear_iron>, [[null, iron, null], [iron, null, iron], [null, iron, null]]);
//mods.immersiveengineering.MetalPress.addRecipe(<buildcraftcore:gear_iron>, <ore:ingotIron>*4, <immersiveengineering:mold:1>, 500);

recipes.addShaped(<buildcraftcore:gear_gold>, [[null, gold, null], [gold, null, gold], [null, gold, null]]);
//mods.immersiveengineering.MetalPress.addRecipe(<buildcraftcore:gear_gold>, <ore:ingotGold>, <immersiveengineering:mold:1>, 500);

recipes.addShaped(<forestry:gear_bronze>, [[null, bronze, null], [bronze, null, bronze], [null, bronze, null]]);
//mods.immersiveengineering.MetalPress.addRecipe(<forestry:gear_bronze>, <ore:ingotBronze>*4, <immersiveengineering:mold:1>, 500);

recipes.addShaped(<forestry:gear_copper>, [[null, copper, null], [copper, null, copper], [null, copper, null]]);
//mods.immersiveengineering.MetalPress.addRecipe(<forestry:gear_copper>, <ore:ingotCopper>*4, <immersiveengineering:mold:1>, 500);

recipes.addShaped(<forestry:gear_tin>, [[null, tin, null], [tin, null, tin], [null, tin, null]]);
//mods.immersiveengineering.MetalPress.addRecipe(<forestry:gear_tin>, <ore:ingotTin>*4, <immersiveengineering:mold:1>, 500);



//Vanilla Items
recipes.remove(<minecraft:tripwire_hook>);
recipes.addShaped(<minecraft:tripwire_hook>, [[inug], [stick], [wood]]);

recipes.remove(<minecraft:shears>);
recipes.addShaped(<minecraft:shears>, [[null, inug],[inug, null]]);

recipes.remove(<minecraft:rail>);
recipes.addShaped(<minecraft:rail>*16, [[inug, stick, inug],[inug, stick, inug],[inug, stick, inug]]);

recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [[wood, wood, wood],[cobble, <ore:dustRedstone>, cobble],[cobble, inug, cobble]]);

recipes.remove(<minecraft:minecart>);
recipes.addShaped(<minecraft:minecart>, [[iplate, null, iplate],[igear, iplate, igear]]);

recipes.remove(<minecraft:iron_trapdoor>);
recipes.addShaped(<minecraft:iron_trapdoor>, [[inug, inug], [inug, inug]]);

recipes.remove(<minecraft:iron_shovel>);
recipes.addShaped(<minecraft:iron_shovel>, [[iplate],[stick],[stick]]);

recipes.remove(<minecraft:iron_sword>);
recipes.addShaped(<minecraft:iron_sword>, [[iplate],[iplate],[stick]]);

recipes.remove(<minecraft:iron_pickaxe>);
recipes.addShaped(<minecraft:iron_pickaxe>, [[iplate, inug, iplate],[null, stick, null],[null, stick, null]]);

recipes.remove(<minecraft:iron_axe>);
recipes.addShaped(<minecraft:iron_axe>, [[iplate, inug],[iplate, stick],[null, stick]]);

recipes.remove(<minecraft:iron_bars>);
recipes.addShaped(<minecraft:iron_bars>*2, [[inug, inug, inug],[inug, inug, inug]]);

recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [[inug, null, inug], [inug, <ore:chestWood>, inug], [null, inug, null]]);

recipes.remove(<minecraft:heavy_weighted_pressure_plate>);
recipes.addShaped(<minecraft:heavy_weighted_pressure_plate>, [[inug, inug]]);

recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[inug, null, inug],[null, inug, null]]);

//recipes.remove(<minecraft:cauldron>);
//recipes.addShaped(<minecraft:cauldron>, [[iplate, null, iplate],[iplate, null, iplate],[iplate, <ore:ingotIron>, iplate]]);

recipes.remove(<minecraft:compass>);
recipes.addShaped(<minecraft:compass>, [[null, inug, null],[inug, <ore:dustRedstone>, inug],[null, inug, null]]);

recipes.remove(<minecraft:detector_rail>);
recipes.addShaped(<minecraft:detector_rail>, [[inug, null, inug],[inug, <minecraft:stone_pressure_plate>, inug],[inug, <ore:dustRedstone>, inug]]);

recipes.remove(<minecraft:activator_rail>);
recipes.addShaped(<minecraft:activator_rail>, [[inug, stick, inug],[inug, <minecraft:redstone_torch>, inug],[inug, stick, inug]]);

recipes.remove(<minecraft:golden_rail>);
recipes.addShaped(<minecraft:golden_rail>*8, [[gnug, null, gnug], [gnug, stick, gnug], [gnug, <ore:dustRedstone>, gnug]]);

//Modded Items
recipes.remove(<betterbuilderswands:wandiron>);
recipes.addShaped(<betterbuilderswands:wandiron>, [[null, null, inug],[null, stick, null],[stick, null, null]]);

recipes.remove(<exnihilocreatio:item_mesh:3>);
recipes.addShaped(<exnihilocreatio:item_mesh:3>, [[inug, null, inug], [inug, <exnihilocreatio:item_mesh:2>, inug], [inug, null, inug]]);

recipes.remove(<rustic:barrel>);
recipes.addShaped(<rustic:barrel>, [[wood, slabWood, wood], [wood, null, wood], [wood, slabWood, wood]]);

recipes.remove(<rustic:liquid_barrel>);
recipes.addShaped(<rustic:liquid_barrel>, [[wood, null, wood], [wood, null, wood], [wood, slabWood, wood]]);