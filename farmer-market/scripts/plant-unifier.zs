import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.primaltech.StoneAnvil;
import mods.primaltech.WoodenBasin;

//Unifies and removes redundant versions of plants

//2D array of each fruit
var juiceItemFruits = [
	[<minecraft:apple>],	//Apple
	[<minecraft:melon>],	//Melon
	[<minecraft:carrot>],	//Carrot
	[<harvestcraft:strawberryitem>],	//Strawberry
	[<rustic:grapes>, <harvestcraft:grapeitem>, <harvestcraft:greengrapeitem>],	//Grape
	[<tp:blueberry_berry>, <harvestcraft:blueberryitem>, <extratrees:food:45>, <natura:edibles:3>],	//Blueberry
	[<forestry:fruits>, <extratrees:food:4>, <extratrees:food:5>, <extratrees:food:6>, <harvestcraft:cherryitem>],	//Cherry
	[<forestry:fruits:6>, <harvestcraft:papayaitem>],	//Papaya
	[<extratrees:food:58>, <harvestcraft:starfruititem>],	//Starfruit
	[<extratrees:food:1>, <harvestcraft:orangeitem>, <extratrees:food:13>, <extratrees:food:21>, <extratrees:food:18>], //Orange
	[<harvestcraft:peachitem>, <tp:plump_peach>, <extratrees:food:12>, <extratrees:food:19>],	//Peach
	[<extratrees:food:17>, <extratrees:food:16>, <extratrees:food:3>, <harvestcraft:limeitem>],	//Lime
	[<extratrees:food:57>, <harvestcraft:mangoitem>],	//Mango
	[<harvestcraft:pomegranateitem>],	//Pomegranate
	[<extratrees:food:43>, <harvestcraft:blackberryitem>, <tp:blackberry_berry>, <natura:edibles:4>],	//Blackberry
	[<harvestcraft:raspberryitem>, <tp:raspberry_berry>, <extratrees:food:44>, <natura:edibles:2>],	//Raspberry
	[<harvestcraft:kiwiitem>],	//Kiwi
	[<harvestcraft:cranberryitem>, <extratrees:food:46>],	//Cranberry
	[<harvestcraft:cactusfruititem>],	//Cactus Fruit
	[<forestry:fruits:4>, <extratrees:food:8>, <harvestcraft:plumitem>],	//Plum
	[<extratrees:food:22>, <tp:plump_pear>, <harvestcraft:pearitem>],	//Pear
	[<extratrees:food:10>, <harvestcraft:apricotitem>],	//Apricot
	[<extratrees:food:32>, <harvestcraft:figitem>],	//Fig
	[<extratrees:food:11>, <harvestcraft:grapefruititem>],	//Grapefruit
	[<harvestcraft:persimmonitem>]	//Persimmon
] as IItemStack [][];

var juiceFluidFruits = [
	[<minecraft:apple>],	//Apple
	[<extratrees:food:10>, <harvestcraft:apricotitem>],	//Apricot
	[<extratrees:food:28>, <extratrees:food:29>, <harvestcraft:bananaitem>],	//Banana
	[<forestry:fruits>, <extratrees:food:4>, <extratrees:food:5>, <extratrees:food:6>, <harvestcraft:cherryitem>],	//Cherry
	[<extratrees:food:34>],	//Elderberry
	[<forestry:fruits:3>, <harvestcraft:lemonitem>],	//Lemon
	[<extratrees:food:17>, <extratrees:food:16>, <extratrees:food:3>, <harvestcraft:limeitem>],	//Lime
	[<extratrees:food:1>, <harvestcraft:orangeitem>, <extratrees:food:13>, <extratrees:food:21>, <extratrees:food:18>], //Orange
	[<harvestcraft:peachitem>, <tp:plump_peach>, <extratrees:food:12>, <extratrees:food:19>],	//Peach
	[<forestry:fruits:4>, <extratrees:food:8>, <harvestcraft:plumitem>],	//Plum
	[<minecraft:carrot>],	//Carrot
	[<harvestcraft:tomatoitem>, <rustic:tomato>],	//Tomato
	[<harvestcraft:cranberryitem>, <extratrees:food:46>],	//Cranberry
	[<extratrees:food:11>, <harvestcraft:grapefruititem>],	//Grapefruit
	[<harvestcraft:pineappleitem>],	//Pineapple
	[<extratrees:food:22>, <tp:plump_pear>, <harvestcraft:pearitem>],	//Pear
	[<rustic:grapes>, <harvestcraft:grapeitem>, <terraqueous:multifood:11>],	//Grape (red grapes)
	[<harvestcraft:greengrapeitem>],	//Grape (white grapes)
	[<harvestcraft:agaveitem>]	//Agave
] as IItemStack [][];

