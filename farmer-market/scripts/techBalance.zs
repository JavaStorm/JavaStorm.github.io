//Balancing tech mods

var iron = <ore:ingotIron>;
var copper = <ore:ingotCopper>;
var tin = <ore:ingotTin>;
var bronze = <ore:ingotBronze>;
var gold = <ore:ingotGold>;
var steel = <ore:ingotSteel>;
var inug = <minecraft:iron_nugget>; //iron nugget
var iplate = <ore:plateIron>;
var igear = <ore:gearIron>;


///
//Just a Few Fish
//

recipes.remove(<jaff:tank>);
recipes.addShaped(<jaff:tank>*2, [
	[<ore:nuggetIron>, <ore:paneGlass>, <ore:nuggetIron>],
	[<ore:paneGlass>, <minecraft:water_bucket>, <ore:paneGlass>],
	[<ore:nuggetIron>, <ore:paneGlass>, <ore:nuggetIron>],
]);


//Tiny Progressions

recipes.remove(<tp:watering_can>);


//Rustic
recipes.remove(<rustic:crushing_tub>);
recipes.addShaped(<rustic:crushing_tub>, [
	[<ore:plankWood>, null, <ore:plankWood>],
	[<ore:plankWood>, null, <ore:plankWood>],
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);

//Gravel to flint
recipes.addShapeless(<minecraft:flint>, [<minecraft:gravel>]);

//Binnie's Yeast
recipes.addShapeless(<extratrees:misc:4>*16, [<exnihilocreatio:item_material:3>]);
recipes.addShapeless(<extratrees:misc:5>, [<extratrees:misc:4>]);
recipes.addShapeless(<extratrees:misc:4>, [<extratrees:misc:5>]);

//Immersive Engineering Progression
	//Recipes for ingredients for blast brick; blaze powder from drying lava in basin, netherrack from cobble and lava in wooden basin
mods.rustic.EvaporatingBasin.addRecipe(<minecraft:blaze_powder>*1, <liquid:lava>*250);

//Techstack Balance
	//Refil fuel can with other mods' fuels
recipes.addShapeless(<machinemod:fuelcan>, [<machinemod:fuelcan:*>, <liquid:bio.ethanol>*1000]);
recipes.addShapeless(<machinemod:fuelcan>, [<machinemod:fuelcan:*>, <liquid:fuel_dense>*1000]);
recipes.addShapeless(<machinemod:fuelcan>, [<machinemod:fuelcan:*>, <liquid:fuel_light>*1000]);
recipes.addShapeless(<machinemod:fuelcan>, [<machinemod:fuelcan:*>, <liquid:diesel>*1000]);
recipes.addShapeless(<machinemod:fuelcan>, [<machinemod:fuelcan:*>, <liquid:gasoline>*1000]);

	//Disable default fuel generation method
recipes.remove(<machinemod:machinefuelpump>);
recipes.remove(<machinemod:machinedistiller>);
recipes.remove(<machinemod:machinefermenter>);

	//"Cheapen" machine parts (while integrating steel)
<ore:slimeball>.add(<immersivepetroleum:material>); //Allow bitumen to be used as slimeball

recipes.remove(<machinemod:piston>);
recipes.addShaped(<machinemod:piston>, [[steel, inug, steel], [steel, inug, steel], [null, steel, null]]);

recipes.remove(<machinemod:transmission>);
recipes.addShaped(<machinemod:transmission>, [[steel, igear, steel]]);

//Blaze Rod recipe
recipes.addShapeless(<minecraft:blaze_rod>, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>]);
<minecraft:blaze_rod>.addTooltip(format.gold("Can be crafted from blaze powder!"));

//IE Blast Brick
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped("ieBlastBrickSlag", <immersiveengineering:stone_decoration:1>*3, [
	[<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>],
	[<ore:ingotBrick>, <ore:itemSlag>, <ore:ingotBrick>],
	[<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>]
]);

//
//Recipe Removals
//

recipes.remove(<tp:steel_ingot>);
recipes.remove(<machinemod:steeldust>);
recipes.remove(<rustic:apiary>); //Disable Apiary
<rustic:apiary>.addTooltip(format.red("This apiary has been disabled. Try the several other options available, as referenced in the Settler's Guide!"));
recipes.remove(<tp:growth_block>);
recipes.remove(<tp:growth_upgrade>);
recipes.remove(<tp:growth_upgrade_two>);
<tp:growth_block>.addTooltip(format.gold("Can only be found by exploring! Somewhat uncommon."));
<tp:growth_upgrade>.addTooltip(format.gold("Can only be found by exploring! Somewhat rare."));
<tp:growth_upgrade_two>.addTooltip(format.gold("Can only be found by exploring! Very rare!"));