//For general changes to food recipes and their behavior

//Honey recipes: all can convert to an amount of sugar proportional their difficulty in acquiring
recipes.remove(<harvestcraft:honeyitem>);
recipes.addShapeless(<harvestcraft:honeyitem>*9, [<harvestcraft:honey>]);
recipes.addShapeless(<minecraft:sugar>*7, [<forestry:honey_drop>]);
recipes.addShapeless(<minecraft:sugar>*5, [<harvestcraft:honeyitem>]);
recipes.addShapeless(<minecraft:sugar>*5, [<forge:bucketfilled>.withTag({FluidName: "honey", Amount: 1000})]);
recipes.addShapeless(<minecraft:sugar>*10, [<forge:bucketfilled>.withTag({FluidName: "agavejuice", Amount: 1000})]);

//Binnie's Grains use actual seeds
recipes.remove(<extratrees:misc:7>);
recipes.remove(<extratrees:misc:8>);
recipes.remove(<extratrees:misc:9>);
recipes.addShaped(<extratrees:misc:7>*5, [[null, <ore:seedBarley>, null], [<ore:seedBarley>, <ore:seedBarley>, <ore:seedBarley>], [null, <ore:seedBarley>, null]]);
recipes.addShaped(<extratrees:misc:8>*5, [[null, <ore:seedRye>, null], [<ore:seedRye>, <ore:seedRye>, <ore:seedRye>], [null, <ore:seedRye>, null]]);
recipes.addShaped(<extratrees:misc:9>*5, [[null, <ore:seedCorn>, null], [<ore:seedCorn>, <ore:seedCorn>, <ore:seedCorn>], [null, <ore:seedCorn>, null]]);

//HC's sour cream and onion chips use actual onion
recipes.addShapeless(<harvestcraft:sourcreamandonionpotatochipsitem>, [<harvestcraft:mixingbowlitem>, <harvestcraft:potatochipsitem>, <ore:listAllheavycream>, <ore:cropOnion>]);

//Golden Raspberry to raspberry oredict
<ore:cropRaspberry>.add(<extratrees:food:49>);

//Tooltips for plants with different planing methods
<terraqueous:pergola:1>.addTooltip(format.green("Must be placed on Terraqueous Pergolas. Place pergolas in a single, straight line in mid-air."));
<rustic:grape_stem>.addTooltip(format.green("Must have rope above this plant to grow grapes. Needs 3 adjacent rope with center on this plant to get the most grape vines."));
<rustic:tomato_seeds>.addTooltip(format.green("Must be placed on a Rustic Wooden Stake to grow. To make higher, stack Stakes on top of original, and don't pick the fruit until it has grown a vine above."));
<rustic:chili_pepper_seeds>.addTooltip(format.green("Must be placed on a Rustic Wooden Stake to grow. To make higher, stack Stakes on top of original, and don't pick the fruit until it has grown a vine above. Max height of 2."));
<rustic:crop_stake>.addTooltip(format.green("To hang rope, right-click rope on stakes that form boundary, then place rope in between them. Stakes must be on the same height and form a straight line between them."));
<tp:plump_pear>.addTooltip(format.green("An uncommon drop from oak leaves."));
<tp:plump_peach>.addTooltip(format.green("An uncommon drop from oak leaves."));

//Cinnamon sticks from forestry cinnamon
recipes.addShaped(<harvestcraft:cinnamonitem>*4, [[<extratrees:logs.9:3>, <extratrees:logs.9:3>]]);

//Remove Tiny Progressions' monster jerky
furnace.remove(<tp:monster_jerky>);

//Remove harvestcraft cheese
recipes.remove(<harvestcraft:cheeseitem>);