var juiceItems = [
	<harvestcraft:applejuiceitem>, 
	<harvestcraft:melonjuiceitem>, 
	<harvestcraft:carrotjuiceitem>, 
	<harvestcraft:strawberryjuiceitem>, 
	<harvestcraft:grapejuiceitem>,
	<harvestcraft:blueberryjuiceitem>,
	<harvestcraft:cherryjuiceitem>,
	<harvestcraft:papayajuiceitem>,
	<harvestcraft:starfruitjuiceitem>,
	<harvestcraft:orangejuiceitem>,
	<harvestcraft:peachjuiceitem>,
	<harvestcraft:limejuiceitem>,
	<harvestcraft:mangojuiceitem>,
	<harvestcraft:pomegranatejuiceitem>,
	<harvestcraft:blackberryjuiceitem>,
	<harvestcraft:raspberryjuiceitem>,
	<harvestcraft:kiwijuiceitem>,
	<harvestcraft:cranberryjuiceitem>,
	<harvestcraft:cactusfruitjuiceitem>,
	<harvestcraft:plumjuiceitem>,
	<harvestcraft:pearjuiceitem>,
	<harvestcraft:apricotjuiceitem>,
	<harvestcraft:figjuiceitem>,
	<harvestcraft:grapefruitjuiceitem>,
	<harvestcraft:persimmonjuiceitem>
] as IItemStack[] ;

var jelly = [
	<harvestcraft:applejellyitem>,
	<harvestcraft:watermelonjellyitem>,
	null,
	<harvestcraft:strawberryjellyitem>,
	<harvestcraft:grapejellyitem>,
	<harvestcraft:blueberryjellyitem>,
	<harvestcraft:cherryjellyitem>,
	<harvestcraft:papayajellyitem>,
	<harvestcraft:starfruitjellyitem>,
	<harvestcraft:orangejellyitem>,
	<harvestcraft:peachjellyitem>,
	<harvestcraft:limejellyitem>,
	<harvestcraft:mangojellyitem>,
	<harvestcraft:pomegranatejellyitem>,
	<harvestcraft:blackberryjellyitem>,
	<harvestcraft:raspberryjellyitem>,
	<harvestcraft:kiwijellyitem>,
	<harvestcraft:cranberryjellyitem>,
	null,
	<harvestcraft:plumjellyitem>,
	<harvestcraft:pearjellyitem>,
	<harvestcraft:apricotjellyitem>,
	<harvestcraft:figjellyitem>,
	<harvestcraft:grapefruitjellyitem>,
	<harvestcraft:persimmonjellyitem>
] as IItemStack[] ;

