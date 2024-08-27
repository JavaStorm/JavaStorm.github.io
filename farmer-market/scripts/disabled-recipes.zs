import crafttweaker.item.IItemStack;
import crafttweaker.mods.ILoadedMods;
import mods.dropt.Dropt;

//Disables recipes to implement gameplay differences in this modpack

//Disable recipes for all harvestcraft fruit trees
for hcitem in loadedMods["harvestcraft"].items{
	if(<ore:treeSapling> in hcitem){
		recipes.remove(hcitem);
	}
}

//Remove high durability 7x7 hoe recipes. Purchaseable in shop or found by exploring
recipes.remove(<minecraft:diamond_hoe>);
<minecraft:diamond_hoe>.addTooltip(format.gold("Not craftable, this treasure must be found"));

recipes.remove(<tp:emerald_hoe>);
<tp:emerald_hoe>.addTooltip(format.gold("Not craftable, this treasure must be found"));

recipes.remove(<tp:nether_diamond_hoe>);
<tp:nether_diamond_hoe>.addTooltip(format.gold("Not craftable, this treasure must be found"));

//Grass Drops
Dropt.list("mylist").add(Dropt.rule().matchBlocks(["minecraft:tallgrass:*"]).addDrop(Dropt.drop()));
Dropt.list("mylist").add(Dropt.rule().matchBlocks(["minecraft:double_plant:2"]).addDrop(Dropt.drop()));