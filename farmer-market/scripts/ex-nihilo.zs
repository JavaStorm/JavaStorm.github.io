//Changes to ex nihilo recipes to better fit the modpack

val wood = <ore:plankWood>;
val slabWood = <ore:slabWood>;
val stone = <ore:stone>;
val slabStone = <minecraft:stone_slab>;
val spore = <exnihilocreatio:item_material:3>;
val iron = <ore:ingotIron>;

//Disable crooks
recipes.remove(<exnihilocreatio:crook_wood>);
recipes.remove(<exnihilocreatio:crook_bone>);
mods.jei.JEI.hide(<exnihilocreatio:crook_wood>);
mods.jei.JEI.hide(<exnihilocreatio:crook_bone>);

recipes.remove(<exnihilocreatio:block_end_cake>);
mods.jei.JEI.hide(<exnihilocreatio:block_end_cake>);

recipes.remove(<exnihilocreatio:block_barrel0>);
recipes.addShaped(<exnihilocreatio:block_barrel0>, [[wood, null, wood], [iron, null, iron], [slabWood, slabWood, slabWood]]);

recipes.remove(<exnihilocreatio:block_barrel1>);
recipes.addShaped(<exnihilocreatio:block_barrel1>, [[stone, null, stone], [iron, null, iron], [slabStone, slabStone, slabStone]]);