var juiceFluids = [
	<fluid:binnie.juice.apple>,
	<fluid:binnie.juice.apricot>,
	<fluid:binnie.juice.banana>,
	<fluid:binnie.juice.cherry>,
	<fluid:binnie.juice.elderberry>,
	<fluid:binnie.juice.lemon>,
	<fluid:binnie.juice.lime>,
	<fluid:binnie.juice.orange>,
	<fluid:binnie.juice.peach>,
	<fluid:binnie.juice.plum>,
	<fluid:binnie.juice.carrot>,
	<fluid:binnie.juice.tomato>,
	<fluid:binnie.juice.cranberry>,
	<fluid:binnie.juice.grapefruit>,
	<fluid:binnie.juice.pineapple>,
	<fluid:binnie.juice.pear>,
	<fluid:binnie.juice.red.grape>,
	<fluid:binnie.juice.white.grape>,
	<fluid:agavejuice>
] as ILiquidStack[];

for i, juice in juiceItems{
	recipes.remove(juice);
}
mods.rustic.CrushingTub.removeRecipe(<fluid:applejuice>, <minecraft:apple>);
mods.rustic.CrushingTub.removeRecipe(<fluid:grapejuice>, <rustic:grapes>);

//Crushing Fruits into Juice Items
for i, fruitList in juiceItemFruits{
	for fruit in fruitList{
		StoneAnvil.addRecipe(juiceItems[i], fruit);
	}
}

//Crushing Fruits into Juice Fluids
for i, fruitList in juiceFluidFruits{
	for fruit in fruitList{
		mods.rustic.CrushingTub.addRecipe(juiceFluids[i]*100, null, fruit);
	}
}

//Jelly item from Juice item and Sugar
for i, jam in jelly{
	if(isNull(jam)){
		continue;
	}
	recipes.remove(jam);
	//WoodenBasin.addRecipe(jam, <fluid:water>, [juiceItems[i], <ore:listAllsugar>]);
	//recipes.addShapeless(jam, [juiceItems[i], <ore:listAllsugar>]);
}

//Add natura berries to berry oredict
var naturaBerries = [<natura:edibles:2>, <natura:edibles:3>, <natura:edibles:4>, <natura:edibles:5>, <natura:edibles:6>, <natura:edibles:7>, <natura:edibles:8>, <natura:edibles:9>] as IItemStack[];
for item in naturaBerries{
	<ore:listAllFruit>.add(item);
	<ore:listAllBerry>.add(item);
}
<ore:cropRaspberry>.add(<natura:edibles:2>);
<ore:cropBlueberry>.add(<natura:edibles:3>);
<ore:cropBlackberry>.add(<natura:edibles:4>);

//Can turn other mods' honey item into rustic liquid honey in crushing tub
mods.rustic.CrushingTub.addRecipe(<liquid:honey>*250, null, <harvestcraft:honeyitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:for.honey>*100, null, <forestry:honey_drop>);

//Add all logs to new oredict for shop
<ore:logNormal>.add(<minecraft:log:*>);

<ore:logNormal>.add(<totemic:cedar_log>);

<ore:logBred>.add(<forestry:logs.0:*>);
<ore:logBred>.add(<forestry:logs.1:*>);
<ore:logBred>.add(<forestry:logs.2:*>);
<ore:logBred>.add(<forestry:logs.3:*>);
<ore:logBred>.add(<forestry:logs.4:*>);
<ore:logBred>.add(<forestry:logs.5:*>);
<ore:logBred>.add(<forestry:logs.6:*>);
<ore:logBred>.add(<forestry:logs.7:*>);
<ore:logBred>.add(<extratrees:logs.0:*>);
<ore:logBred>.add(<extratrees:logs.1:*>);
<ore:logBred>.add(<extratrees:logs.2:*>);
<ore:logBred>.add(<extratrees:logs.3:*>);
<ore:logBred>.add(<extratrees:logs.4:*>);
<ore:logBred>.add(<extratrees:logs.5:*>);
<ore:logBred>.add(<extratrees:logs.6:*>);
<ore:logBred>.add(<extratrees:logs.7:*>);
<ore:logBred>.add(<extratrees:logs.8:*>);
<ore:logBred>.add(<extratrees:logs.9:*>);


print("hi");